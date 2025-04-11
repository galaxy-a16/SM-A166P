.class public abstract Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;
.super Lorg/spongycastle/operator/AsymmetricKeyWrapper;
.source "SourceFile"


# instance fields
.field private publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method public abstract createAsymmetricWrapper(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/AsymmetricBlockCipher;
.end method

.method public generateWrappedKey(Lorg/spongycastle/operator/GenericKey;)[B
    .locals 3

    invoke-virtual {p0}, Lorg/spongycastle/operator/AsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;->createAsymmetricWrapper(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    if-eqz p0, :cond_0

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v1, p0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v1, v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/operator/bc/OperatorUtils;->getKeyBytes(Lorg/spongycastle/operator/GenericKey;)[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    array-length p1, p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorException;

    const-string v0, "unable to encrypt contents key"

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
