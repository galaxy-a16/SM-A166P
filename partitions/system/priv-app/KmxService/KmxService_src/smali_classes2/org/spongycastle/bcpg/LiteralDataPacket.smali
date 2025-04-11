.class public Lorg/spongycastle/bcpg/LiteralDataPacket;
.super Lorg/spongycastle/bcpg/InputStreamPacket;
.source "SourceFile"


# instance fields
.field fileName:[B

.field format:I

.field modDate:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/spongycastle/bcpg/InputStreamPacket;-><init>(Lorg/spongycastle/bcpg/BCPGInputStream;)V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->format:I

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->fileName:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->fileName:[B

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->modDate:J

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->format:I

    return p0
.end method

.method public getModificationTime()J
    .locals 4

    iget-wide v0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->modDate:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRawFileName()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/bcpg/LiteralDataPacket;->fileName:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
