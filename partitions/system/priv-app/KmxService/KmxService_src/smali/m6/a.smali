.class public final Lm6/a;
.super Lh6/h;
.source "SourceFile"

# interfaces
.implements Leb/g;
.implements Ljava/lang/Runnable;
.implements Lio/netty/util/concurrent/GenericFutureListener;


# static fields
.field public static final m:Lv5/a;

.field public static final n:Landroidx/recyclerview/widget/s0;


# instance fields
.field public final c:Lw5/h;

.field public final d:Lm6/b;

.field public final e:Lorg/jctools/queues/SpscUnboundedArrayQueue;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:Lv7/w;

.field public final h:Ll6/l;

.field public final i:Lcom/fasterxml/jackson/databind/deser/j;

.field public j:I

.field public k:Lvc/d;

.field public l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lm6/a;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Lm6/a;->m:Lv5/a;

    new-instance v0, Landroidx/recyclerview/widget/s0;

    new-instance v1, Ll6/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ll6/d;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/s0;-><init>(Ll6/d;)V

    sput-object v0, Lm6/a;->n:Landroidx/recyclerview/widget/s0;

    return-void
.end method

.method public constructor <init>(Lw5/h;)V
    .locals 3

    invoke-direct {p0}, Lh6/h;-><init>()V

    new-instance v0, Lorg/jctools/queues/SpscUnboundedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lm6/a;->e:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lv7/w;

    invoke-direct {v0}, Lv7/w;-><init>()V

    iput-object v0, p0, Lm6/a;->g:Lv7/w;

    new-instance v0, Ll6/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll6/l;-><init>(II)V

    iput-object v0, p0, Lm6/a;->h:Ll6/l;

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/j;

    sget-object v1, Lm6/a;->n:Landroidx/recyclerview/widget/s0;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/j;-><init>(Landroidx/recyclerview/widget/s0;I)V

    iput-object v0, p0, Lm6/a;->i:Lcom/fasterxml/jackson/databind/deser/j;

    iput-object p1, p0, Lm6/a;->c:Lw5/h;

    new-instance p1, Lm6/b;

    invoke-direct {p1}, Lm6/b;-><init>()V

    iput-object p1, p0, Lm6/a;->d:Lm6/b;

    return-void
.end method


# virtual methods
.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lf7/a;

    iget-object p0, p0, Lm6/a;->i:Lcom/fasterxml/jackson/databind/deser/j;

    if-eqz v0, :cond_0

    check-cast p2, Lf7/a;

    iget p2, p2, Lu6/d;->e:I

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "PUBACK contained unknown packet identifier"

    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p2, Li7/a;

    if-eqz v0, :cond_6

    check-cast p2, Li7/a;

    iget p2, p2, Lu6/d;->e:I

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/j;->f:Ljava/io/Serializable;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/j;->e:Ljava/lang/Object;

    const-class v2, Lv7/v;

    if-ne v1, v2, :cond_4

    :goto_0
    check-cast v0, Lv7/v;

    iget v1, v0, Lv7/v;->a:I

    if-ne v1, p2, :cond_2

    iget-object v0, v0, Lv7/v;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lv7/v;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/ToIntFunction;

    invoke-interface {p0, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_5

    goto :goto_2

    :cond_4
    check-cast p0, Landroidx/recyclerview/widget/s0;

    iget-object p0, p0, Landroidx/recyclerview/widget/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/ToIntFunction;

    invoke-interface {p0, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "PUBREC contained unknown packet identifier"

    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    instance-of v0, p2, Lh7/a;

    if-eqz v0, :cond_7

    check-cast p2, Lh7/a;

    iget p2, p2, Lu6/d;->e:I

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/j;->l(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p2, "PUBCOMP contained unknown packet identifier"

    invoke-static {p0, p1, p2}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_3
    return-void
.end method

.method public final channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    instance-of p0, p2, Ljava/io/IOException;

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final onComplete()V
    .locals 1

    sget-object p0, Lm6/a;->m:Lv5/a;

    const-string v0, "MqttPublishFlowables is global and must never complete. This must not happen and is a bug."

    invoke-interface {p0, v0}, Lv5/a;->error(Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    sget-object p0, Lm6/a;->m:Lv5/a;

    const-string v0, "MqttPublishFlowables is global and must never error. This must not happen and is a bug."

    invoke-interface {p0, v0, p1}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iget-object p1, p0, Lm6/a;->e:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lm6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iput-object p1, p0, Lm6/a;->k:Lvc/d;

    return-void
.end method

.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lh6/h;->b:Z

    iget-object v1, p0, Lm6/a;->e:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    if-nez v0, :cond_3

    iget-object v0, p0, Lm6/a;->c:Lw5/h;

    iget-boolean v2, v0, Lw5/h;->q:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lw5/h;->b()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    invoke-static {}, Lv9/a;->E()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    :cond_1
    invoke-virtual {v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    iget-object v0, p0, Lm6/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    iget v2, p0, Lm6/a;->j:I

    iget-object p0, p0, Lm6/a;->i:Lcom/fasterxml/jackson/databind/deser/j;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/j;->p()I

    move-result p0

    sub-int/2addr v2, p0

    if-lez v2, :cond_5

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
