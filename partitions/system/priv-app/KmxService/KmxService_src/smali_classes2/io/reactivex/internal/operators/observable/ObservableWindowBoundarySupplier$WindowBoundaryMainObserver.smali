.class final Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Leb/n;
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Leb/n;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/observable/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/r;"
        }
    .end annotation
.end field

.field static final NEXT_WINDOW:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1efd47eb1fc2a3a0L


# instance fields
.field final boundaryObserver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/r;",
            ">;"
        }
    .end annotation
.end field

.field final capacityHint:I

.field volatile done:Z

.field final downstream:Leb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/n;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final other:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Leb/m;",
            ">;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/a;"
        }
    .end annotation
.end field

.field final stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

.field upstream:Lio/reactivex/disposables/b;

.field window:Lio/reactivex/subjects/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/h;"
        }
    .end annotation
.end field

.field final windows:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/reactivex/internal/operators/observable/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/observable/r;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/observable/r;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->NEXT_WINDOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Leb/n;ILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/n;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Leb/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->downstream:Leb/n;

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->capacityHint:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->boundaryObserver:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lio/reactivex/internal/queue/a;

    invoke-direct {p1}, Lio/reactivex/internal/queue/a;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->queue:Lio/reactivex/internal/queue/a;

    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->other:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->disposeBoundary()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public disposeBoundary()V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->boundaryObserver:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->BOUNDARY_DISPOSED:Lio/reactivex/internal/operators/observable/r;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/disposables/b;

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->downstream:Leb/n;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->queue:Lio/reactivex/internal/queue/a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :goto_0
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->clear()V

    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    return-void

    :cond_2
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->clear()V

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v5, :cond_3

    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v5, v1}, Lio/reactivex/subjects/h;->onError(Ljava/lang/Throwable;)V

    :cond_3
    invoke-interface {v0, v1}, Leb/n;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/queue/a;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move v9, v3

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v5, :cond_6

    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v5}, Lio/reactivex/subjects/h;->onComplete()V

    :cond_6
    invoke-interface {v0}, Leb/n;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v5, v1}, Lio/reactivex/subjects/h;->onError(Ljava/lang/Throwable;)V

    :cond_8
    invoke-interface {v0, v1}, Leb/n;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v9, :cond_a

    neg-int v4, v4

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_a
    sget-object v7, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->NEXT_WINDOW:Ljava/lang/Object;

    if-eq v8, v7, :cond_b

    invoke-virtual {v5, v8}, Lio/reactivex/subjects/h;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v5, :cond_c

    iput-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v5}, Lio/reactivex/subjects/h;->onComplete()V

    :cond_c
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->capacityHint:I

    new-instance v7, Lio/reactivex/subjects/h;

    invoke-direct {v7, v5, p0}, Lio/reactivex/subjects/h;-><init>(ILjava/lang/Runnable;)V

    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->window:Lio/reactivex/subjects/h;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->other:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    const-string v8, "The other Callable returned a null ObservableSource"

    invoke-static {v5, v8}, Lfc/c;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Leb/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v8, Lio/reactivex/internal/operators/observable/r;

    invoke-direct {v8, p0}, Lio/reactivex/internal/operators/observable/r;-><init>(Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;)V

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->boundaryObserver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v8}, Leb/m;->subscribe(Leb/n;)V

    invoke-interface {v0, v7}, Leb/n;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v5}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    goto/16 :goto_0
.end method

.method public innerComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerNext(Lio/reactivex/internal/operators/observable/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/r;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->boundaryObserver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->queue:Lio/reactivex/internal/queue/a;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->disposeBoundary()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->disposeBoundary()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->queue:Lio/reactivex/internal/queue/a;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->downstream:Leb/n;

    invoke-interface {p1, p0}, Leb/n;->onSubscribe(Lio/reactivex/disposables/b;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->queue:Lio/reactivex/internal/queue/a;

    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/a;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->drain()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowBoundarySupplier$WindowBoundaryMainObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
