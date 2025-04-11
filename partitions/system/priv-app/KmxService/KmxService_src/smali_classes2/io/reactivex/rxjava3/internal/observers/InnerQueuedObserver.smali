.class public final Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb/m;
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/b;",
        ">;",
        "Ljb/m;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b2db39073b2fa8dL


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final parent:Lio/reactivex/rxjava3/internal/observers/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/observers/b;"
        }
    .end annotation
.end field

.field final prefetch:I

.field queue:Lio/reactivex/rxjava3/operators/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/observers/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/observers/b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    iput p2, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->prefetch:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/disposables/b;

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex/rxjava3/disposables/b;)Z

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->done:Z

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    invoke-interface {v0, p0}, Lio/reactivex/rxjava3/internal/observers/b;->innerComplete(Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    invoke-interface {v0, p0, p1}, Lio/reactivex/rxjava3/internal/observers/b;->innerError(Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->fusionMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    invoke-interface {v0, p0, p1}, Lio/reactivex/rxjava3/internal/observers/b;->innerNext(Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/internal/observers/b;->drain()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 2

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lio/reactivex/rxjava3/operators/b;

    if-eqz v0, :cond_1

    check-cast p1, Lio/reactivex/rxjava3/operators/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/operators/c;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->queue:Lio/reactivex/rxjava3/operators/f;

    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->done:Z

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/rxjava3/internal/observers/b;

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/internal/observers/b;->innerComplete(Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->queue:Lio/reactivex/rxjava3/operators/f;

    return-void

    :cond_1
    iget p1, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->prefetch:I

    neg-int p1, p1

    if-gez p1, :cond_2

    new-instance v0, Lio/reactivex/rxjava3/operators/g;

    neg-int p1, p1

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/operators/g;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->queue:Lio/reactivex/rxjava3/operators/f;

    :cond_3
    return-void
.end method

.method public queue()Lio/reactivex/rxjava3/operators/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/operators/f;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->queue:Lio/reactivex/rxjava3/operators/f;

    return-object p0
.end method

.method public setDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/observers/InnerQueuedObserver;->done:Z

    return-void
.end method
