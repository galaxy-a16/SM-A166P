.class public abstract Lio/netty/buffer/Unpooled;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOC:Lio/netty/buffer/ByteBufAllocator;

.field public static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field public static final EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

.field public static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    sput-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1

    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-interface {v0, p0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public static copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    const-string v0, "string"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/nio/CharBuffer;

    :goto_0
    invoke-static {p0, p1}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method private static copiedBuffer(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 2
    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Lio/netty/buffer/Unpooled;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBuf;

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/buffer/ReadOnlyByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    sget-object p0, Lio/netty/buffer/Unpooled;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lio/netty/buffer/AbstractByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public static wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-static {v0, v2, v1}, Lio/netty/buffer/Unpooled;->wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2
    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_3
    new-instance v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lio/netty/buffer/ReadOnlyByteBufferBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {v0, v1, p0}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_5
    new-instance v0, Lio/netty/buffer/UnpooledDirectByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static wrappedBuffer([B)Lio/netty/buffer/ByteBuf;
    .locals 3

    .line 2
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p0

    :cond_0
    new-instance v0, Lio/netty/buffer/UnpooledHeapByteBuf;

    sget-object v1, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    array-length v2, p0

    invoke-direct {v0, v1, p0, v2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BI)V

    return-object v0
.end method

.method public static wrappedBuffer([BII)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 3
    if-nez p2, :cond_0

    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    array-length v0, p0

    if-ne p2, v0, :cond_1

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method private static varargs wrappedUnmodifiableBuffer(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    array-length p0, p1

    const-class v0, [Lio/netty/buffer/ByteBuf;

    invoke-static {p1, p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, [Lio/netty/buffer/ByteBuf;

    :cond_0
    new-instance p0, Lio/netty/buffer/FixedCompositeByteBuf;

    sget-object v0, Lio/netty/buffer/Unpooled;->ALLOC:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/FixedCompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[Lio/netty/buffer/ByteBuf;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object p0
.end method

.method public static varargs wrappedUnmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method
