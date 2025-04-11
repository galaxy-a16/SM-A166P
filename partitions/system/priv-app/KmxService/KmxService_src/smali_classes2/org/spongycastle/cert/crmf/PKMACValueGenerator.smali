.class Lorg/spongycastle/cert/crmf/PKMACValueGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/crmf/PKMACBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    return-void
.end method


# virtual methods
.method public generate([CLorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/crmf/PKMACValue;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/cert/crmf/PKMACValueGenerator;->builder:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {p0, p1}, Lorg/spongycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/spongycastle/operator/MacCalculator;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p2, v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/spongycastle/asn1/crmf/PKMACValue;

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-interface {p0}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p1, p2, v0}, Lorg/spongycastle/asn1/crmf/PKMACValue;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/crmf/CRMFException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception encoding mac input: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
