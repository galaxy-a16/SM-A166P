.class public final Lio/reactivex/rxjava3/internal/operators/observable/d;
.super Lio/reactivex/rxjava3/internal/observers/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/b;


# instance fields
.field public final f:Llb/j;

.field public final g:J

.field public final h:Ljava/util/concurrent/TimeUnit;

.field public final i:Ljb/q;

.field public j:Lio/reactivex/rxjava3/disposables/b;

.field public k:Ljava/util/Collection;

.field public final l:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JLjava/util/concurrent/TimeUnit;Ljb/q;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/c;-><init>(Lio/reactivex/rxjava3/observers/a;Lio/reactivex/rxjava3/internal/queue/a;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->f:Llb/j;

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->g:J

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->h:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->i:Ljb/q;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->j:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Ljb/m;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {p0, p2}, Ljb/m;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onComplete()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-static {v0, v2, v1, p0}, Lp9/d;->F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {v0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 8

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->j:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v1, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->j:Lio/reactivex/rxjava3/disposables/b;

    :try_start_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->f:Llb/j;

    invoke-interface {p1}, Llb/j;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The buffer supplied is null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->i:Ljb/q;

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->g:J

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->h:Ljava/util/concurrent/TimeUnit;

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Ljb/q;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p0

    invoke-static {p1, p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/b;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/d;->dispose()V

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Ljb/m;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->f:Llb/j;

    invoke-interface {v0}, Llb/j;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->k:Ljava/util/Collection;

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/d;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v1}, Lio/reactivex/rxjava3/internal/operators/observable/d;->l(Ljb/m;Ljava/lang/Object;)V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-interface {v4, v1}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/c;->m()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v4, v3, p0, p0}, Lp9/d;->F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {v1, v0}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/d;->dispose()V

    return-void
.end method
