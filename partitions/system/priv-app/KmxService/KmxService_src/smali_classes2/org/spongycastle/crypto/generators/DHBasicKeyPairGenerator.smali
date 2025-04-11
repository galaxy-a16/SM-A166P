.class public Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    sget-object v0, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object p0, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    new-instance v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    return-void
.end method
