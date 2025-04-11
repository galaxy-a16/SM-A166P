.class Lorg/spongycastle/pkcs/MacDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private builder:Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pkcs/MacDataGenerator;->builder:Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;

    return-void
.end method


# virtual methods
.method public build([C[B)Lorg/spongycastle/asn1/pkcs/MacData;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pkcs/MacDataGenerator;->builder:Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v0, p1}, Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;->build([C)Lorg/spongycastle/operator/MacCalculator;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    iget-object p0, p0, Lorg/spongycastle/pkcs/MacDataGenerator;->builder:Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {p0}, Lorg/spongycastle/pkcs/PKCS12MacCalculatorBuilder;->getDigestAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    invoke-interface {p1}, Lorg/spongycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p0

    new-instance p1, Lorg/spongycastle/asn1/pkcs/MacData;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {p1, v0, p2, p0}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/pkcs/PKCSException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to process data: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
