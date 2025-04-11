.class final Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;
.super Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;
.source "SourceFile"

# interfaces
.implements Ljb/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable<",
        "TT;>;",
        "Ljb/r;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x348c813e921c2851L


# instance fields
.field upstream:Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>(Ljb/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;-><init>(Ljb/m;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-super {p0}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->dispose()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleToObservable$SingleToObservableObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Ljb/m;

    invoke-interface {p1, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    return-void
.end method
