.class public abstract Lkotlinx/coroutines/internal/j;
.super Lkotlinx/coroutines/internal/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/b;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->d()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/j;->e()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->p()Lkotlinx/coroutines/internal/v;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    sget-object v2, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/n;->g()Lkotlinx/coroutines/internal/n;

    :cond_4
    return-void
.end method

.method public final b(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;
    .locals 5

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/m;

    iget-object v1, v0, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/n;

    :goto_1
    iget-object v2, v1, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    instance-of v3, v2, Lkotlinx/coroutines/internal/u;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Lkotlinx/coroutines/internal/u;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/internal/u;->b(Lkotlinx/coroutines/internal/u;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v4

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lkotlinx/coroutines/internal/m;->b:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    check-cast v2, Lkotlinx/coroutines/internal/n;

    :goto_2
    sget-object v0, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/internal/z;

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    iget-object v1, v2, Lkotlinx/coroutines/internal/n;->_next:Ljava/lang/Object;

    if-ne v1, p1, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/b;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    return-object v4

    :cond_5
    instance-of v3, v1, Lkotlinx/coroutines/internal/u;

    if-eqz v3, :cond_7

    check-cast v1, Lkotlinx/coroutines/internal/u;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/internal/u;->b(Lkotlinx/coroutines/internal/u;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/internal/j;->c(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    instance-of v0, v1, Lkotlinx/coroutines/internal/v;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/internal/v;

    iget-object v0, v0, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->l()V

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/internal/l;

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/internal/n;

    invoke-direct {v0, v2, v3, p0}, Lkotlinx/coroutines/internal/l;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/j;)V

    sget-object v3, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/internal/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v0, Lkotlinx/coroutines/internal/t;->g:Lkotlinx/coroutines/internal/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v0, :cond_0

    return-object v4

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlinx/coroutines/internal/n;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    throw p0
.end method

.method public abstract c(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
.end method

.method public abstract d()Lkotlinx/coroutines/internal/n;
.end method

.method public abstract e()Lkotlinx/coroutines/internal/n;
.end method

.method public f(Lkotlinx/coroutines/internal/l;)Ljava/lang/Object;
    .locals 3

    check-cast p0, Lkotlinx/coroutines/internal/m;

    iget-object v0, p1, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/internal/n;

    sget-object v1, Lkotlinx/coroutines/internal/m;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lkotlinx/coroutines/internal/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p1, p1, Lkotlinx/coroutines/internal/l;->b:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public g(Lkotlinx/coroutines/internal/n;)V
    .locals 0

    return-void
.end method
