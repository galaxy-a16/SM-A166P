.class public Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;
.super Lorg/spongycastle/operator/SymmetricKeyWrapper;
.source "SourceFile"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private wrapper:Lorg/spongycastle/crypto/Wrapper;

.field private wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/Wrapper;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/operator/SymmetricKeyWrapper;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    iput-object p3, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;

    return-void
.end method


# virtual methods
.method public generateWrappedKey(Lorg/spongycastle/operator/GenericKey;)[B
    .locals 5

    invoke-static {p1}, Lorg/spongycastle/operator/bc/OperatorUtils;->getKeyBytes(Lorg/spongycastle/operator/GenericKey;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    iget-object v2, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v4, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_0
    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
