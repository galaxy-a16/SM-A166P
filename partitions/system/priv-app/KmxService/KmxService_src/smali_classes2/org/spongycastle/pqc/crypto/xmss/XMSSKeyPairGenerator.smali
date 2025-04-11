.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private prng:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generatePrivateKey(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .locals 3

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result p0

    new-array v0, p0, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v1, p0, [B

    invoke-virtual {p2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array p0, p0, [B

    invoke-virtual {p2, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    invoke-direct {p2, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {p2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p2

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {v1, p1, p0, v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {p2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->prng:Ljava/security/SecureRandom;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->generatePrivateKey(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getRoot()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    iget-object p0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    move-result-object p0

    new-instance v1, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    check-cast p1, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->prng:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSKeyPairGenerator;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-void
.end method
