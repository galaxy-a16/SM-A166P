.class public abstract Lkotlinx/coroutines/q0;
.super Lkotlinx/coroutines/r0;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/e0;


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;

.field private volatile synthetic _isCompleted:I

.field private volatile synthetic _queue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue"

    const-class v1, Lkotlinx/coroutines/q0;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/q0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/r0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/q0;->_isCompleted:I

    return-void
.end method

.method public static final h0(Lkotlinx/coroutines/q0;)Z
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/q0;->_isCompleted:I

    return p0
.end method


# virtual methods
.method public final A0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final B0(JLkotlinx/coroutines/o0;)V
    .locals 4

    iget v0, p0, Lkotlinx/coroutines/q0;->_isCompleted:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/p0;

    if-nez v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/q0;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/p0;

    invoke-direct {v3, p1, p2}, Lkotlinx/coroutines/p0;-><init>(J)V

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/p0;

    :cond_1
    invoke-virtual {p3, p1, p2, v0, p0}, Lkotlinx/coroutines/o0;->b(JLkotlinx/coroutines/p0;Lkotlinx/coroutines/q0;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 p0, 0x2

    if-ne v0, p0, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected result"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/r0;->b0(JLkotlinx/coroutines/o0;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/p0;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/c0;->a:[Lkotlinx/coroutines/o0;

    if-eqz v0, :cond_5

    aget-object v0, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :cond_5
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_6
    :goto_1
    if-ne v1, p3, :cond_7

    goto :goto_2

    :cond_7
    move v2, p2

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->J()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_8

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lv4/b;->M(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;

    move-result-object p0

    return-object p0
.end method

.method public final d(JLkotlinx/coroutines/h;)V
    .locals 3

    invoke-static {p1, p2}, Lkotlinx/coroutines/a0;->j(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Lkotlinx/coroutines/m0;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Lkotlinx/coroutines/m0;-><init>(Lkotlinx/coroutines/q0;JLkotlinx/coroutines/h;)V

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/q0;->B0(JLkotlinx/coroutines/o0;)V

    new-instance p0, Lkotlinx/coroutines/e;

    const/4 p1, 0x1

    invoke-direct {p0, v2, p1}, Lkotlinx/coroutines/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    :cond_0
    return-void
.end method

.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/q0;->w0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .locals 5

    sget-object v0, Lkotlinx/coroutines/p1;->a:Ljava/lang/ThreadLocal;

    sget-object v0, Lkotlinx/coroutines/p1;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/q0;->_isCompleted:I

    :cond_0
    iget-object v2, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    sget-object v3, Lkotlinx/coroutines/a0;->c:Lkotlinx/coroutines/internal/z;

    if-nez v2, :cond_1

    sget-object v2, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/internal/q;

    if-eqz v4, :cond_2

    check-cast v2, Lkotlinx/coroutines/internal/q;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/q;->b()Z

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Lkotlinx/coroutines/internal/q;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v0}, Lkotlinx/coroutines/internal/q;-><init>(IZ)V

    move-object v4, v2

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)I

    sget-object v4, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/q0;->z0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/p0;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/c0;->d()Lkotlinx/coroutines/o0;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/coroutines/r0;->b0(JLkotlinx/coroutines/o0;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public w0(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/q0;->x0(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->J()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-eq p1, p0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlinx/coroutines/b0;->h:Lkotlinx/coroutines/b0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/b0;->w0(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x0(Ljava/lang/Runnable;)Z
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/q0;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/q;

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/q;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    sget-object v1, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/q;->e()Lkotlinx/coroutines/internal/q;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    sget-object v3, Lkotlinx/coroutines/a0;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v3, :cond_7

    return v2

    :cond_7
    new-instance v2, Lkotlinx/coroutines/internal/q;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/q;-><init>(IZ)V

    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/q;->a(Ljava/lang/Object;)I

    sget-object v3, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public final y0()Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/r0;->e:Lj0/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, Lj0/b;->a:I

    iget v0, v0, Lj0/b;->b:I

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/p0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c0;->b()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, p0, Lkotlinx/coroutines/internal/q;

    if-eqz v0, :cond_5

    check-cast p0, Lkotlinx/coroutines/internal/q;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/q;->d()Z

    move-result v1

    goto :goto_3

    :cond_5
    sget-object v0, Lkotlinx/coroutines/a0;->c:Lkotlinx/coroutines/internal/z;

    if-ne p0, v0, :cond_6

    :goto_2
    move v1, v2

    :cond_6
    :goto_3
    return v1
.end method

.method public final z0()J
    .locals 11

    invoke-virtual {p0}, Lkotlinx/coroutines/r0;->O()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/p0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/c0;->b()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :cond_1
    monitor-enter v0

    :try_start_0
    iget-object v8, v0, Lkotlinx/coroutines/internal/c0;->a:[Lkotlinx/coroutines/o0;

    if-eqz v8, :cond_2

    aget-object v8, v8, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v8, v4

    :goto_0
    if-nez v8, :cond_3

    monitor-exit v0

    move-object v8, v4

    goto :goto_4

    :cond_3
    :try_start_1
    iget-wide v9, v8, Lkotlinx/coroutines/o0;->a:J

    sub-long v9, v6, v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_4

    move v9, v3

    goto :goto_1

    :cond_4
    move v9, v5

    :goto_1
    if-eqz v9, :cond_5

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/q0;->x0(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_2

    :cond_5
    move v8, v5

    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual {v0, v5}, Lkotlinx/coroutines/internal/c0;->c(I)Lkotlinx/coroutines/o0;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    move-object v8, v4

    :goto_3
    monitor-exit v0

    :goto_4
    if-nez v8, :cond_1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_7
    :goto_5
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    instance-of v6, v0, Lkotlinx/coroutines/internal/q;

    if-eqz v6, :cond_a

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/internal/q;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/q;->f()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lkotlinx/coroutines/internal/q;->g:Lkotlinx/coroutines/internal/z;

    if-eq v7, v8, :cond_9

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_7

    :cond_9
    sget-object v7, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/q;->e()Lkotlinx/coroutines/internal/q;

    move-result-object v6

    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    sget-object v6, Lkotlinx/coroutines/a0;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, v6, :cond_b

    :goto_6
    move-object v7, v4

    goto :goto_7

    :cond_b
    sget-object v6, Lkotlinx/coroutines/q0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v7, v0

    check-cast v7, Ljava/lang/Runnable;

    :goto_7
    if-eqz v7, :cond_c

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_c
    iget-object v0, p0, Lkotlinx/coroutines/r0;->e:Lj0/b;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget v8, v0, Lj0/b;->a:I

    iget v0, v0, Lj0/b;->b:I

    if-ne v8, v0, :cond_e

    goto :goto_8

    :cond_e
    move v3, v5

    :goto_8
    if-eqz v3, :cond_f

    :goto_9
    move-wide v8, v6

    goto :goto_a

    :cond_f
    move-wide v8, v1

    :goto_a
    cmp-long v0, v8, v1

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    iget-object v0, p0, Lkotlinx/coroutines/q0;->_queue:Ljava/lang/Object;

    if-eqz v0, :cond_12

    instance-of v3, v0, Lkotlinx/coroutines/internal/q;

    if-eqz v3, :cond_11

    check-cast v0, Lkotlinx/coroutines/internal/q;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/q;->d()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_c

    :cond_11
    sget-object p0, Lkotlinx/coroutines/a0;->c:Lkotlinx/coroutines/internal/z;

    if-ne v0, p0, :cond_17

    goto :goto_b

    :cond_12
    iget-object p0, p0, Lkotlinx/coroutines/q0;->_delayed:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/p0;

    if-eqz p0, :cond_16

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/c0;->a:[Lkotlinx/coroutines/o0;

    if-eqz v0, :cond_13

    aget-object v4, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_13
    monitor-exit p0

    if-nez v4, :cond_14

    goto :goto_b

    :cond_14
    iget-wide v3, v4, Lkotlinx/coroutines/o0;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p0, v3, v1

    if-gez p0, :cond_15

    goto :goto_c

    :cond_15
    move-wide v1, v3

    goto :goto_c

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_16
    :goto_b
    move-wide v1, v6

    :cond_17
    :goto_c
    return-wide v1
.end method
