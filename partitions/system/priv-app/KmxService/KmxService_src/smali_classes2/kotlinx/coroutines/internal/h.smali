.class public final Lkotlinx/coroutines/internal/h;
.super Lkotlinx/coroutines/t;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlinx/coroutines/e0;


# instance fields
.field public final c:Lkotlinx/coroutines/t;

.field public final d:I

.field public final synthetic e:Lkotlinx/coroutines/e0;

.field public final f:Lkotlinx/coroutines/internal/o;

.field public final g:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/scheduling/l;I)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/t;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->c:Lkotlinx/coroutines/t;

    iput p2, p0, Lkotlinx/coroutines/internal/h;->d:I

    instance-of p2, p1, Lkotlinx/coroutines/e0;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/e0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/c0;->a:Lkotlinx/coroutines/e0;

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->e:Lkotlinx/coroutines/e0;

    new-instance p1, Lkotlinx/coroutines/internal/o;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/o;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->f:Lkotlinx/coroutines/internal/o;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/h;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/h;->e:Lkotlinx/coroutines/e0;

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/e0;->b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;

    move-result-object p0

    return-object p0
.end method

.method public final d(JLkotlinx/coroutines/h;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/h;->e:Lkotlinx/coroutines/e0;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/e0;->d(JLkotlinx/coroutines/h;)V

    return-void
.end method

.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 3

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->f:Lkotlinx/coroutines/internal/o;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/o;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget p2, p0, Lkotlinx/coroutines/internal/h;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/h;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v2, :cond_1

    monitor-exit p1

    move v0, v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/2addr p2, v0

    iput p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->c:Lkotlinx/coroutines/t;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/t;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->f:Lkotlinx/coroutines/internal/o;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v3, v2}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->c:Lkotlinx/coroutines/t;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/t;->x(Lkotlin/coroutines/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/internal/h;->c:Lkotlinx/coroutines/t;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/t;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/internal/h;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget-object v2, p0, Lkotlinx/coroutines/internal/h;->f:Lkotlinx/coroutines/internal/o;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/o;->c()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 3

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->f:Lkotlinx/coroutines/internal/o;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/o;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget p2, p0, Lkotlinx/coroutines/internal/h;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    iget v2, p0, Lkotlinx/coroutines/internal/h;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v2, :cond_1

    monitor-exit p1

    move v0, v1

    goto :goto_1

    :cond_1
    :try_start_1
    iget p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I

    add-int/2addr p2, v0

    iput p2, p0, Lkotlinx/coroutines/internal/h;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lkotlinx/coroutines/internal/h;->c:Lkotlinx/coroutines/t;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/t;->t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
