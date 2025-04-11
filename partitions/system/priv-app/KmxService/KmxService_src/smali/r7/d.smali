.class public final Lr7/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lv5/a;

.field public static final e:Lr7/d;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/function/BiFunction;

.field public final c:Lio/netty/channel/ChannelFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lr7/d;

    invoke-static {v0}, Lv5/b;->a(Ljava/lang/Class;)Lv5/a;

    move-result-object v0

    sput-object v0, Lr7/d;->d:Lv5/a;

    const-string v0, "io.netty.channel.epoll.Epoll"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lfc/e;->j()Lr7/d;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Lr7/d;

    new-instance v2, Lr7/b;

    invoke-direct {v2, v1}, Lr7/b;-><init>(I)V

    new-instance v1, Lcom/google/firebase/concurrent/h;

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-direct {v0, v2, v1}, Lr7/d;-><init>(Lr7/b;Lcom/google/firebase/concurrent/h;)V

    :goto_1
    sput-object v0, Lr7/d;->e:Lr7/d;

    return-void
.end method

.method public constructor <init>(Lr7/b;Lcom/google/firebase/concurrent/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr7/d;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lr7/d;->b:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lr7/d;->c:Lio/netty/channel/ChannelFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lr7/b;Lcom/google/firebase/concurrent/h;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lr7/d;-><init>(Lr7/b;Lcom/google/firebase/concurrent/h;)V

    return-void
.end method

.method public static a()Lr7/d;
    .locals 4

    new-instance v0, Lr7/d;

    new-instance v1, Lr7/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr7/b;-><init>(I)V

    new-instance v2, Lcom/google/firebase/concurrent/h;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lr7/d;-><init>(Lr7/b;Lcom/google/firebase/concurrent/h;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b(ILjava/util/concurrent/Executor;)Lio/netty/channel/EventLoop;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr7/c;

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    iget-object v0, p0, Lr7/d;->b:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lio/netty/util/concurrent/ThreadPerTaskExecutor;

    new-instance v2, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-string v3, "com.hivemq.client.mqtt"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/ThreadPerTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lio/netty/channel/MultithreadEventLoopGroup;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/netty/channel/MultithreadEventLoopGroup;

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v1

    if-eq v1, p1, :cond_2

    sget-object v1, Lr7/d;->d:Lv5/a;

    const-string v2, "Tried to use a different amount of Netty threads for the provided event loop. Using {} threads instead of {}"

    invoke-virtual {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v2, v3, p1}, Lv5/a;->a(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lr7/d;->b:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v0, p1

    check-cast v0, Lio/netty/channel/MultithreadEventLoopGroup;

    :cond_2
    :goto_1
    new-instance p1, Lr7/c;

    invoke-direct {p1, v0}, Lr7/c;-><init>(Lio/netty/channel/MultithreadEventLoopGroup;)V

    iget-object v0, p0, Lr7/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, v0, Lr7/c;->a:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {p2}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result p2

    if-eq p2, p1, :cond_4

    sget-object p2, Lr7/d;->d:Lv5/a;

    const-string v1, "Tried to use a different amount of Netty threads for the same executor. Using {} threads instead of {}"

    iget-object v2, v0, Lr7/c;->a:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {v2}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->executorCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, v2, p1}, Lv5/a;->a(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_4
    iget p1, v0, Lr7/c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lr7/c;->b:I

    :goto_2
    iget-object p1, v0, Lr7/c;->a:Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-virtual {p1}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/util/concurrent/Executor;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr7/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr7/c;

    iget v1, v0, Lr7/c;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lr7/c;->b:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lr7/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p1, Lio/netty/channel/MultithreadEventLoopGroup;

    if-nez p1, :cond_0

    iget-object v1, v0, Lr7/c;->a:Lio/netty/channel/MultithreadEventLoopGroup;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
