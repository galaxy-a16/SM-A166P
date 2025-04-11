.class public final Lio/reactivex/subjects/h;
.super Lio/reactivex/subjects/g;
.source "SourceFile"


# instance fields
.field public final a:Lio/reactivex/internal/queue/b;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Z

.field public volatile e:Z

.field public volatile f:Z

.field public g:Ljava/lang/Throwable;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

.field public j:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/reactivex/subjects/g;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/b;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lfc/c;->m(ILjava/lang/String;)V

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/subjects/h;->d:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/h;)V

    iput-object p1, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/subjects/g;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/b;

    const-string v1, "capacityHint"

    invoke-static {p1, v1}, Lfc/c;->m(ILjava/lang/String;)V

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/subjects/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/subjects/h;->d:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {p1, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/h;)V

    iput-object p1, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "onTerminate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Leb/n;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/subjects/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Leb/n;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object v0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/subjects/h;->c()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Only a single observer allowed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Leb/n;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Lio/reactivex/subjects/h;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leb/n;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_11

    iget-boolean v2, p0, Lio/reactivex/subjects/h;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    iget-boolean v5, p0, Lio/reactivex/subjects/h;->d:Z

    xor-int/2addr v5, v1

    move v6, v1

    :cond_1
    iget-boolean v7, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz v7, :cond_2

    iget-object p0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-boolean v7, p0, Lio/reactivex/subjects/h;->f:Z

    if-eqz v5, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lio/reactivex/subjects/h;->g:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    iget-object v9, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lio/reactivex/internal/queue/b;->clear()V

    invoke-interface {v0, v8}, Leb/n;->onError(Ljava/lang/Throwable;)V

    move v8, v1

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    if-eqz v8, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-interface {v0, v4}, Leb/n;->onNext(Ljava/lang/Object;)V

    if-eqz v7, :cond_6

    iget-object v1, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/subjects/h;->g:Ljava/lang/Throwable;

    if-eqz p0, :cond_5

    invoke-interface {v0, p0}, Leb/n;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_5
    invoke-interface {v0}, Leb/n;->onComplete()V

    goto/16 :goto_5

    :cond_6
    iget-object v7, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_7
    iget-object v5, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    iget-boolean v2, p0, Lio/reactivex/subjects/h;->d:Z

    xor-int/lit8 v6, v2, 0x1

    move v2, v1

    move v7, v2

    :cond_8
    :goto_2
    iget-boolean v8, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz v8, :cond_9

    iget-object p0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lio/reactivex/internal/queue/b;->clear()V

    goto :goto_5

    :cond_9
    iget-boolean v8, p0, Lio/reactivex/subjects/h;->f:Z

    iget-object v9, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {v9}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a

    move v10, v1

    goto :goto_3

    :cond_a
    move v10, v3

    :goto_3
    if-eqz v8, :cond_f

    if-eqz v6, :cond_d

    if-eqz v2, :cond_d

    iget-object v2, p0, Lio/reactivex/subjects/h;->g:Ljava/lang/Throwable;

    if-eqz v2, :cond_b

    iget-object v8, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lio/reactivex/internal/queue/b;->clear()V

    invoke-interface {v0, v2}, Leb/n;->onError(Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_4
    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :cond_d
    if-eqz v10, :cond_f

    iget-object v1, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/subjects/h;->g:Ljava/lang/Throwable;

    if-eqz p0, :cond_e

    invoke-interface {v0, p0}, Leb/n;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    invoke-interface {v0}, Leb/n;->onComplete()V

    goto :goto_5

    :cond_f
    if-eqz v10, :cond_10

    iget-object v8, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v7, v7

    invoke-virtual {v8, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_8

    :goto_5
    return-void

    :cond_10
    invoke-interface {v0, v9}, Leb/n;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lio/reactivex/subjects/h;->i:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v2, v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lio/reactivex/subjects/h;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leb/n;

    goto/16 :goto_0
.end method

.method public final onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/h;->f:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/h;->b()V

    invoke-virtual {p0}, Lio/reactivex/subjects/h;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/reactivex/subjects/h;->g:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/subjects/h;->f:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/h;->b()V

    invoke-virtual {p0}, Lio/reactivex/subjects/h;->c()V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/h;->a:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/subjects/h;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/h;->f:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lio/reactivex/subjects/h;->e:Z

    if-eqz p0, :cond_1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_1
    return-void
.end method
