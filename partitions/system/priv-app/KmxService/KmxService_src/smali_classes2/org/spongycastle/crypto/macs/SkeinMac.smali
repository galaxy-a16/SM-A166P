.class public Lorg/spongycastle/crypto/macs/SkeinMac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/spongycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/macs/SkeinMac;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object p1, p1, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skein-MAC-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result p0

    return p0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/crypto/params/SkeinParameters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/crypto/params/SkeinParameters;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    invoke-direct {v0}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>()V

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SkeinParameters;->getKey()[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->init(Lorg/spongycastle/crypto/params/SkeinParameters;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein MAC requires a key parameter."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter passed to Skein MAC init - "

    invoke-static {p1, v0}, Lorg/bouncycastle/cert/a;->n(Lorg/spongycastle/crypto/CipherParameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update([BII)V

    return-void
.end method
