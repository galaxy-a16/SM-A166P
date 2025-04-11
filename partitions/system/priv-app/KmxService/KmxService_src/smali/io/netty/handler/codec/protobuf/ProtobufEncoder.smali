.class public Lio/netty/handler/codec/protobuf/ProtobufEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lcom/google/protobuf/s8;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lio/netty/channel/ChannelHandlerContext;Lcom/google/protobuf/s8;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lcom/google/protobuf/s8;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of p0, p2, Lcom/google/protobuf/r8;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/google/protobuf/r8;

    invoke-interface {p2}, Lcom/google/protobuf/r8;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of p0, p2, Lcom/google/protobuf/q8;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/protobuf/q8;

    invoke-interface {p2}, Lcom/google/protobuf/q8;->build()Lcom/google/protobuf/r8;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/r8;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/google/protobuf/s8;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/protobuf/ProtobufEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lcom/google/protobuf/s8;Ljava/util/List;)V

    return-void
.end method
