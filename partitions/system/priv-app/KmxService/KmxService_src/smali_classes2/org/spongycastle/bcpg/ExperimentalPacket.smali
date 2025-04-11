.class public Lorg/spongycastle/bcpg/ExperimentalPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/bcpg/PublicKeyAlgorithmTags;


# instance fields
.field private contents:[B

.field private tag:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    iput p1, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    invoke-virtual {p2}, Lorg/spongycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget v0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    iget-object p0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getContents()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->contents:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getTag()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/ExperimentalPacket;->tag:I

    return p0
.end method
