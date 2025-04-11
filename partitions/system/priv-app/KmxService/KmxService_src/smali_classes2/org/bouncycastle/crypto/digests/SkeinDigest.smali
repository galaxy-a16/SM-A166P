.class public Lorg/bouncycastle/crypto/digests/SkeinDigest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinDigest;->init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SkeinDigest;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;-><init>(Lorg/bouncycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SkeinDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SkeinDigest;-><init>(Lorg/bouncycastle/crypto/digests/SkeinDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skein-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getByteLength()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public getDigestSize()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result p0

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->init(Lorg/bouncycastle/crypto/params/SkeinParameters;)V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->reset()V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/bouncycastle/crypto/digests/SkeinDigest;

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method public update(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SkeinDigest;->engine:Lorg/bouncycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SkeinEngine;->update([BII)V

    return-void
.end method
