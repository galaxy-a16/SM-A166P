.class public final Li6/e;
.super Lp6/a;
.source "SourceFile"


# static fields
.field public static final j:Lv5/a;


# instance fields
.field public final c:Lx6/a;

.field public final d:Li6/b;

.field public final e:Lw5/h;

.field public final f:Lh6/g;

.field public final g:Lz5/a;

.field public h:Z

.field public i:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Li6/e;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Li6/e;->j:Lv5/a;

    return-void
.end method

.method public constructor <init>(Lx6/a;Li6/b;Lw5/h;Lh6/g;Lz5/a;)V
    .locals 1

    invoke-direct {p0}, Lp6/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li6/e;->h:Z

    iput-object p1, p0, Li6/e;->c:Lx6/a;

    iput-object p2, p0, Li6/e;->d:Li6/b;

    iput-object p3, p0, Li6/e;->e:Lw5/h;

    iput-object p4, p0, Li6/e;->f:Lh6/g;

    iput-object p5, p0, Li6/e;->g:Lz5/a;

    return-void
.end method


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 6

    invoke-virtual {p0}, Lp6/a;->b()V

    iget-object v0, p0, Li6/e;->e:Lw5/h;

    iget-object v1, p2, Lj6/c;->b:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    iget-object v2, p2, Lj6/c;->a:Ljava/lang/Throwable;

    iget-object v3, p0, Li6/e;->c:Lx6/a;

    iget-object v4, p0, Li6/e;->d:Li6/b;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    invoke-interface {p0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Li6/d;->e(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public final channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-virtual {p0, p1}, Li6/e;->h(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lp6/a;->b()V

    instance-of v2, v0, Ly6/a;

    if-eqz v2, :cond_21

    move-object v2, v0

    check-cast v2, Ly6/a;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    iget-object v3, v2, Lu6/e;->d:Lh8/b;

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lu6/e;->d:Lh8/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {v0, v1, v2}, Lp9/d;->I(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/util/AsyncRuntimeException;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto/16 :goto_11

    :cond_0
    iget-object v3, v1, Li6/e;->e:Lw5/h;

    iget-object v3, v3, Lw5/h;->b:Lf6/a;

    iget-object v4, v2, Ly6/a;->h:Lf6/a;

    sget-object v5, Lf6/a;->e:Lf6/a;

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Li6/e;->e:Lw5/h;

    iget-object v3, v3, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v5, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v3, v5, :cond_2

    if-nez v4, :cond_2

    sget-object v3, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v4, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v5, "Server did not assign a Client Identifier"

    invoke-direct {v4, v2, v5}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lp9/d;->D(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Lcom/hivemq/client/internal/util/AsyncRuntimeException;)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v5, Li6/e;->j:Lv5/a;

    const-string v6, "Server overwrote the Client Identifier {} with {}"

    invoke-interface {v5, v6, v3, v4}, Lv5/a;->a(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v3, v1, Li6/e;->e:Lw5/h;

    iput-object v4, v3, Lw5/h;->b:Lf6/a;

    :cond_3
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_23

    iget v3, v2, Ly6/a;->g:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Li6/e;->c:Lx6/a;

    iget v3, v3, Lx6/a;->c:I

    :cond_4
    move v4, v3

    iget-wide v5, v2, Ly6/a;->f:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    iget-object v3, v1, Li6/e;->c:Lx6/a;

    iget-wide v5, v3, Lx6/a;->e:J

    :cond_5
    move-wide v7, v5

    iget-object v3, v1, Li6/e;->c:Lx6/a;

    iget-object v5, v3, Lx6/a;->f:Lx6/b;

    iget-object v6, v2, Ly6/a;->j:Ly6/b;

    new-instance v9, Lw5/i;

    iget-object v10, v1, Li6/e;->e:Lw5/h;

    iget-object v10, v10, Lw5/h;->n:Lw5/m;

    iget-boolean v15, v3, Lx6/a;->d:Z

    iget-wide v10, v3, Lx6/a;->e:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    move/from16 v22, v10

    iget-object v3, v3, Lx6/a;->g:Lv6/c;

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    move/from16 v23, v3

    iget v10, v5, Lx6/b;->a:I

    iget v11, v5, Lx6/b;->c:I

    iget v12, v5, Lx6/b;->e:I

    iget-boolean v13, v5, Lx6/b;->g:Z

    iget-boolean v14, v5, Lx6/b;->h:Z

    iget v3, v5, Lx6/b;->b:I

    move/from16 v16, v15

    iget v15, v6, Ly6/b;->b:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    move/from16 v24, v16

    iget v3, v5, Lx6/b;->d:I

    move-object/from16 p2, v2

    iget v2, v6, Ly6/b;->c:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v16, v2

    iget v3, v5, Lx6/b;->f:I

    iget v5, v6, Ly6/b;->d:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-boolean v3, v6, Ly6/b;->f:Z

    move/from16 v18, v3

    iget-boolean v3, v6, Ly6/b;->g:Z

    move/from16 v19, v3

    iget-boolean v3, v6, Ly6/b;->h:Z

    move/from16 v20, v3

    iget-boolean v3, v6, Ly6/b;->i:Z

    move/from16 v21, v3

    move-object v3, v9

    move/from16 v5, v24

    move/from16 v6, v22

    move/from16 p1, v2

    move-object v2, v9

    move/from16 v9, v23

    move-object/from16 v22, v0

    invoke-direct/range {v3 .. v22}, Lw5/i;-><init>(IZZJZIIIZZIIIZZZZLio/netty/channel/Channel;)V

    iget-object v3, v1, Li6/e;->e:Lw5/h;

    iput-object v2, v3, Lw5/h;->m:Lw5/i;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v3

    const-string v4, "encoder"

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v3

    check-cast v3, Lc6/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lc6/a;->b:Ld/m;

    move/from16 v4, p1

    iput v4, v3, Ld/m;->a:I

    iget-object v3, v1, Li6/e;->f:Lh6/g;

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v4

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    iget-boolean v6, v3, Lh6/g;->d:Z

    if-eqz v6, :cond_8

    move-object/from16 v6, p2

    iget-boolean v7, v6, Ly6/a;->e:Z

    if-nez v7, :cond_9

    new-instance v7, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    new-instance v8, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v9, "Session expired as CONNACK did not contain the session present flag."

    invoke-direct {v8, v6, v9}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lk8/a;Ljava/lang/String;)V

    invoke-direct {v7, v9, v8}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v7}, Lh6/g;->a(Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;)V

    goto :goto_3

    :cond_8
    move-object/from16 v6, p2

    :cond_9
    :goto_3
    const/4 v7, 0x1

    iput-boolean v7, v3, Lh6/g;->d:Z

    iget-object v8, v3, Lh6/g;->e:Lio/netty/util/concurrent/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    invoke-interface {v8, v10}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    iput-object v9, v3, Lh6/g;->e:Lio/netty/util/concurrent/c;

    :cond_a
    iget-object v8, v3, Lh6/g;->a:Lo6/e;

    const-string v11, "decoder"

    const-string v12, "subscription"

    invoke-interface {v4, v11, v12, v8}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object v12, v3, Lh6/g;->b:Ll6/f;

    const-string v13, "qos.incoming"

    invoke-interface {v4, v11, v13, v12}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object v3, v3, Lh6/g;->c:Lm6/a;

    const-string v13, "qos.outgoing"

    invoke-interface {v4, v11, v13, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, Lw5/i;->j:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    move v4, v7

    goto :goto_4

    :cond_b
    move v4, v10

    :goto_4
    iput-boolean v4, v8, Lo6/e;->k:Z

    iget-boolean v4, v8, Lh6/h;->b:Z

    if-nez v4, :cond_17

    iget-object v4, v8, Lo6/e;->d:Ll6/b;

    iget-object v4, v4, Ll6/b;->a:Ll6/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Comparator;->reverseOrder()Ljava/util/Comparator;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v14, v4, Ll6/l;->a:Ljava/lang/Object;

    check-cast v14, Ll6/k;

    if-eqz v14, :cond_16

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    new-instance v15, Ll6/i;

    iget-object v4, v4, Ll6/l;->a:Ljava/lang/Object;

    check-cast v4, Ll6/k;

    invoke-direct {v15, v4, v9}, Ll6/i;-><init>(Ll6/k;Lf6/f;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v14}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll6/i;

    iget-object v9, v4, Ll6/i;->a:Ll6/k;

    iget-object v4, v4, Ll6/i;->b:Lf6/f;

    if-eqz v4, :cond_d

    iget-object v15, v9, Ll6/k;->b:Lf6/f;

    if-nez v15, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v4, v15}, Lf6/g;->f(Lf6/f;Lf6/f;)Lf6/g;

    move-result-object v4

    goto :goto_7

    :cond_d
    :goto_6
    iget-object v4, v9, Ll6/k;->b:Lf6/f;

    :goto_7
    iget-object v15, v9, Ll6/k;->e:Lv7/w;

    if-eqz v15, :cond_e

    invoke-static {v15, v4, v10, v13}, Ll6/k;->f(Lv7/w;Lf6/f;ZLjava/util/TreeMap;)V

    :cond_e
    iget-object v10, v9, Ll6/k;->f:Lv7/w;

    if-eqz v10, :cond_f

    invoke-static {v10, v4, v7, v13}, Ll6/k;->f(Lv7/w;Lf6/f;ZLjava/util/TreeMap;)V

    :cond_f
    iget-object v7, v9, Ll6/k;->c:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz v7, :cond_13

    new-instance v10, Lcom/hivemq/client/internal/mqtt/handler/auth/b;

    const/4 v15, 0x3

    invoke-direct {v10, v15, v14, v4}, Lcom/hivemq/client/internal/mqtt/handler/auth/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v7, [Ljava/lang/Object;

    array-length v15, v7

    const/16 v16, 0x0

    move-object/from16 p2, v6

    move/from16 v6, v16

    :goto_8
    if-ge v6, v15, :cond_14

    aget-object v16, v7, v6

    move-object/from16 p1, v7

    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v17, v15

    const-class v15, Lv7/u;

    if-ne v7, v15, :cond_10

    :goto_9
    move-object/from16 v7, v16

    check-cast v7, Lv7/u;

    move-object/from16 v18, v11

    iget-object v11, v7, Lv7/u;->b:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->accept(Ljava/lang/Object;)V

    iget-object v7, v7, Lv7/u;->c:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v15, :cond_11

    move-object/from16 v16, v7

    move-object/from16 v11, v18

    goto :goto_9

    :cond_10
    move-object/from16 v18, v11

    move-object/from16 v7, v16

    :cond_11
    invoke-virtual {v10, v7}, Lcom/hivemq/client/internal/mqtt/handler/auth/b;->accept(Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    move-object/from16 v18, v11

    move/from16 v17, v15

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, p1

    move/from16 v15, v17

    move-object/from16 v11, v18

    goto :goto_8

    :cond_13
    move-object/from16 p2, v6

    :cond_14
    move-object/from16 v18, v11

    iget-object v6, v9, Ll6/k;->d:Ll6/k;

    if-eqz v6, :cond_15

    new-instance v7, Ll6/i;

    invoke-direct {v7, v6, v4}, Ll6/i;-><init>(Ll6/k;Lf6/f;)V

    invoke-virtual {v14, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object/from16 v6, p2

    move-object/from16 v11, v18

    goto/16 :goto_5

    :cond_16
    move-object/from16 p2, v6

    move-object/from16 v18, v11

    new-instance v4, Lw5/a;

    const/4 v6, 0x2

    invoke-direct {v4, v8, v6}, Lw5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v13, v4}, Ljava/util/TreeMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_b

    :cond_17
    move-object/from16 p2, v6

    move-object/from16 v18, v11

    :goto_b
    iget-object v4, v8, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/j;->e()V

    iget-object v4, v8, Lo6/e;->e:Lv7/w;

    iget-object v4, v4, Lv7/w;->a:Ld/g0;

    check-cast v4, Lo6/b;

    iput-object v4, v8, Lo6/e;->i:Lo6/b;

    if-eqz v4, :cond_18

    invoke-interface {v5, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_18
    const/4 v4, 0x1

    iput-boolean v4, v8, Lh6/h;->b:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-short v4, v2, Lw5/i;->c:S

    const v6, 0xffff

    and-int/2addr v4, v6

    iput v4, v12, Ll6/f;->f:I

    iget-wide v7, v12, Ll6/f;->g:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v12, Ll6/f;->g:J

    const/4 v4, 0x1

    iput-boolean v4, v12, Lh6/h;->b:Z

    iget v4, v3, Lm6/a;->j:I

    iget-short v7, v2, Lw5/i;->f:S

    and-int/2addr v7, v6

    const v8, 0xfff5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v3, Lm6/a;->j:I

    iget-object v8, v3, Lm6/a;->h:Ll6/l;

    invoke-virtual {v8, v7}, Ll6/l;->b(I)V

    if-nez v4, :cond_1a

    new-instance v4, Lcom/google/firebase/concurrent/h;

    const/16 v8, 0x18

    invoke-direct {v4, v8}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    sget v8, Leb/e;->a:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v3, Lm6/a;->d:Lm6/b;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "maxConcurrency"

    const/16 v11, 0x40

    invoke-static {v11, v10}, Lfc/c;->m(ILjava/lang/String;)V

    const-string v10, "bufferSize"

    invoke-static {v8, v10}, Lfc/c;->m(ILjava/lang/String;)V

    instance-of v10, v9, Lib/e;

    if-eqz v10, :cond_19

    check-cast v9, Lib/e;

    sget-object v4, Lio/reactivex/internal/operators/flowable/h;->b:Lio/reactivex/internal/operators/flowable/h;

    goto :goto_c

    :cond_19
    new-instance v10, Lio/reactivex/internal/operators/flowable/i;

    invoke-direct {v10, v9, v4, v8}, Lio/reactivex/internal/operators/flowable/i;-><init>(Lm6/b;Lcom/google/firebase/concurrent/h;I)V

    move-object v4, v10

    :goto_c
    invoke-virtual {v4, v3}, Leb/e;->a(Leb/g;)V

    goto :goto_d

    :cond_1a
    sub-int/2addr v7, v4

    iget v4, v3, Lm6/a;->l:I

    sub-int/2addr v7, v4

    if-lez v7, :cond_1b

    const/4 v4, 0x0

    iput v4, v3, Lm6/a;->l:I

    :goto_d
    iget-object v4, v3, Lm6/a;->k:Lvc/d;

    int-to-long v7, v7

    invoke-interface {v4, v7, v8}, Lvc/d;->request(J)V

    goto :goto_e

    :cond_1b
    neg-int v4, v7

    iput v4, v3, Lm6/a;->l:I

    :goto_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lm6/a;->i:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/j;->e()V

    iget-object v4, v3, Lm6/a;->g:Lv7/w;

    iget-object v4, v4, Lv7/w;->a:Ld/g0;

    invoke-static {v4}, Lcom/google/protobuf/n;->v(Ld/g0;)V

    iget-object v4, v3, Lm6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1c

    invoke-interface {v5, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1c
    const/4 v4, 0x1

    iput-boolean v4, v3, Lh6/h;->b:Z

    iget-short v2, v2, Lw5/i;->a:S

    and-int v8, v2, v6

    if-lez v8, :cond_1d

    new-instance v2, Lk6/a;

    iget-wide v9, v1, Li6/e;->i:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lk6/a;-><init>(IJJ)V

    invoke-interface {v0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v3, "ping"

    move-object/from16 v4, v18

    invoke-interface {v0, v4, v3, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_1d
    iget-object v0, v1, Li6/e;->e:Lw5/h;

    iget-object v0, v0, Lw5/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v1, Li6/e;->e:Lw5/h;

    iget-object v0, v0, Lw5/h;->f:Lv7/t;

    invoke-interface {v0}, Lv7/t;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, v1, Li6/e;->e:Lw5/h;

    iget-object v3, v1, Li6/e;->c:Lx6/a;

    iget-object v4, v2, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v5, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_3_1_1:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v4, v5, :cond_1e

    new-instance v4, Lva/f;

    new-instance v5, Lf9/b;

    const/16 v6, 0x1b

    invoke-direct {v5, v2, v6}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    new-instance v2, La7/a;

    invoke-direct {v2, v3}, La7/a;-><init>(Lx6/a;)V

    new-instance v3, Lz6/b;

    move-object/from16 v6, p2

    invoke-direct {v3, v6}, Lz6/b;-><init>(Ly6/a;)V

    invoke-direct {v4, v5, v2, v3}, Lva/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_1e
    move-object/from16 v6, p2

    new-instance v4, Lp1/v;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v3, v6, v5}, Lp1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    :goto_f
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lv7/t;->listIterator(I)Lv7/s;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/network/b;

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/kmxservice/trustchain/client/network/b;->a:Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;

    invoke-static {v0, v4}, Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;->c(Lcom/samsung/android/kmxservice/trustchain/client/network/MqttHelper;Ly7/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    sget-object v3, Li6/e;->j:Lv5/a;

    const-string v5, "Unexpected exception thrown by connected listener."

    invoke-interface {v3, v5, v0}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_1f
    move-object/from16 v6, p2

    :cond_20
    iget-object v0, v1, Li6/e;->d:Li6/b;

    iget-object v0, v0, Li6/b;->a:Leb/u;

    if-eqz v0, :cond_23

    invoke-interface {v0, v6}, Leb/u;->onSuccess(Ljava/lang/Object;)V

    goto :goto_11

    :cond_21
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    instance-of v2, v0, Lu6/c;

    if-eqz v2, :cond_22

    sget-object v2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Lu6/c;

    invoke-interface {v0}, Lh8/a;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " message must not be received before CONNACK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_11

    :cond_22
    const-string v0, "No data must be received before CONNECT is sent"

    invoke-static {v1, v0}, Lp9/d;->p(Lio/netty/channel/Channel;Ljava/lang/String;)V

    :cond_23
    :goto_11
    return-void
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Li6/e;->e:Lw5/h;

    iget-object p0, p0, Lw5/h;->n:Lw5/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0xea60

    int-to-long v0, p0

    return-wide v0
.end method

.method public final e()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 0

    sget-object p0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    const-string p0, "Timeout while waiting for CONNACK"

    return-object p0
.end method

.method public final g(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-object v0, p0, Li6/e;->c:Lx6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0}, Li6/e;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object v0

    iput-object v0, p0, Lp6/a;->b:Lio/netty/util/concurrent/c;

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    iget-object p0, p0, Li6/e;->g:Lz5/a;

    const-string v0, "encoder"

    const-string v1, "decoder"

    invoke-interface {p1, v0, v1, p0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public final h(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    iget-boolean v0, p0, Li6/e;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li6/e;->h:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Li6/e;->i:J

    iget-object v0, p0, Li6/e;->c:Lx6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Li6/e;->c:Lx6/a;

    iget-object v1, p0, Li6/e;->e:Lw5/h;

    iget-object v1, v1, Lw5/h;->b:Lf6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lx6/c;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lx6/c;-><init>(Lx6/a;Lf6/a;Lv6/b;)V

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iput-object p1, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li6/e;->h(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method
