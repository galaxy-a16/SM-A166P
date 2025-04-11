.class public final Lj6/g;
.super Lh6/e;
.source "SourceFile"


# static fields
.field public static final e:Lv5/a;

.field public static final f:Ljava/lang/Object;


# instance fields
.field public final b:Lw5/h;

.field public final c:Lh6/g;

.field public d:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lj6/g;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Lj6/g;->e:Lv5/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj6/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw5/h;Lh6/g;)V
    .locals 1

    invoke-direct {p0}, Lh6/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    iput-object p1, p0, Lj6/g;->b:Lw5/h;

    iput-object p2, p0, Lj6/g;->c:Lh6/g;

    return-void
.end method


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    sget-object v2, Lj6/g;->f:Ljava/lang/Object;

    iput-object v2, v1, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    iget-object v3, v4, Lj6/c;->b:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    sget-object v5, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    if-ne v3, v5, :cond_0

    invoke-virtual {v1, v2, v4}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    invoke-interface {v2}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void

    :cond_0
    iget-object v3, v4, Lj6/c;->a:Ljava/lang/Throwable;

    instance-of v5, v3, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    if-eqz v5, :cond_1

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;->getMqttMessage()Ll8/a;

    move-result-object v3

    instance-of v5, v3, Lb7/a;

    if-eqz v5, :cond_1

    check-cast v3, Lb7/a;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_7

    iget-wide v5, v3, Lb7/a;->e:J

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_4

    iget-object v7, v1, Lj6/g;->b:Lw5/h;

    iget-object v7, v7, Lw5/h;->m:Lw5/i;

    if-eqz v7, :cond_4

    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-lez v10, :cond_3

    iget v10, v7, Lw5/i;->j:I

    and-int/lit16 v10, v10, 0x200

    if-eqz v10, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v8

    :goto_1
    if-eqz v10, :cond_3

    sget-object v5, Lj6/g;->e:Lv5/a;

    const-string v6, "Session expiry interval must not be set in DISCONNECT if it was set to 0 in CONNECT"

    invoke-interface {v5, v6}, Lv5/a;->warn(Ljava/lang/String;)V

    sget-object v5, Ll8/a;->a:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    sget-object v5, Lf6/h;->c:Lf6/h;

    iget-object v5, v3, Lu6/e;->d:Lh8/b;

    move-object v11, v5

    check-cast v11, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    iget-object v14, v3, Lb7/a;->f:Lf6/j;

    iget-object v15, v3, Lu6/g;->c:Lf6/j;

    iget-object v3, v3, Lu6/h;->b:Lf6/h;

    const-wide/16 v12, 0x0

    new-instance v5, Lb7/a;

    move-object v10, v5

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lb7/a;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLf6/j;Lf6/j;Lf6/h;)V

    move-object v3, v5

    goto :goto_2

    :cond_3
    long-to-int v5, v5

    iput v5, v7, Lw5/i;->b:I

    :cond_4
    :goto_2
    instance-of v5, v4, Lj6/b;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lj6/b;

    invoke-interface {v0, v3}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v6

    new-instance v7, Lj6/d;

    const/4 v8, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v5

    move-object/from16 v4, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lj6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_4

    :cond_5
    iget-object v5, v1, Lj6/g;->b:Lw5/h;

    iget-object v5, v5, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v6, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v5, v6, :cond_6

    invoke-interface {v0, v3}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v3, Lj6/e;

    invoke-direct {v3, v1, v2, v4, v8}, Lj6/e;-><init>(Lj6/g;Lio/netty/channel/Channel;Lj6/c;I)V

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v3, Lj6/e;

    invoke-direct {v3, v1, v2, v4, v9}, Lj6/e;-><init>(Lj6/g;Lio/netty/channel/Channel;Lj6/c;I)V

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v3, Lj6/e;

    const/4 v5, 0x2

    invoke-direct {v3, v1, v2, v4, v5}, Lj6/e;-><init>(Lj6/g;Lio/netty/channel/Channel;Lj6/c;I)V

    :goto_3
    invoke-interface {v0, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_4
    return-void
.end method

.method public final b(Lio/netty/channel/Channel;Lj6/c;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lj6/g;->b:Lw5/h;

    iget-object v2, v2, Lw5/h;->m:Lw5/i;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lj6/g;->c:Lh6/g;

    iget-object v4, v1, Lj6/c;->a:Ljava/lang/Throwable;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, Lw5/i;->b:I

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v12, :cond_0

    new-instance v6, Lh6/f;

    invoke-direct {v6, v3, v4, v14}, Lh6/f;-><init>(Lh6/g;Ljava/lang/Throwable;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    cmp-long v12, v6, v8

    if-eqz v12, :cond_1

    new-instance v12, Lh6/f;

    invoke-direct {v12, v3, v4, v13}, Lh6/f;-><init>(Lh6/g;Ljava/lang/Throwable;I)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v15, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v6, v15

    double-to-long v6, v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v12, v6, v7, v4}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object v4

    iput-object v4, v3, Lh6/g;->e:Lio/netty/util/concurrent/c;

    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v21

    iget-object v3, v0, Lj6/g;->b:Lw5/h;

    iget-object v3, v3, Lw5/h;->e:Lw5/g;

    new-instance v18, Lx6/a;

    iget-short v4, v2, Lw5/i;->a:S

    const v5, 0xffff

    and-int v23, v4, v5

    iget v4, v2, Lw5/i;->b:I

    int-to-long v6, v4

    and-long/2addr v6, v8

    cmp-long v4, v6, v10

    if-nez v4, :cond_2

    move/from16 v24, v13

    goto :goto_1

    :cond_2
    move/from16 v24, v14

    :goto_1
    iget v4, v2, Lw5/i;->b:I

    int-to-long v6, v4

    and-long v25, v6, v8

    new-instance v4, Lx6/b;

    iget-short v6, v2, Lw5/i;->c:S

    and-int v28, v6, v5

    iget-short v6, v2, Lw5/i;->f:S

    and-int v29, v6, v5

    iget v6, v2, Lw5/i;->d:I

    iget v7, v2, Lw5/i;->g:I

    iget-short v8, v2, Lw5/i;->e:S

    and-int v32, v8, v5

    iget-object v5, v2, Lw5/i;->h:Lm6/d;

    if-nez v5, :cond_3

    move/from16 v33, v14

    goto :goto_2

    :cond_3
    iget v5, v5, Lm6/d;->a:I

    move/from16 v33, v5

    :goto_2
    iget v2, v2, Lw5/i;->j:I

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_4

    move/from16 v34, v13

    goto :goto_3

    :cond_4
    move/from16 v34, v14

    :goto_3
    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    move/from16 v35, v13

    goto :goto_4

    :cond_5
    move/from16 v35, v14

    :goto_4
    move-object/from16 v27, v4

    move/from16 v30, v6

    move/from16 v31, v7

    invoke-direct/range {v27 .. v35}, Lx6/b;-><init>(IIIIIIZZ)V

    iget-object v2, v3, Lw5/g;->a:Lv6/c;

    sget-object v29, Lf6/h;->c:Lf6/h;

    move-object/from16 v22, v18

    move-object/from16 v28, v2

    invoke-direct/range {v22 .. v29}, Lx6/a;-><init>(IZJLx6/b;Lv6/c;Lf6/h;)V

    iget-object v15, v0, Lj6/g;->b:Lw5/h;

    iget-object v2, v1, Lj6/c;->b:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    iget-object v1, v1, Lj6/c;->a:Ljava/lang/Throwable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-static/range {v15 .. v21}, Li6/d;->d(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;ILi6/b;Lio/netty/channel/EventLoop;)V

    iget-object v0, v0, Lj6/g;->b:Lw5/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lw5/h;->m:Lw5/i;

    :cond_6
    return-void
.end method

.method public final channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    iget-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    sget-object v1, Lj6/g;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object v1, p0, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    new-instance p1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    const-string v0, "Server closed connection without DISCONNECT."

    invoke-direct {p1, v0}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, v0}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lj6/f;

    if-eqz p1, :cond_1

    check-cast v0, Lj6/f;

    iput-object v1, p0, Lj6/g;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iget-object v1, v0, Lj6/f;->c:Lio/netty/util/concurrent/c;

    invoke-interface {v1, p1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    iget-object p1, v0, Lj6/f;->a:Lio/netty/channel/Channel;

    iget-object v0, v0, Lj6/f;->b:Lj6/b;

    invoke-virtual {p0, p1, v0}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    iget-object p0, v0, Lj6/b;->c:Ls7/a;

    iget-object p0, p0, Ls7/a;->a:Leb/b;

    invoke-interface {p0}, Leb/b;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lb7/a;

    sget-object v1, Lj6/g;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p2, Lb7/a;

    iget-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_2

    iput-object v1, p0, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    const-string v0, "Server sent DISCONNECT."

    invoke-direct {p1, p2, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Ll8/a;Ljava/lang/String;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, p2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ly6/a;

    if-eqz v0, :cond_1

    check-cast p2, Ly6/a;

    iget-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_2

    iput-object v1, p0, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v1, "Must not receive second CONNACK."

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lj6/g;->f:Ljava/lang/Object;

    iput-object v0, p0, Lj6/g;->d:Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    new-instance p1, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {p1, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    sget-object p2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, p2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, Ljava/io/IOException;

    if-nez p0, :cond_1

    sget-object p0, Lj6/g;->e:Lv5/a;

    const-string p1, "Exception while disconnecting: {}"

    invoke-interface {p0, p1, p2}, Lv5/a;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
