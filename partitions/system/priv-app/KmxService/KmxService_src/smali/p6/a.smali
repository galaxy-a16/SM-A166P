.class public abstract Lp6/a;
.super Lh6/e;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field public b:Lio/netty/util/concurrent/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh6/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lp6/a;->b:Lio/netty/util/concurrent/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lp6/a;->b:Lio/netty/util/concurrent/c;

    :cond_0
    return-void
.end method

.method public abstract d()J
.end method

.method public abstract e()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p0}, Lp6/a;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v0, v1, v2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p1

    iput-object p1, p0, Lp6/a;->b:Lio/netty/util/concurrent/c;

    :cond_0
    return-void
.end method

.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1

    check-cast p1, Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, p1}, Lp6/a;->g(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lp6/a;->e()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object v1

    invoke-virtual {p0}, Lp6/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lp9/d;->E(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lp6/a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lp9/d;->p(Lio/netty/channel/Channel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
