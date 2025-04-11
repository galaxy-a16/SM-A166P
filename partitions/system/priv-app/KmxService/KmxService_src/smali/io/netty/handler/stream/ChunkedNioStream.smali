.class public Lio/netty/handler/stream/ChunkedNioStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/stream/ChunkedInput;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/stream/ChunkedInput<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final chunkSize:I

.field private final in:Ljava/nio/channels/ReadableByteChannel;

.field private offset:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1

    .line 1
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lio/netty/handler/stream/ChunkedNioStream;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "in"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p2, :cond_0

    iput-object p1, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    iput p2, p0, Lio/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chunkSize: "

    const-string v0, " (expected: a positive integer)"

    .line 2
    invoke-static {p1, p2, v0}, Lorg/spongycastle/jcajce/provider/digest/a;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public isEndOfInput()Z
    .locals 6

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v3, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    :cond_1
    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    return v1

    :cond_2
    return v2
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public progress()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method

.method public readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedNioStream;->isEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :cond_1
    iget-object v1, p0, Lio/netty/handler/stream/ChunkedNioStream;->in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    iget-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    iget v1, p0, Lio/netty/handler/stream/ChunkedNioStream;->chunkSize:I

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    iget-object p0, p0, Lio/netty/handler/stream/ChunkedNioStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    throw p0
.end method

.method public readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readChunk(Lio/netty/channel/ChannelHandlerContext;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/handler/stream/ChunkedNioStream;->readChunk(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public transferredBytes()J
    .locals 2

    iget-wide v0, p0, Lio/netty/handler/stream/ChunkedNioStream;->offset:J

    return-wide v0
.end method
