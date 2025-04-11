.class public abstract Lio/netty/handler/codec/compression/ZlibDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# instance fields
.field protected final maxAllocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxAllocation must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    return-void
.end method

.method public abstract isClosed()Z
.end method

.method public prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    if-nez p2, :cond_1

    iget p2, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    if-nez p2, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    invoke-interface {p0, p3}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    iget p2, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p0, p0, Lio/netty/handler/codec/compression/ZlibDecoder;->maxAllocation:I

    invoke-interface {p1, p2, p0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lio/netty/buffer/ByteBuf;->ensureWritable(IZ)I

    move-result p3

    if-eq p3, p1, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/ZlibDecoder;->decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    new-instance p0, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Decompression buffer has reached maximum size: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
