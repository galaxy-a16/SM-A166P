.class public final Lq6/a;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of p0, p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz p0, :cond_5

    move-object p0, p2

    check-cast p0, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-nez v0, :cond_4

    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    const-string p1, "Must not receive text websocket frames"

    invoke-static {p0, p1}, Lp9/d;->p(Lio/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_2
    instance-of p2, p2, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-direct {p2, p0}, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->release()Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_1

    :cond_5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_1
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    instance-of p0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz p0, :cond_0

    new-instance p0, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, p0, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method
