.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/b;",
        ">;",
        "Ljb/m;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10756d62aa142dccL


# instance fields
.field final downstream:Ljb/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/m;"
        }
    .end annotation
.end field

.field final index:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/b;"
        }
    .end annotation
.end field

.field won:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/b;ILjb/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/b;",
            "I",
            "Ljb/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->index:I

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Ljb/m;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Ljb/m;

    invoke-interface {p0}, Ljb/m;->onComplete()V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Ljb/m;

    invoke-interface {p0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->won:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableAmb$AmbInnerObserver;->downstream:Ljb/m;

    invoke-interface {p0, p1}, Ljb/m;->onNext(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/b;)Z

    return-void
.end method
