.class public final Lkotlinx/coroutines/t0;
.super Lkotlinx/coroutines/s0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e0;


# instance fields
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Lkotlinx/coroutines/s0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    sget-object p0, Lkotlinx/coroutines/internal/d;->a:Ljava/lang/reflect/Method;

    :try_start_0
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlinx/coroutines/internal/d;->a:Ljava/lang/reflect/Method;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;
    .locals 3

    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    instance-of v0, p0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p3, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "The task was rejected"

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p4, v0}, Lp9/d;->j(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    new-instance p0, Lkotlinx/coroutines/i0;

    invoke-direct {p0, v1}, Lkotlinx/coroutines/i0;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    goto :goto_2

    :cond_2
    sget-object p0, Lkotlinx/coroutines/b0;->h:Lkotlinx/coroutines/b0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/b0;->b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public final d(JLkotlinx/coroutines/h;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lr3/l;

    const/16 v3, 0xd

    invoke-direct {v1, p0, p3, v3}, Lr3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "The task was rejected"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p0, p3, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {p0, v0}, Lp9/d;->j(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    new-instance p0, Lkotlinx/coroutines/e;

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lkotlinx/coroutines/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    return-void

    :cond_2
    sget-object p0, Lkotlinx/coroutines/b0;->h:Lkotlinx/coroutines/b0;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/q0;->d(JLkotlinx/coroutines/h;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/t0;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/t0;

    iget-object p1, p1, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "The task was rejected"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lp9/d;->j(Lkotlin/coroutines/i;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lkotlinx/coroutines/h0;->b:Lkotlinx/coroutines/scheduling/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/d;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/t0;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
