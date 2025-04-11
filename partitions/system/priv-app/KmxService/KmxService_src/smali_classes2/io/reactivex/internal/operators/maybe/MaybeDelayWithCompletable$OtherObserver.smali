.class final Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Leb/b;
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
        "Leb/b;",
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x9c3039c7940ab61L


# instance fields
.field final downstream:Leb/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/h;"
        }
    .end annotation
.end field

.field final source:Leb/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/h;Leb/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/h;",
            "Leb/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->downstream:Leb/h;

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
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->downstream:Leb/h;

    invoke-interface {p0, p1}, Leb/h;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeDelayWithCompletable$OtherObserver;->downstream:Leb/h;

    invoke-interface {p1, p0}, Leb/h;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method
