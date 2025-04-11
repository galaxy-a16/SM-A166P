.class public Lorg/spongycastle/bcpg/TrustPacket;
.super Lorg/spongycastle/bcpg/ContainedPacket;
.source "SourceFile"


# instance fields
.field levelAndTrustAmount:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/TrustPacket;->levelAndTrustAmount:[B

    const/4 p0, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/bcpg/ContainedPacket;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/bcpg/TrustPacket;->levelAndTrustAmount:[B

    return-void
.end method


# virtual methods
.method public encode(Lorg/spongycastle/bcpg/BCPGOutputStream;)V
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/bcpg/TrustPacket;->levelAndTrustAmount:[B

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-virtual {p1, v1, p0, v0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method

.method public getLevelAndTrustAmount()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/TrustPacket;->levelAndTrustAmount:[B

    return-object p0
.end method
