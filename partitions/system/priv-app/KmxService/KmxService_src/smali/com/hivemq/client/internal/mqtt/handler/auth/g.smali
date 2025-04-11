.class public final Lcom/hivemq/client/internal/mqtt/handler/auth/g;
.super Lcom/hivemq/client/internal/mqtt/handler/auth/c;
.source "SourceFile"

# interfaces
.implements Lr7/a;


# static fields
.field public static final synthetic f:I


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 2

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq p1, v0, :cond_0

    new-instance p1, Ld/p0;

    const/16 v1, 0x18

    invoke-direct {p1, v1, p0, p2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->h(Ld/p0;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    :cond_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Ly6/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p2, Ly6/a;

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object v0, p2, Lu6/e;->d:Lh8/b;

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld/p0;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0, p2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->h(Ld/p0;)V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->d:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lu6/e;->d:Lh8/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, p2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Ly6/a;->i:Li8/b;

    if-nez p0, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v1, "Auth method in CONNACK must be present."

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Li8/b;->b()Lf6/j;

    throw v1

    :cond_2
    instance-of v0, p2, Lv6/a;

    if-nez v0, :cond_3

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void

    :cond_3
    check-cast p2, Lv6/a;

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object p0, p2, Lv6/a;->e:Lf6/j;

    throw v1
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "Timeout while waiting for AUTH or CONNACK."

    return-object p0
.end method

.method public final write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    instance-of p0, p2, Lx6/a;

    if-nez p0, :cond_0

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    check-cast p2, Lx6/a;

    const/4 p0, 0x0

    throw p0
.end method
