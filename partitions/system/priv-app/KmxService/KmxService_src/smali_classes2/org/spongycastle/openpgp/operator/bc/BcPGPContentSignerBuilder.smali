.class public Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;


# instance fields
.field private digestCalculatorProvider:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

.field private hashAlgorithm:I

.field private keyAlgorithm:I

.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->digestCalculatorProvider:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iput p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyAlgorithm:I

    iput p2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->hashAlgorithm:I

    return-void
.end method

.method public static synthetic access$000(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->hashAlgorithm:I

    return p0
.end method

.method public static synthetic access$100(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(ILorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
    .locals 8

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->digestCalculatorProvider:Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    iget v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    iget v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyAlgorithm:I

    iget v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-static {v0, v1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createSigner(II)Lorg/spongycastle/crypto/Signer;

    move-result-object v6

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v2, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v1, v0}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;ILorg/spongycastle/openpgp/PGPPrivateKey;Lorg/spongycastle/crypto/Signer;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
