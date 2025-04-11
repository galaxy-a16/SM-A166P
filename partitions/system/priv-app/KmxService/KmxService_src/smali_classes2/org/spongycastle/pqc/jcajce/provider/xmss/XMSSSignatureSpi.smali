.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.super Ljava/security/Signature;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/StateAwareSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake256;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withSha512;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake128;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withSha256;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

.field private treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

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
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->getTreeDigestOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz p1, :cond_0

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, v0, p1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

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
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
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
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigestResult(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v0

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->generateSignature([B)[B

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

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUpdate(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigestResult(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->verifySignature([B[B)Z

    move-result p0

    return p0
.end method

.method public getUpdatedPrivateKey()Ljava/security/PrivateKey;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "signature object not in a signing state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
