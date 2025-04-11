.class public abstract Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

.field protected signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

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

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    aget-object v1, v0, v2

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {p0, v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

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
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    invoke-interface {v1, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;->decode([B)[Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object v1, p1, v2

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-interface {p0, v0, v1, p1}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p0

    return p0

    :catch_0
    new-instance p0, Ljava/security/SignatureException;

    const-string p1, "error decoding signature bytes."

    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
