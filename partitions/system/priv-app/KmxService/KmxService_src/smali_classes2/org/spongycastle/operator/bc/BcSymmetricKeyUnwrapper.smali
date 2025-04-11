.class public Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;
.super Lorg/spongycastle/operator/SymmetricKeyUnwrapper;
.source "SourceFile"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private wrapper:Lorg/spongycastle/crypto/Wrapper;

.field private wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/crypto/Wrapper;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/operator/SymmetricKeyUnwrapper;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    iput-object p3, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/operator/GenericKey;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    iget-object v1, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->wrappingKey:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :try_start_0
    new-instance v0, Lorg/spongycastle/operator/GenericKey;

    iget-object p0, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->wrapper:Lorg/spongycastle/crypto/Wrapper;

    array-length v1, p2

    invoke-interface {p0, p2, v2, v1}, Lorg/spongycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/operator/GenericKey;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/operator/OperatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unable to unwrap key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/operator/bc/BcSymmetricKeyUnwrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
