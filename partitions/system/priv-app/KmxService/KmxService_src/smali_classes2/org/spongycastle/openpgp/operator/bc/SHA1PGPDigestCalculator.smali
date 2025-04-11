.class Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator$DigestOutputStream;-><init>(Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;Lorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/bc/SHA1PGPDigestCalculator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->reset()V

    return-void
.end method
