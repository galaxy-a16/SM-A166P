.class public final Lo6/e;
.super Lh6/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final l:Lv5/a;

.field public static final m:Landroidx/recyclerview/widget/s0;


# instance fields
.field public final c:Lw5/h;

.field public final d:Ll6/b;

.field public final e:Lv7/w;

.field public final f:Ll6/l;

.field public g:I

.field public final h:Lcom/fasterxml/jackson/databind/deser/j;

.field public i:Lo6/b;

.field public j:Lo6/b;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lo6/e;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Lo6/e;->l:Lv5/a;

    new-instance v0, Landroidx/recyclerview/widget/s0;

    new-instance v1, Ll6/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ll6/d;-><init>(I)V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lo6/e;->m:Landroidx/recyclerview/widget/s0;

    return-void
.end method

.method public constructor <init>(Lw5/h;Ll6/b;)V
    .locals 3

    invoke-direct {p0}, Lh6/h;-><init>()V

    new-instance v0, Lv7/w;

    invoke-direct {v0}, Lv7/w;-><init>()V

    iput-object v0, p0, Lo6/e;->e:Lv7/w;

    const/4 v0, 0x1

    iput v0, p0, Lo6/e;->g:I

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v1, Lo6/e;->m:Landroidx/recyclerview/widget/s0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;I)V

    iput-object v0, p0, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    iput-object p1, p0, Lo6/e;->c:Lw5/h;

    iput-object p2, p0, Lo6/e;->d:Ll6/b;

    new-instance p1, Ll6/l;

    const p2, 0xfff6

    const v0, 0xffff

    invoke-direct {p1, p2, v0}, Ll6/l;-><init>(II)V

    iput-object p1, p0, Lo6/e;->f:Ll6/l;

    return-void
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lm7/a;

    iget-object v3, v0, Lo6/e;->f:Ll6/l;

    iget-object v4, v0, Lo6/e;->e:Lv7/w;

    sget-object v5, Lo6/e;->l:Lv5/a;

    iget-object v6, v0, Lo6/e;->d:Ll6/b;

    iget-object v8, v0, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz v2, :cond_8

    check-cast v1, Lm7/a;

    iget v2, v1, Lu6/f;->d:I

    invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo6/b;

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "Unknown packet identifier for SUBACK"

    goto :goto_0

    :cond_0
    instance-of v8, v2, Lo6/c;

    if-nez v8, :cond_1

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "SUBACK received for an UNSUBSCRIBE"

    :goto_0
    invoke-static {v0, v1, v2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1
    check-cast v2, Lo6/c;

    iget-object v8, v2, Lo6/c;->d:Ll7/b;

    iget-object v10, v8, Ll7/b;->c:Lv7/t;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v1, Lu6/f;->e:Lv7/t;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eq v10, v12, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {v11}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->allErrors(Lv7/t;)Z

    move-result v9

    iget v10, v2, Lo6/c;->e:I

    invoke-virtual {v6, v8, v10, v11}, Ll6/b;->b(Ll7/b;ILv7/t;)V

    iget-object v6, v2, Lo6/c;->f:Lo6/d;

    if-eqz v6, :cond_7

    if-nez v7, :cond_4

    if-nez v9, :cond_4

    move-object v7, v6

    check-cast v7, Lh/e;

    invoke-virtual {v7}, Lh/e;->s()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v6, v1}, Lo6/d;->onSuccess(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-string v1, "Subscribe was successful but the SubAck flow has been cancelled"

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    const-string v7, "Count of Reason Codes in SUBACK does not match count of subscriptions in SUBSCRIBE"

    goto :goto_2

    :cond_5
    const-string v7, "SUBACK contains only Error Codes"

    :goto_2
    move-object v8, v6

    check-cast v8, Lh/e;

    invoke-virtual {v8}, Lh/e;->s()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    invoke-direct {v5, v1, v7}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lt8/a;Ljava/lang/String;)V

    invoke-interface {v6, v5}, Lo6/d;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    const-string v1, " but the SubAck flow has been cancelled"

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v5, v1}, Lv5/a;->warn(Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-virtual {v4, v2}, Lv7/w;->c(Ld/g0;)V

    iget v1, v2, Lo6/b;->c:I

    invoke-virtual {v3, v1}, Ll6/l;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lo6/e;->run()V

    goto/16 :goto_11

    :cond_8
    instance-of v2, v1, Lp7/a;

    if-eqz v2, :cond_1a

    check-cast v1, Lp7/a;

    iget v2, v1, Lu6/f;->d:I

    invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo6/b;

    if-nez v2, :cond_9

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "Unknown packet identifier for UNSUBACK"

    goto :goto_5

    :cond_9
    instance-of v8, v2, Lo6/g;

    if-nez v8, :cond_a

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "UNSUBACK received for a SUBSCRIBE"

    :goto_5
    invoke-static {v0, v1, v2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_a
    check-cast v2, Lo6/g;

    iget-object v8, v2, Lo6/g;->d:Lo7/b;

    iget-object v10, v8, Lo7/b;->c:Lv7/t;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v1, Lu6/f;->e:Lv7/t;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-eq v10, v12, :cond_b

    const/4 v10, 0x1

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    :goto_6
    invoke-static {v11}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->allErrors(Lv7/t;)Z

    move-result v12

    sget-object v13, Lv7/m;->a:Lv7/m;

    iget-object v14, v2, Lo6/g;->e:Lo6/a;

    if-eq v11, v13, :cond_f

    if-nez v10, :cond_c

    if-nez v12, :cond_c

    goto :goto_8

    :cond_c
    if-eqz v10, :cond_d

    const-string v6, "Count of Reason Codes in UNSUBACK does not match count of Topic Filters in UNSUBSCRIBE"

    goto :goto_7

    :cond_d
    const-string v6, "UNSUBACK contains only Error Codes"

    :goto_7
    invoke-virtual {v14}, Lh/e;->s()Z

    move-result v7

    if-nez v7, :cond_e

    new-instance v5, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;

    invoke-direct {v5, v1, v6}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5UnsubAckException;-><init>(Lv8/a;Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Lo6/a;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    :cond_e
    const-string v1, " but the UnsubAck flow has been cancelled"

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_f

    :cond_f
    :goto_8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    if-ne v11, v13, :cond_10

    const/4 v12, 0x1

    goto :goto_9

    :cond_10
    const/4 v12, 0x0

    :goto_9
    iget-object v13, v8, Lo7/b;->c:Lv7/t;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_18

    if-nez v12, :cond_12

    invoke-interface {v11, v10}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    invoke-virtual {v15}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->isError()Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_a

    :cond_11
    move-object/from16 v16, v6

    goto :goto_e

    :cond_12
    :goto_a
    invoke-interface {v13, v10}, Lv7/t;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf6/c;

    iget-object v15, v6, Ll6/b;->a:Ll6/l;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lf6/e;->h(Lf6/c;)Lf6/e;

    move-result-object v7

    iget-object v9, v15, Ll6/l;->a:Ljava/lang/Object;

    check-cast v9, Ll6/k;

    :goto_b
    if-eqz v9, :cond_17

    invoke-virtual {v7}, Lf6/e;->f()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual {v9, v7}, Ll6/k;->i(Lf6/e;)Ll6/k;

    move-result-object v9

    goto :goto_b

    :cond_13
    iget-object v0, v7, Lu7/a;->a:[B

    array-length v0, v0

    move-object/from16 v16, v6

    iget v6, v7, Lf6/e;->e:I

    if-eq v6, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    :goto_c
    const/4 v6, 0x0

    if-eqz v0, :cond_15

    iget-object v0, v9, Ll6/k;->f:Lv7/w;

    invoke-static {v0, v13}, Ll6/k;->k(Lv7/w;Lf6/c;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object v6, v9, Ll6/k;->f:Lv7/w;

    goto :goto_d

    :cond_15
    iget-object v0, v9, Ll6/k;->e:Lv7/w;

    invoke-static {v0, v13}, Ll6/k;->k(Lv7/w;Lf6/c;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object v6, v9, Ll6/k;->e:Lv7/w;

    :cond_16
    :goto_d
    invoke-virtual {v9}, Ll6/k;->b()V

    move-object/from16 v0, p0

    move-object v9, v6

    move-object/from16 v6, v16

    goto :goto_b

    :cond_17
    move-object/from16 v16, v6

    invoke-virtual {v15}, Ll6/l;->a()V

    :goto_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v16

    goto :goto_9

    :cond_18
    invoke-virtual {v14}, Lh/e;->s()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v14, v1}, Lo6/a;->onSuccess(Ljava/lang/Object;)V

    goto :goto_10

    :cond_19
    const-string v1, "Unsubscribe was successful but the UnsubAck flow has been cancelled"

    :goto_f
    invoke-interface {v5, v1}, Lv5/a;->warn(Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v4, v2}, Lv7/w;->c(Ld/g0;)V

    iget v0, v2, Lo6/b;->c:I

    invoke-virtual {v3, v0}, Ll6/l;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lo6/e;->run()V

    goto :goto_11

    :cond_1a
    invoke-interface/range {p1 .. p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_11
    return-void
.end method

.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo6/e;->j:Lo6/b;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lo6/e;->e:Lv7/w;

    invoke-virtual {p1, v0}, Lv7/w;->c(Ld/g0;)V

    iget-object p1, p0, Lo6/e;->j:Lo6/b;

    iget p1, p1, Lo6/b;->c:I

    iget-object v0, p0, Lo6/e;->f:Ll6/l;

    invoke-virtual {v0, p1}, Ll6/l;->d(I)V

    iget-object p1, p0, Lo6/e;->j:Lo6/b;

    iget p1, p1, Lo6/b;->c:I

    iget-object v0, p0, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    iget-object p1, p0, Lo6/e;->j:Lo6/b;

    invoke-virtual {p1}, Lo6/b;->g()Lo6/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lo6/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lo6/e;->j:Lo6/b;

    instance-of p2, p1, Lo6/c;

    if-eqz p2, :cond_1

    check-cast p1, Lo6/c;

    iget-object p2, p1, Lo6/c;->d:Ll7/b;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    new-instance v1, Lv7/i;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lp9/d;->G(ILjava/lang/Object;)V

    invoke-direct {v1, v0}, Lv7/i;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lo6/e;->d:Ll6/b;

    iget p1, p1, Lo6/c;->e:I

    invoke-virtual {v0, p2, p1, v1}, Ll6/b;->b(Ll7/b;ILv7/t;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lo6/e;->j:Lo6/b;

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final run()V
    .locals 10

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lo6/e;->i:Lo6/b;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_7

    iget-object v3, p0, Lo6/e;->h:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/j;->p()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_7

    iget v4, v1, Lo6/b;->c:I

    const/4 v5, -0x1

    if-nez v4, :cond_4

    iget-object v4, p0, Lo6/e;->f:Ll6/l;

    iget-object v6, v4, Ll6/l;->a:Ljava/lang/Object;

    check-cast v6, Lj0/b;

    iget v7, v6, Lj0/b;->a:I

    iget v8, v6, Lj0/b;->b:I

    if-ne v7, v8, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v7, 0x1

    iput v9, v6, Lj0/b;->a:I

    if-ne v9, v8, :cond_2

    iget-object v6, v6, Lj0/b;->c:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lj0/b;

    if-eqz v8, :cond_2

    check-cast v6, Lj0/b;

    iput-object v6, v4, Ll6/l;->a:Ljava/lang/Object;

    :cond_2
    :goto_1
    if-ne v7, v5, :cond_3

    sget-object p0, Lo6/e;->l:Lv5/a;

    const-string v0, "No Packet Identifier available for (UN)SUBSCRIBE. This must not happen and is a bug."

    invoke-interface {p0, v0}, Lv5/a;->error(Ljava/lang/String;)V

    return-void

    :cond_3
    iput v7, v1, Lo6/b;->c:I

    :cond_4
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/j;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lo6/e;->i:Lo6/b;

    instance-of v3, v3, Lo6/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Lo6/c;

    iget-boolean v6, p0, Lo6/e;->k:Z

    if-eqz v6, :cond_5

    iget v5, v3, Lo6/c;->e:I

    :cond_5
    iget v6, v3, Lo6/b;->c:I

    iget-object v7, v3, Lo6/c;->d:Ll7/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ll7/a;

    invoke-direct {v8, v7, v6, v5}, Ll7/a;-><init>(Ll7/b;II)V

    iput-object v3, p0, Lo6/e;->j:Lo6/b;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iput-object v4, p0, Lo6/e;->j:Lo6/b;

    goto :goto_2

    :cond_6
    move-object v3, v1

    check-cast v3, Lo6/g;

    iget v5, v3, Lo6/b;->c:I

    iget-object v6, v3, Lo6/g;->d:Lo7/b;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lo7/a;

    invoke-direct {v7, v6, v5}, Lo7/a;-><init>(Lo7/b;I)V

    iput-object v3, p0, Lo6/e;->j:Lo6/b;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v0, v7, v3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    iput-object v4, p0, Lo6/e;->j:Lo6/b;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Ld/g0;->b:Ljava/lang/Object;

    check-cast v1, Ld/g0;

    check-cast v1, Lo6/b;

    iput-object v1, p0, Lo6/e;->i:Lo6/b;

    goto/16 :goto_0

    :cond_7
    if-lez v2, :cond_8

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_8
    return-void
.end method
