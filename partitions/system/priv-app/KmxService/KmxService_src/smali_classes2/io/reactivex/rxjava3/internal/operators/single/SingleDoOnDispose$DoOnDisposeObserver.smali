.class final Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb/r;
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Llb/a;",
        ">;",
        "Ljb/r;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x771fa8727d6491e8L


# instance fields
.field final downstream:Ljb/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/r;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>(Ljb/r;Llb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/r;",
            "Llb/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->downstream:Ljb/r;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->downstream:Ljb/r;

    invoke-interface {p0, p1}, Ljb/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->downstream:Ljb/r;

    invoke-interface {p1, p0}, Ljb/r;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver;->downstream:Ljb/r;

    invoke-interface {p0, p1}, Ljb/r;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
