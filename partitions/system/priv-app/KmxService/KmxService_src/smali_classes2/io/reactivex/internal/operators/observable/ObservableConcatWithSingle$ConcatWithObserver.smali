.class final Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Leb/n;
.implements Leb/u;
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Leb/n;",
        "Leb/u;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1b1d064eff7fbe78L


# instance fields
.field final downstream:Leb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/n;"
        }
    .end annotation
.end field

.field inSingle:Z

.field other:Leb/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/v;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/n;Leb/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/n;",
            "Leb/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Leb/v;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/b;

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/disposables/b;)Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->inSingle:Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Leb/v;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->other:Leb/v;

    check-cast v1, Leb/t;

    invoke-virtual {v1, p0}, Leb/t;->a(Leb/u;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    invoke-interface {p0, p1}, Leb/n;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    invoke-interface {p0, p1}, Leb/n;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->inSingle:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    invoke-interface {p1, p0}, Leb/n;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    invoke-interface {v0, p1}, Leb/n;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableConcatWithSingle$ConcatWithObserver;->downstream:Leb/n;

    invoke-interface {p0}, Leb/n;->onComplete()V

    return-void
.end method
