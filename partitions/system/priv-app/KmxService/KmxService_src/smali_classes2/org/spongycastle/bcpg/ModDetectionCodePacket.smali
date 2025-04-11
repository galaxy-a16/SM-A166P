.class public Lorg/spongycastle/bcpg/ModDetectionCodePacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field private digest:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    const/4 p0, 0x0

    array-length v1, v0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    const/4 v0, 0x0

    const/16 v1, 0x13

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getDigest()[B
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/bcpg/ModDetectionCodePacket;->digest:[B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
