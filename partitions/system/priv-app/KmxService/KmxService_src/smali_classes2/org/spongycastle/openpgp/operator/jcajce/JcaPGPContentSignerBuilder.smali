.class public Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private hashAlgorithm:I

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyAlgorithm:I

.field private keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iput p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    iput p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    return-void
.end method

.method public static synthetic access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    return p0
.end method

.method public static synthetic access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;)I
    .locals 0

    iget p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    return p0
.end method


# virtual methods
.method public build(IJLjava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-interface {v0, v1}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v8

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iget v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyAlgorithm:I

    iget v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->hashAlgorithm:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createSignature(II)Ljava/security/Signature;

    move-result-object v7

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    invoke-virtual {v7, p4, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7, p4}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p4, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;

    move-object v2, p4

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;IJLjava/security/Signature;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    return-object p4

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "invalid key."

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public build(ILorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;
    .locals 3

    .line 2
    instance-of v0, p2, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    check-cast p2, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->build(IJLjava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PGPContentSigner;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getKeyID()J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v2, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    goto :goto_0
.end method

.method public setDigestProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method

.method public setDigestProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 2

    .line 2
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
