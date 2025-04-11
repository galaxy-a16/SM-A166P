.class Lorg/spongycastle/cert/crmf/PKMACValueVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/crmf/PKMACBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    return-void
.end method


# virtual methods
.method public isValid(Lorg/spongycastle/asn1/crmf/PKMACValue;[CLorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Z
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/PKMACValue;->getAlgId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PBMParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PBMParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/cert/crmf/PKMACBuilder;->setParameters(Lorg/spongycastle/asn1/cmp/PBMParameter;)Lorg/spongycastle/cert/crmf/PKMACBuilder;

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACValueVerifier;->builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {p0, p2}, Lorg/spongycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/spongycastle/operator/MacCalculator;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p3, v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/crmf/PKMACValue;->getValue()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception encoding mac input: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
