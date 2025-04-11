.class public Lio/netty/buffer/ReadOnlyByteBuf;
.super Lio/netty/buffer/AbstractDerivedByteBuf;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final buffer:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractDerivedByteBuf;-><init>(I)V

    instance-of v0, p1, Lio/netty/buffer/ReadOnlyByteBuf;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/buffer/DuplicatedByteBuf;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/netty/buffer/ReadOnlyByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/ReadOnlyByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/AbstractByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    return-void
.end method


# virtual methods
.method public _getByte(I)B
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p0

    return p0
.end method

.method public _getInt(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p0

    return p0
.end method

.method public _getIntLE(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result p0

    return p0
.end method

.method public _getLong(I)J
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public _getLongLE(I)J
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public _getShort(I)S
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p0

    return p0
.end method

.method public _getShortLE(I)S
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result p0

    return p0
.end method

.method public _getUnsignedMedium(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p0

    return p0
.end method

.method public _getUnsignedMediumLE(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result p0

    return p0
.end method

.method public _setByte(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setInt(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setIntLE(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setLong(IJ)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setLongLE(IJ)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setMedium(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setMediumLE(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setShort(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public _setShortLE(II)V
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    return-object p0
.end method

.method public array()[B
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public arrayOffset()I
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 0

    return-object p0
.end method

.method public capacity()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result p0

    return p0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    new-instance v0, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0
.end method

.method public ensureWritable(IZ)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result p0

    return p0
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result p0

    return p0
.end method

.method public getByte(I)B
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p0

    return p0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result p0

    return p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public getInt(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getIntLE(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result p0

    return p0
.end method

.method public getLong(I)J
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLongLE(I)J
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result p0

    return p0
.end method

.method public getShortLE(I)S
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result p0

    return p0
.end method

.method public getUnsignedMedium(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result p0

    return p0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result p0

    return p0
.end method

.method public hasArray()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasMemoryAddress()Z
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result p0

    return p0
.end method

.method public isDirect()Z
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result p0

    return p0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWritable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public isWritable(I)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public memoryAddress()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public nioBufferCount()I
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result p0

    return p0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    return-object p0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 0

    .line 1
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 0

    .line 2
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0

    .line 3
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 4
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 5
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 6
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->unmodifiableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 0

    iget-object p0, p0, Lio/netty/buffer/ReadOnlyByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    return-object p0
.end method
