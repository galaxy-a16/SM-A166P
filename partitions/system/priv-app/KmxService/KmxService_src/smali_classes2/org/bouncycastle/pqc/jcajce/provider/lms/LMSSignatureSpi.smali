.class public Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;
.super Ljava/security/Signature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi$generic;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

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
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPrivateKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown private key passed to XMSS"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/BCLMSPublicKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSigner;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSSigner;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "unknown public key passed to XMSS"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
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
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;->getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {p0, v0}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;->getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result p0

    return p0
.end method
