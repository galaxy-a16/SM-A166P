.class public Lorg/spongycastle/bcpg/CompressedDataPacket;
.super Lorg/spongycastle/bcpg/InputStreamPacket;
.source "SourceFile"


# instance fields
.field algorithm:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/InputStreamPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/bcpg/CompressedDataPacket;->algorithm:I

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/CompressedDataPacket;->algorithm:I

    return p0
.end method
