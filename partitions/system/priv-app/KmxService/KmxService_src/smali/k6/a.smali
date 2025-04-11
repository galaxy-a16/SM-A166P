.class public final Lk6/a;
.super Lh6/e;
.source "SourceFile"

# interfaces
.implements Lr7/a;
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field public final b:J

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lio/netty/util/concurrent/c;


# direct methods
.method public constructor <init>(IJJ)V
    .locals 4

    invoke-direct {p0}, Lh6/e;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lk6/a;->b:J

    iput-wide p2, p0, Lk6/a;->c:J

    iput-wide p4, p0, Lk6/a;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lio/netty/channel/ChannelHandlerContext;Lj6/c;)V
    .locals 0

    iget-object p1, p0, Lk6/a;->h:Lio/netty/util/concurrent/c;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lk6/a;->h:Lio/netty/util/concurrent/c;

    :cond_0
    return-void
.end method

.method public final channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lk6/a;->d:J

    instance-of v0, p2, Ld7/b;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lk6/a;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lk6/a;->c:J

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public final handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 6

    iput-object p1, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lk6/a;->d:J

    iget-wide v4, p0, Lk6/a;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lk6/a;->b:J

    sub-long/2addr v2, v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v2, v3, v0}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p1

    iput-object p1, p0, Lk6/a;->h:Lio/netty/util/concurrent/c;

    return-void
.end method

.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk6/a;->f:Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lk6/a;->e:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lk6/a;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    const-string v0, "Timeout while writing PINGREQ"

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lk6/a;->g:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    const-string v0, "Timeout while waiting for PINGRESP"

    :goto_0
    invoke-static {p0, v0}, Lp9/d;->p(Lio/netty/channel/Channel;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk6/a;->f:Z

    iput-boolean v0, p0, Lk6/a;->g:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lk6/a;->d:J

    iget-wide v5, p0, Lk6/a;->c:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-wide v5, p0, Lk6/a;->b:J

    sub-long v3, v5, v3

    const-wide/16 v7, 0x3e8

    cmp-long v7, v3, v7

    if-lez v7, :cond_3

    iput-boolean v0, p0, Lk6/a;->e:Z

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v3, v4, v1}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object v0

    iput-object v0, p0, Lk6/a;->h:Lio/netty/util/concurrent/c;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk6/a;->e:Z

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v5, v6, v3}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object v0

    iput-object v0, p0, Lk6/a;->h:Lio/netty/util/concurrent/c;

    iput-wide v1, p0, Lk6/a;->c:J

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Ld7/a;->b:Ld7/a;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_1
    return-void
.end method
