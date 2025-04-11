.class public Lorg/spongycastle/bcpg/MarkerPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field marker:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/spongycastle/bcpg/MarkerPacket;->marker:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x47t
        0x50t
    .end array-data
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/bcpg/MarkerPacket;->marker:[B

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
