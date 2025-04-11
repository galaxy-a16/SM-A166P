.class public final Lio/reactivex/rxjava3/internal/operators/observable/c;
.super Lio/reactivex/rxjava3/internal/observers/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/b;


# instance fields
.field public final f:Llb/j;

.field public final g:J

.field public final h:Ljava/util/concurrent/TimeUnit;

.field public final i:I

.field public final j:Z

.field public final k:Ljb/p;

.field public l:Ljava/util/Collection;

.field public m:Lio/reactivex/rxjava3/disposables/b;

.field public n:Lio/reactivex/rxjava3/disposables/b;

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JLjava/util/concurrent/TimeUnit;IZLjb/p;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/c;-><init>(Lio/reactivex/rxjava3/observers/a;Lio/reactivex/rxjava3/internal/queue/a;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->f:Llb/j;

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->g:J

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->h:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->i:I

    iput-boolean p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->j:Z

    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->n:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    return p0
.end method

.method public final l(Ljb/m;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljb/m;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {v1, v0}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-static {v0, v1, p0, p0}, Lp9/d;->F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V

    :cond_0
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
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {v0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

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
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->i:I

    if-ge p1, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->p:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->m:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_2
    invoke-virtual {p0, v0, p0}, Lio/reactivex/rxjava3/internal/observers/c;->n(Ljava/util/Collection;Lio/reactivex/rxjava3/disposables/b;)V

    :try_start_1
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->f:Llb/j;

    invoke-interface {p1}, Llb/j;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The buffer supplied is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter p0

    :try_start_2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->q:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->q:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->j:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->g:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->h:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, Ljb/p;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->m:Lio/reactivex/rxjava3/disposables/b;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {v0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/c;->dispose()V

    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 9

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->n:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v1, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->n:Lio/reactivex/rxjava3/disposables/b;

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->f:Llb/j;

    invoke-interface {v1}, Llb/j;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The buffer supplied is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->g:J

    iget-object v8, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->h:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    move-wide v4, v6

    invoke-virtual/range {v2 .. v8}, Ljb/p;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->m:Lio/reactivex/rxjava3/disposables/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    invoke-static {v1, v0}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Ljb/m;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->k:Ljb/p;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->f:Llb/j;

    invoke-interface {v0}, Llb/j;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->p:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->q:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/c;->l:Ljava/util/Collection;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1, p0}, Lio/reactivex/rxjava3/internal/observers/c;->n(Ljava/util/Collection;Lio/reactivex/rxjava3/disposables/b;)V

    return-void

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/c;->dispose()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {p0, v0}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
