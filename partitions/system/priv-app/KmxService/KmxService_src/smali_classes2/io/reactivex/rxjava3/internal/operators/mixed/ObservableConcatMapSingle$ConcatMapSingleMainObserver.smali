.class final Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;
.super Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final STATE_ACTIVE:I = 0x1

.field static final STATE_INACTIVE:I = 0x0

.field static final STATE_RESULT_VALUE:I = 0x2

.field private static final serialVersionUID:J = -0x7ed83da4674d8da5L


# instance fields
.field final downstream:Ljb/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/m;"
        }
    .end annotation
.end field

.field final inner:Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver<",
            "TR;>;"
        }
    .end annotation
.end field

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final mapper:Llb/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/h;"
        }
    .end annotation
.end field

.field volatile state:I


# direct methods
.method public constructor <init>(Ljb/m;Llb/h;ILio/reactivex/rxjava3/internal/util/ErrorMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            "Llb/h;",
            "I",
            "Lio/reactivex/rxjava3/internal/util/ErrorMode;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;-><init>(ILio/reactivex/rxjava3/internal/util/ErrorMode;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->downstream:Ljb/m;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->mapper:Llb/h;

    new-instance p1, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-direct {p1, p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;-><init>(Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->inner:Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    return-void
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    return-void
.end method

.method public disposeInner()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->inner:Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver;->dispose()V

    return-void
.end method

.method public drain()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->downstream:Ljb/m;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errorMode:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->queue:Lio/reactivex/rxjava3/operators/f;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposed:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_2
    iget v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->state:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    sget-object v8, Lio/reactivex/rxjava3/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq v1, v8, :cond_3

    sget-object v8, Lio/reactivex/rxjava3/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    :cond_3
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Ljb/m;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->done:Z

    :try_start_0
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_5

    move v8, v4

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Ljb/m;)V

    return-void

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    :try_start_1
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->mapper:Llb/h;

    invoke-interface {v1, v9}, Llb/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "The mapper returned a null SingleSource"

    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/activity/b;->z(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->state:I

    throw v7

    :catchall_0
    move-exception v1

    invoke-static {v1}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    :goto_2
    invoke-virtual {v3, v1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, Li4/f;->L(Ljava/lang/Throwable;)V

    iput-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->disposed:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    goto :goto_2

    :cond_8
    const/4 v9, 0x2

    if-ne v6, v9, :cond_9

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    iput-object v7, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    invoke-interface {v0, v6}, Ljb/m;->onNext(Ljava/lang/Object;)V

    iput v8, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->state:I

    goto :goto_0

    :cond_9
    :goto_3
    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->errorMode:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ErrorMode;->END:Lio/reactivex/rxjava3/internal/util/ErrorMode;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ConcatMapXMainObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->state:I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->drain()V

    :cond_1
    return-void
.end method

.method public innerSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->item:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->state:I

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->drain()V

    return-void
.end method

.method public onSubscribeDownstream()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver;->downstream:Ljb/m;

    invoke-interface {v0, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    return-void
.end method
