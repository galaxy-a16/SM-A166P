.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha512;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha384;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha256;,
        Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi$withSha224;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, p1, v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object p1, v1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1

    invoke-static {p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->generateSignature([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignature([B[B)Z

    move-result p0

    return p0
.end method
