.class public final Ll6/f;
.super Lh6/h;
.source "SourceFile"


# static fields
.field public static final h:Lv5/a;

.field public static final i:Landroidx/recyclerview/widget/s0;


# instance fields
.field public final c:Lw5/h;

.field public final d:Ll6/c;

.field public final e:Lcom/fasterxml/jackson/databind/deser/j;

.field public f:I

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ll6/f;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Ll6/f;->h:Lv5/a;

    new-instance v0, Landroidx/recyclerview/widget/s0;

    new-instance v1, Ll6/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ll6/d;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/s0;-><init>(Ll6/d;)V

    sput-object v0, Ll6/f;->i:Landroidx/recyclerview/widget/s0;

    return-void
.end method

.method public constructor <init>(Lw5/h;Ll6/b;)V
    .locals 3

    invoke-direct {p0}, Lh6/h;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v1, Ll6/f;->i:Landroidx/recyclerview/widget/s0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;I)V

    iput-object v0, p0, Ll6/f;->e:Lcom/fasterxml/jackson/databind/deser/j;

    iput-object p1, p0, Ll6/f;->c:Lw5/h;

    new-instance p1, Ll6/c;

    invoke-direct {p1, p0, p2}, Ll6/c;-><init>(Ll6/f;Ll6/b;)V

    iput-object p1, p0, Ll6/f;->d:Ll6/c;

    return-void
.end method

