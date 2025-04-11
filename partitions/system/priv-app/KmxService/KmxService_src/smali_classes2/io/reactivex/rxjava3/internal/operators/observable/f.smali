.class public final Lio/reactivex/rxjava3/internal/operators/observable/f;
.super Lio/reactivex/rxjava3/internal/observers/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/rxjava3/disposables/b;


# instance fields
.field public final f:Llb/j;

.field public final g:J

.field public final h:J

.field public final i:Ljava/util/concurrent/TimeUnit;

.field public final j:Ljb/p;

.field public final k:Ljava/util/LinkedList;

.field public l:Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/observers/a;Llb/j;JJLjava/util/concurrent/TimeUnit;Ljb/p;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/queue/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/queue/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/rxjava3/internal/observers/c;-><init>(Lio/reactivex/rxjava3/observers/a;Lio/reactivex/rxjava3/internal/queue/a;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->f:Llb/j;

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->g:J

    iput-wide p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->h:J

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->i:Ljava/util/concurrent/TimeUnit;

    iput-object p8, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->l:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {v2, v1}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/c;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    invoke-static {v0, v1, v2, p0}, Lp9/d;->F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V

    :cond_1
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->e:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    invoke-interface {v0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
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
    .locals 10

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->l:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v2, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->l:Lio/reactivex/rxjava3/disposables/b;

    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->f:Llb/j;

    invoke-interface {v2}, Llb/j;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "The buffer supplied is null"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->h:J

    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->i:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Ljb/p;->c(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/e;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v2, v1}, Lio/reactivex/rxjava3/internal/operators/observable/e;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/f;Ljava/util/Collection;I)V

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->g:J

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, p0}, Ljb/p;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    invoke-static {p0, v1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Ljb/m;)V

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->f:Llb/j;

    invoke-interface {v0}, Llb/j;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The bufferSupplier returned a null buffer"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/observers/c;->d:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->j:Ljb/p;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/observable/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lio/reactivex/rxjava3/internal/operators/observable/e;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/f;Ljava/util/Collection;I)V

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->g:J

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p0}, Ljb/p;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/b;

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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/f;->dispose()V

    return-void
.end method
