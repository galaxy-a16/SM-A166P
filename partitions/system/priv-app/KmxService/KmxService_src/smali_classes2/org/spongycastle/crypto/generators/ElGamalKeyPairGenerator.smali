.class public Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    sget-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iget-object p0, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    new-instance v0, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    return-void
.end method
