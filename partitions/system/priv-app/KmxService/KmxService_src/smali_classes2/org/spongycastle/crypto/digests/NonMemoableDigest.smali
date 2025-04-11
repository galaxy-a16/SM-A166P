.class public Lorg/spongycastle/crypto/digests/NonMemoableDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/ExtendedDigest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseDigest must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteLength()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p0

    return p0
.end method

.method public getDigestSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
