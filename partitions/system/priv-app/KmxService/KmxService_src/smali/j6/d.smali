.class public final synthetic Lj6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lj6/d;->a:I

    iput-object p1, p0, Lj6/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj6/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj6/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lj6/d;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 8

    iget v0, p0, Lj6/d;->a:I

    iget-object v1, p0, Lj6/d;->e:Ljava/lang/Object;

    iget-object v2, p0, Lj6/d;->d:Ljava/lang/Object;

    iget-object v3, p0, Lj6/d;->c:Ljava/lang/Object;

    iget-object p0, p0, Lj6/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Lj6/g;

    check-cast v3, Lio/netty/channel/Channel;

    check-cast v2, Lj6/b;

    check-cast v1, Lj6/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lj6/f;

    invoke-direct {p1, v3, v2}, Lj6/f;-><init>(Lio/netty/channel/Channel;Lj6/b;)V

    iput-object p1, p0, Lj6/g;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v1}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    iget-object p0, v2, Lj6/b;->c:Ls7/a;

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Ls7/a;->a:Leb/b;

    invoke-interface {p0, v0}, Leb/b;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lj6/g;

    check-cast v3, Lio/netty/channel/Channel;

    move-object v4, v2

    check-cast v4, Lj6/b;

    move-object v5, v1

    check-cast v5, Lj6/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v3

    check-cast p1, Lio/netty/channel/socket/DuplexChannel;

    invoke-interface {p1}, Lio/netty/channel/socket/DuplexChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object p1

    new-instance v0, Lj6/d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lj6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v5}, Lj6/g;->b(Lio/netty/channel/Channel;Lj6/c;)V

    iget-object p0, v4, Lj6/b;->c:Ls7/a;

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    iget-object p0, p0, Ls7/a;->a:Leb/b;

    invoke-interface {p0, v0}, Leb/b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :goto_2
    check-cast p0, Lio/netty/channel/EventLoop;

    move-object v0, v3

    check-cast v0, Lw5/h;

    move-object v4, v2

    check-cast v4, Lx6/a;

    move-object v5, v1

    check-cast v5, Li6/b;

    sget-object v1, Li6/d;->c:Lv5/a;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v3, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v3, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v1, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Li6/d;->e(Lw5/h;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lx6/a;Li6/b;Lio/netty/channel/EventLoop;)V

    goto :goto_3

    :cond_2
    new-instance p1, Landroidx/work/impl/e0;

    const/4 v7, 0x2

    move-object v1, p1

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Landroidx/work/impl/e0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
