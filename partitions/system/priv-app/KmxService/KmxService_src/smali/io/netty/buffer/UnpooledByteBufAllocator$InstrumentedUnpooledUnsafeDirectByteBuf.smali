.class final Lio/netty/buffer/UnpooledByteBufAllocator$InstrumentedUnpooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/UnpooledByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentedUnpooledUnsafeDirectByteBuf"
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/buffer/UnpooledByteBufAllocator;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    return-void
.end method


# virtual methods
.method public allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    check-cast p0, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->incrementDirect(I)V

    return-object p1
.end method

.method public freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-super {p0, p1}, Lio/netty/buffer/UnpooledDirectByteBuf;->freeDirect(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p0

    check-cast p0, Lio/netty/buffer/UnpooledByteBufAllocator;

    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledByteBufAllocator;->decrementDirect(I)V

    return-void
.end method
