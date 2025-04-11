.class public abstract Lorg/spongycastle/operator/bc/BcAsymmetricKeyUnwrapper;
.super Lorg/spongycastle/operator/AsymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyUnwrapper;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method public abstract createAsymmetricUnwrapper(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/AsymmetricBlockCipher;
.end method

.method public generateUnwrappedKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/operator/GenericKey;
    .locals 2

    invoke-virtual {p0}, Lorg/spongycastle/operator/AsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/operator/bc/BcAsymmetricKeyUnwrapper;->createAsymmetricUnwrapper(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyUnwrapper;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :try_start_0
    array-length p0, p2

    invoke-interface {v0, p2, v1, p0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/spongycastle/operator/GenericKey;

    invoke-direct {p2, p1, p0}, Lorg/spongycastle/operator/GenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object p2

    :cond_0
    new-instance p2, Lorg/spongycastle/operator/GenericKey;

    invoke-direct {p2, p1, p0}, Lorg/spongycastle/operator/GenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to recover secret key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