.method public static e(Lio/netty/channel/ChannelHandlerContext;Le7/b;)Z
    .locals 3

    iget-boolean v0, p1, Le7/b;->d:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Ll6/f;->h:Lv5/a;

    invoke-interface {v0, p1}, Lv5/a;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DUP flag must be set for a resent QoS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lu6/j;->b:Lu6/h;

    check-cast p1, Le7/a;

    iget-object p1, p1, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " PUBLISH"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Ll6/g;)V
    .locals 6

    sget-object v0, Ll6/e;->a:[I

    iget-object v1, p1, Ll6/g;->c:Le7/b;

    iget-object v2, v1, Lu6/j;->b:Lu6/h;

    check-cast v2, Le7/a;

    iget-object v2, v2, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Ll6/f;->c:Lw5/h;

    iget-object v4, p0, Ll6/f;->e:Lcom/fasterxml/jackson/databind/deser/j;

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/google/firebase/messaging/r;

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/r;-><init>(Le7/b;)V

    iget-object v1, v3, Lw5/h;->d:Lx5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li7/a;

    iget-object v2, v0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/Object;

    check-cast v2, Le7/b;

    iget v2, v2, Lu6/i;->c:I

    iget-object v3, v0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    iget-object v5, v0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v5, Lf6/j;

    iget-object v0, v0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v0, Lf6/h;

    invoke-direct {v1, v2, v3, v5, v0}, Li7/a;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;Lf6/j;Lf6/h;)V

    invoke-virtual {v3}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;->isError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Ll6/f;->d(Ljava/lang/Object;Ll6/g;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_2
    new-instance v0, Lp1/i;

    invoke-direct {v0, v1}, Lp1/i;-><init>(Le7/b;)V

    iget-object v1, v3, Lw5/h;->d:Lx5/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf7/a;

    iget-object v2, v0, Lp1/i;->a:Ljava/lang/Object;

    check-cast v2, Le7/b;

    iget v2, v2, Lu6/i;->c:I

    iget-object v3, v0, Lp1/i;->b:Ljava/lang/Object;

    check-cast v3, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iget-object v5, v0, Lp1/i;->c:Ljava/lang/Object;

    check-cast v5, Lf6/j;

    iget-object v0, v0, Lp1/i;->d:Ljava/lang/Object;

    check-cast v0, Lf6/h;

    invoke-direct {v1, v2, v3, v5, v0}, Lf7/a;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;Lf6/j;Lf6/h;)V

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ll6/f;->d(Ljava/lang/Object;Ll6/g;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :cond_3
    :goto_1
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 11

    instance-of v0, p2, Le7/b;

    iget-object v1, p0, Ll6/f;->c:Lw5/h;

    iget-object v2, p0, Ll6/f;->e:Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v3, Ll6/f;->h:Lv5/a;

    if-eqz v0, :cond_10

    check-cast p2, Le7/b;

    sget-object v0, Ll6/e;->a:[I

    iget-object v4, p2, Lu6/j;->b:Lu6/h;

    check-cast v4, Le7/a;

    iget-object v4, v4, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p2, Lu6/i;->c:I

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ll6/g;

    invoke-direct {v0, p2}, Ll6/g;-><init>(Le7/b;)V

    iget-wide v7, p0, Ll6/f;->g:J

    iput-wide v7, v0, Ll6/g;->d:J

    invoke-virtual {v2, v0, v5}, Lcom/fasterxml/jackson/databind/deser/j;->k(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v0}, Ll6/f;->f(Lio/netty/channel/ChannelHandlerContext;Ll6/g;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1
    instance-of v5, v4, Ll6/g;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Ll6/g;

    iget-object v6, v5, Ll6/g;->c:Le7/b;

    iget-object v7, v6, Lu6/j;->b:Lu6/h;

    check-cast v7, Le7/a;

    iget-object v7, v7, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v8, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v7, v8, :cond_4

    iget-wide v7, v5, Ll6/g;->d:J

    iget-wide v9, p0, Ll6/f;->g:J

    cmp-long p0, v7, v9

    if-nez p0, :cond_2

    iget-object p0, v1, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v0, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne p0, v0, :cond_3

    const-string p0, "QoS 2 PUBLISH ({}) must not be resent ({}) during the same connection"

    invoke-interface {v3, p0, v6, p2}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "QoS 2 PUBLISH must not be resent during the same connection"

    goto :goto_0

    :cond_2
    iput-wide v9, v5, Ll6/g;->d:J

    :cond_3
    invoke-static {p1, p2}, Ll6/f;->e(Lio/netty/channel/ChannelHandlerContext;Le7/b;)Z

    goto/16 :goto_6

    :cond_4
    iget-wide v7, v5, Ll6/g;->d:J

    iget-wide v9, p0, Ll6/f;->g:J

    cmp-long v1, v7, v9

    if-nez v1, :cond_5

    const-string p0, "QoS 2 PUBLISH ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    invoke-interface {v3, p0, p2, v6}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "QoS 2 PUBLISH must not carry the same packet identifier as a QoS 1 PUBLISH"

    :goto_0
    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ll6/f;->f(Lio/netty/channel/ChannelHandlerContext;Ll6/g;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_6
    invoke-static {p1, p2}, Ll6/f;->e(Lio/netty/channel/ChannelHandlerContext;Le7/b;)Z

    move-result p0

    if-eqz p0, :cond_15

    check-cast v4, Li7/a;

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p0

    invoke-interface {p1, v4, p0}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto/16 :goto_6

    :cond_7
    new-instance v0, Ll6/g;

    invoke-direct {v0, p2}, Ll6/g;-><init>(Le7/b;)V

    iget-wide v7, p0, Ll6/f;->g:J

    iput-wide v7, v0, Ll6/g;->d:J

    invoke-virtual {v2, v0, v5}, Lcom/fasterxml/jackson/databind/deser/j;->k(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {p0, p1, v0}, Ll6/f;->f(Lio/netty/channel/ChannelHandlerContext;Ll6/g;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_8
    instance-of v5, v4, Ll6/g;

    const-string v6, "QoS 1 PUBLISH ({}) must not carry the same packet identifier as a QoS 2 PUBLISH ({})"

    if-eqz v5, :cond_c

    move-object v5, v4

    check-cast v5, Ll6/g;

    iget-object v7, v5, Ll6/g;->c:Le7/b;

    iget-object v8, v7, Lu6/j;->b:Lu6/h;

    check-cast v8, Le7/a;

    iget-object v8, v8, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v9, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v8, v9, :cond_b

    iget-wide v5, v5, Ll6/g;->d:J

    iget-wide v8, p0, Ll6/f;->g:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_a

    iget-object p0, v1, Lw5/h;->a:Lcom/hivemq/client/mqtt/MqttVersion;

    sget-object v0, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne p0, v0, :cond_9

    const-string p0, "QoS 1 PUBLISH ({}) must not be resent ({}) during the same connection"

    invoke-interface {v3, p0, v7, p2}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "QoS 1 PUBLISH must not be resent during the same connection"

    goto :goto_2

    :cond_9
    invoke-static {p1, p2}, Ll6/f;->e(Lio/netty/channel/ChannelHandlerContext;Le7/b;)Z

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ll6/f;->f(Lio/netty/channel/ChannelHandlerContext;Ll6/g;)Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_b
    invoke-interface {v3, v6, p2, v7}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    invoke-interface {v3, v6, p2, v4}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "QoS 1 PUBLISH must not carry the same packet identifier as a QoS 2 PUBLISH"

    :goto_2
    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    new-instance p1, Ll6/g;

    invoke-direct {p1, p2}, Ll6/g;-><init>(Le7/b;)V

    iget p2, p0, Ll6/f;->f:I

    iget-object p0, p0, Ll6/f;->d:Ll6/c;

    iget-object v0, p0, Ll6/c;->c:Lv7/b;

    iget v1, v0, Lv7/b;->f:I

    if-lt v1, p2, :cond_f

    sget-object p2, Ll6/c;->j:Lv5/a;

    const-string v1, "QoS 0 publish message dropped."

    invoke-interface {p2, v1}, Lv5/a;->warn(Ljava/lang/String;)V

    iget-object p2, p0, Ll6/c;->d:Lv7/a;

    invoke-virtual {p2}, Lv7/a;->a()V

    invoke-virtual {p2}, Lv7/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll6/g;

    invoke-virtual {p2}, Lv7/a;->remove()V

    iget-object p2, v1, Lv7/w;->a:Ld/g0;

    :goto_3
    check-cast p2, Lv7/c;

    if-eqz p2, :cond_f

    iget-object v1, p2, Lv7/c;->c:Ljava/lang/Object;

    check-cast v1, Ll6/a;

    iget v2, v1, Ll6/a;->l:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ll6/a;->l:I

    if-nez v2, :cond_e

    iget v1, p0, Ll6/c;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ll6/c;->g:I

    :cond_e
    iget-object p2, p2, Ld/g0;->b:Ljava/lang/Object;

    check-cast p2, Ld/g0;

    goto :goto_3

    :cond_f
    invoke-virtual {p0, p1}, Ll6/c;->c(Ll6/g;)V

    invoke-virtual {p1}, Lv7/w;->b()Z

    move-result p0

    if-nez p0, :cond_15

    invoke-virtual {v0, p1}, Lv7/b;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_10
    instance-of p0, p2, Lk7/a;

    if-eqz p0, :cond_14

    check-cast p2, Lk7/a;

    iget p0, p2, Lu6/d;->e:I

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Li7/a;

    if-eqz v0, :cond_11

    new-instance p0, Lp1/o;

    invoke-direct {p0, p2}, Lp1/o;-><init>(Lk7/a;)V

    goto :goto_4

    :cond_11
    if-nez p0, :cond_12

    new-instance p0, Lp1/o;

    invoke-direct {p0, p2}, Lp1/o;-><init>(Lk7/a;)V

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;->PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iput-object p2, p0, Lp1/o;->b:Ljava/lang/Object;

    :goto_4
    iget-object p2, v1, Lw5/h;->d:Lx5/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lh7/a;

    iget-object v0, p0, Lp1/o;->a:Ljava/lang/Object;

    check-cast v0, Lk7/a;

    iget v0, v0, Lu6/d;->e:I

    iget-object v1, p0, Lp1/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iget-object v2, p0, Lp1/o;->c:Ljava/lang/Object;

    check-cast v2, Lf6/j;

    iget-object p0, p0, Lp1/o;->d:Ljava/lang/Object;

    check-cast p0, Lf6/h;

    invoke-direct {p2, v0, v1, v2, p0}, Lh7/a;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;Lf6/j;Lf6/h;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_6

    :cond_12
    move-object v0, p0

    check-cast v0, Ll6/g;

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Ll6/g;->c:Le7/b;

    iget-object v0, p0, Lu6/j;->b:Lu6/h;

    check-cast v0, Le7/a;

    iget-object v0, v0, Le7/a;->e:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v0, v1, :cond_13

    const-string v0, "PUBREL ({}) must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH ({})"

    invoke-interface {v3, v0, p2, p0}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "PUBREL must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH"

    goto :goto_5

    :cond_13
    const-string v0, "PUBREL ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    invoke-interface {v3, v0, p2, p0}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "PUBREL must not carry the same packet identifier as a QoS 1 PUBLISH"

    :goto_5
    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :cond_15
    :goto_6
    return-void
.end method

.method public final d(Ljava/lang/Object;Ll6/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Ll6/f;->e:Lcom/fasterxml/jackson/databind/deser/j;

    if-nez p1, :cond_0

    iget-object p1, p2, Ll6/g;->c:Le7/b;

    iget p1, p1, Lu6/i;->c:I

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_1
    iget-wide p1, p2, Ll6/g;->d:J

    iget-wide v1, p0, Ll6/f;->g:J

    cmp-long p0, p1, v1

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final f(Lio/netty/channel/ChannelHandlerContext;Ll6/g;)Z
    .locals 6

    iget v0, p0, Ll6/f;->f:I

    iget-object v1, p0, Ll6/f;->d:Ll6/c;

    iget-object v2, v1, Ll6/c;->e:Lv7/b;

    iget v3, v2, Lv7/b;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v3, v0, :cond_0

    move v0, v5

    goto :goto_3

    :cond_0
    invoke-virtual {v1, p2}, Ll6/c;->c(Ll6/g;)V

    iget v0, v2, Lv7/b;->f:I

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lv7/w;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Ll6/g;->f:I

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, v1, Ll6/c;->a:Ll6/f;

    invoke-virtual {v0, p2}, Ll6/f;->b(Ll6/g;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p2}, Lv7/b;->b(Ljava/lang/Object;)V

    :goto_2
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    return v4

    :cond_4
    iget p0, p0, Ll6/f;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Ll6/f;->h:Lv5/a;

    const-string v1, "Received more QoS 1 and/or 2 PUBLISH messages ({}) than allowed by receive maximum ({})"

    iget-object p2, p2, Ll6/g;->c:Le7/b;

    invoke-interface {v0, v1, p2, p0}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->RECEIVE_MAXIMUM_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "Received more QoS 1 and/or 2 PUBLISH messages than allowed by receive maximum"

    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return v5
.end method
