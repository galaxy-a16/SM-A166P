.class final Lio/netty/handler/codec/ByteToMessageDecoder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/ByteToMessageDecoder$Cumulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cumulate(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->release()Z

    return-object p3

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    instance-of v0, p2, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move-object p1, p2

    check-cast p1, Lio/netty/buffer/CompositeByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result p0

    invoke-virtual {p1}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/AbstractByteBuf;->writerIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const v0, 0x7fffffff

    :try_start_2
    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, v1, p3}, Lio/netty/buffer/CompositeByteBuf;->addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lio/netty/util/ReferenceCounted;->release()Z

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_3

    invoke-virtual {p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->release()Z

    :cond_3
    throw p0
.end method
