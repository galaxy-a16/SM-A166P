.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field certainty:I

.field engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    const/16 v0, 0x400

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->strength:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->strength:I

    invoke-interface {v0, v1}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    new-instance v3, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;-><init>()V

    iget v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->strength:I

    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->certainty:I

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->init(IILjava/security/SecureRandom;)V

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ElGamalParametersGenerator;->generateParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    :goto_0
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->initialised:Z

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    new-instance v1, Ljava/security/KeyPair;

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;

    invoke-direct {v2, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;)V

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPrivateKey;-><init>(Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;)V

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4

    .line 2
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-nez v0, :cond_1

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto :goto_1

    :cond_2
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    :goto_1
    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;

    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {p1, p2}, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method
