.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 4

    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPrivateKey;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify private key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 4

    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/crypto/interfaces/DHPublicKey;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify public key for El Gamal."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
