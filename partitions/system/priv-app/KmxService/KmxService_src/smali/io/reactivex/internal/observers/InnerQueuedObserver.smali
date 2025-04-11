.class public final Lio/reactivex/internal/observers/InnerQueuedObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Leb/n;
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
        "Lio/reactivex/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4b2db39073b2fa8dL


# instance fields
.field volatile done:Z

.field fusionMode:I

.field final parent:Lio/reactivex/internal/observers/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/b;"
        }
    .end annotation
.end field

.field final prefetch:I

.field queue:Lib/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lib/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/observers/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/observers/b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    iput p2, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->prefetch:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public fusionMode()I
    .locals 0

    iget p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    return p0
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

.method public isDone()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    invoke-interface {v0, p0}, Lio/reactivex/internal/observers/b;->innerComplete(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/b;->innerError(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    invoke-interface {v0, p0, p1}, Lio/reactivex/internal/observers/b;->innerNext(Lio/reactivex/internal/observers/InnerQueuedObserver;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    invoke-interface {p0}, Lio/reactivex/internal/observers/b;->drain()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 2

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lib/b;

    if-eqz v0, :cond_1

    check-cast p1, Lib/b;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lib/c;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lib/g;

    iput-boolean v1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

    iget-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->parent:Lio/reactivex/internal/observers/b;

    invoke-interface {p1, p0}, Lio/reactivex/internal/observers/b;->innerComplete(Lio/reactivex/internal/observers/InnerQueuedObserver;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->fusionMode:I

    iput-object p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lib/g;

    return-void

    :cond_1
    iget p1, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->prefetch:I

    neg-int p1, p1

    if-gez p1, :cond_2

    new-instance v0, Lio/reactivex/internal/queue/b;

    neg-int p1, p1

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/b;-><init>(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lib/g;

    :cond_3
    return-void
.end method

.method public queue()Lib/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lib/g;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->queue:Lib/g;

    return-object p0
.end method

.method public setDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/observers/InnerQueuedObserver;->done:Z

    return-void
.end method
