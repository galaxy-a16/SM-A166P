.class public final Lcom/hivemq/client/internal/mqtt/handler/auth/i;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of p0, p2, Lv6/a;

    if-eqz p0, :cond_0

    check-cast p2, Lv6/a;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v1, "Server must not send AUTH"

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Li8/a;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, Ly6/a;

    if-eqz p0, :cond_2

    check-cast p2, Ly6/a;

    iget-object p0, p2, Ly6/a;->i:Li8/b;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v1, "Server must not include auth in CONNACK"

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final isSharable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
