.class public final Lj6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lio/netty/channel/Channel;

.field public final b:Lj6/b;

.field public final c:Lio/netty/util/concurrent/c;


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Lj6/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj6/f;->a:Lio/netty/channel/Channel;

    iput-object p2, p0, Lj6/f;->b:Lj6/b;

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    const-wide/16 v0, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v0, v1, p2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p1

    iput-object p1, p0, Lj6/f;->c:Lio/netty/util/concurrent/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lj6/f;->a:Lio/netty/channel/Channel;

    invoke-interface {p0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method
