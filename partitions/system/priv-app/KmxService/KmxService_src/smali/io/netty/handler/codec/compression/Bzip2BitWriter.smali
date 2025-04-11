.class final Lio/netty/handler/codec/compression/Bzip2BitWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitBuffer:J

.field private bitCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(Lio/netty/buffer/ByteBuf;)V
    .locals 4

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    if-lez v0, :cond_3

    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    rsub-int/lit8 p0, v0, 0x40

    const/16 v3, 0x8

    if-gt v0, v3, :cond_0

    ushr-long/2addr v1, p0

    sub-int/2addr v3, v0

    shl-long v0, v1, v3

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    if-gt v0, v3, :cond_1

    ushr-long/2addr v1, p0

    sub-int/2addr v3, v0

    shl-long v0, v1, v3

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_1
    const/16 v3, 0x18

    ushr-long/2addr v1, p0

    if-gt v0, v3, :cond_2

    sub-int/2addr v3, v0

    shl-long v0, v1, v3

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    :cond_2
    rsub-int/lit8 p0, v0, 0x20

    shl-long v0, v1, p0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_3
    :goto_0
    return-void
.end method

.method public writeBits(Lio/netty/buffer/ByteBuf;IJ)V
    .locals 5

    if-ltz p2, :cond_1

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    iget-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    rsub-int/lit8 v4, p2, 0x40

    shl-long/2addr p3, v4

    ushr-long/2addr p3, v1

    or-long/2addr p3, v2

    add-int/2addr v1, p2

    if-lt v1, v0, :cond_0

    ushr-long v2, p3, v0

    long-to-int p2, v2

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    shl-long/2addr p3, v0

    add-int/lit8 v1, v1, -0x20

    :cond_0
    iput-wide p3, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count: "

    const-string p3, " (expected: 0-32)"

    invoke-static {p1, p2, p3}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeBoolean(Lio/netty/buffer/ByteBuf;Z)V
    .locals 7

    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    add-int/lit8 v0, v0, 0x1

    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_0

    rsub-int/lit8 p2, v0, 0x40

    const-wide/16 v5, 0x1

    shl-long/2addr v5, p2

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    or-long/2addr v1, v5

    const/16 p2, 0x20

    if-ne v0, p2, :cond_1

    ushr-long v0, v1, p2

    long-to-int p2, v0

    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-wide v3, v1

    :goto_1
    iput-wide v3, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitBuffer:J

    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BitWriter;->bitCount:I

    return-void
.end method

.method public writeInt(Lio/netty/buffer/ByteBuf;I)V
    .locals 3

    const/16 v0, 0x20

    int-to-long v1, p2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBits(Lio/netty/buffer/ByteBuf;IJ)V

    return-void
.end method

.method public writeUnary(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    if-ltz p2, :cond_1

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/compression/Bzip2BitWriter;->writeBoolean(Lio/netty/buffer/ByteBuf;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value: "

    const-string v0, " (expected 0 or more)"

    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
