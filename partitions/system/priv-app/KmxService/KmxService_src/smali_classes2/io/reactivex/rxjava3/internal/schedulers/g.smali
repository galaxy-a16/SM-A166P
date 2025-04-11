.class public final Lio/reactivex/rxjava3/internal/schedulers/g;
.super Ljb/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lio/reactivex/rxjava3/disposables/a;

.field public final b:Lio/reactivex/rxjava3/internal/schedulers/f;

.field public final c:Lio/reactivex/rxjava3/internal/schedulers/h;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/f;)V
    .locals 2

    invoke-direct {p0}, Ljb/p;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->b:Lio/reactivex/rxjava3/internal/schedulers/f;

    new-instance v0, Lio/reactivex/rxjava3/disposables/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Lio/reactivex/rxjava3/disposables/a;

    iget-object v0, p1, Lio/reactivex/rxjava3/internal/schedulers/f;->c:Lio/reactivex/rxjava3/disposables/a;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, Lio/reactivex/rxjava3/internal/schedulers/i;->h:Lio/reactivex/rxjava3/internal/schedulers/h;

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lio/reactivex/rxjava3/internal/schedulers/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lio/reactivex/rxjava3/internal/schedulers/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/internal/schedulers/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/h;

    iget-object v1, p1, Lio/reactivex/rxjava3/internal/schedulers/f;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/h;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object p1, p1, Lio/reactivex/rxjava3/internal/schedulers/f;->c:Lio/reactivex/rxjava3/disposables/a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/a;->c(Lio/reactivex/rxjava3/disposables/b;)Z

    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->c:Lio/reactivex/rxjava3/internal/schedulers/h;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;
    .locals 6

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Lio/reactivex/rxjava3/disposables/a;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/disposables/a;->b:Z

    if-eqz v0, :cond_0

    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->c:Lio/reactivex/rxjava3/internal/schedulers/h;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Lio/reactivex/rxjava3/disposables/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/schedulers/k;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/c;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->a:Lio/reactivex/rxjava3/disposables/a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/a;->dispose()V

    sget-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/i;->i:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->c:Lio/reactivex/rxjava3/internal/schedulers/h;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/rxjava3/internal/schedulers/k;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/disposables/c;)Lio/reactivex/rxjava3/internal/schedulers/ScheduledRunnable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->b:Lio/reactivex/rxjava3/internal/schedulers/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->a:J

    add-long/2addr v1, v3

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->c:Lio/reactivex/rxjava3/internal/schedulers/h;

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/schedulers/h;->c:J

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->b:Lio/reactivex/rxjava3/internal/schedulers/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->a:J

    add-long/2addr v1, v3

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/g;->c:Lio/reactivex/rxjava3/internal/schedulers/h;

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/schedulers/h;->c:J

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/schedulers/f;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
