.class final Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Leb/h;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Leb/h;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x95bf75d78cfb0efL


# instance fields
.field final disposer:Lgb/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgb/g;"
        }
    .end annotation
.end field

.field final downstream:Leb/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/h;"
        }
    .end annotation
.end field

.field final eager:Z

.field upstream:Lio/reactivex/disposables/b;


# direct methods
.method public constructor <init>(Leb/h;Ljava/lang/Object;Lgb/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/h;",
            "TD;",
            "Lgb/g;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    iput-object p3, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lgb/g;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    return-void
.end method

.method public disposeResourceAfter()V
    .locals 1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lgb/g;

    invoke-interface {p0, v0}, Lgb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lgb/g;

    invoke-interface {v1, v0}, Lgb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {p0, v0}, Leb/h;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {v0}, Leb/h;->onComplete()V

    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lgb/g;

    invoke-interface {v1, v0}, Lgb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {v0, p1}, Leb/h;->onError(Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {p1, p0}, Leb/h;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->upstream:Lio/reactivex/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposer:Lgb/g;

    invoke-interface {v1, v0}, Lgb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->downstream:Leb/h;

    invoke-interface {v0, p1}, Leb/h;->onSuccess(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->eager:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeUsing$UsingObserver;->disposeResourceAfter()V

    :cond_2
    return-void
.end method
