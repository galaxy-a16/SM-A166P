.class public Lio/netty/channel/ThreadPerChannelEventLoopGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final activeChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final childArgs:[Ljava/lang/Object;

.field private final childTerminationListener:Lio/netty/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/a;"
        }
    .end annotation
.end field

.field final executor:Ljava/util/concurrent/Executor;

.field final idleChildren:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/channel/EventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private final maxChannels:I

.field private volatile shuttingDown:Z

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "*>;"
        }
    .end annotation
.end field

.field private final tooManyChannels:Lio/netty/channel/ChannelException;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    new-instance v0, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    new-instance v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;

    invoke-direct {v0, p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup$1;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/a;

    const-string v0, "maxChannels"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    if-nez p2, :cond_0

    new-instance p2, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p2, v0}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lio/netty/util/internal/EmptyArrays;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    iput-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    :goto_0
    iput p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    iput-object p2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->executor:Ljava/util/concurrent/Executor;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "too many channels (max: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/netty/channel/ChannelException;->newStatic(Ljava/lang/String;Ljava/lang/Throwable;)Lio/netty/channel/ChannelException;

    move-result-object p1

    const-class p2, Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    const-string p3, "nextChild()"

    invoke-static {p1, p2, p3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lio/netty/channel/ChannelException;

    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    return-void
.end method

.method public varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    invoke-direct {v0, p2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)Lio/netty/util/concurrent/Promise;
    .locals 0

    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method private nextChild()Lio/netty/channel/EventLoop;
    .locals 3

    iget-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    if-nez v0, :cond_2

    iget v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->maxChannels:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->tooManyChannels:Lio/netty/channel/ChannelException;

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->childTerminationListener:Lio/netty/util/concurrent/a;

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    :cond_2
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "shutting down"

    invoke-direct {p0, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    iget-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, p1, v3

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p0

    return p0

    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, p1, v3

    cmp-long v5, v3, v1

    if-gtz v5, :cond_4

    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p0

    return p0

    :cond_4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p0

    return p0
.end method

.method public isShutdown()Z
    .locals 3

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isShuttingDown()Z
    .locals 3

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    invoke-interface {v1}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->isShuttingDown()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isTerminated()Z
    .locals 3

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_1
    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/ReadOnlyIterator;

    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/netty/util/internal/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public varargs newChild([Ljava/lang/Object;)Lio/netty/channel/EventLoop;
    .locals 0

    new-instance p1, Lio/netty/channel/ThreadPerChannelEventLoop;

    invoke-direct {p1, p0}, Lio/netty/channel/ThreadPerChannelEventLoop;-><init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V

    return-object p1
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object p0

    return-object p0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 2

    .line 1
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object p0

    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-direct {v0, p1, p0}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    invoke-interface {p0, v0}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    sget-object v1, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v0, p1, v1, p0}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, p0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p2
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->nextChild()Lio/netty/channel/EventLoop;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    return-object p1
.end method

.method public shutdown()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/EventLoop;

    invoke-interface {v1}, Lio/netty/channel/EventLoop;->shutdown()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->shuttingDown:Z

    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/netty/channel/EventLoop;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/netty/channel/EventLoop;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lio/netty/channel/EventLoop;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->isTerminated()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object p0
.end method
