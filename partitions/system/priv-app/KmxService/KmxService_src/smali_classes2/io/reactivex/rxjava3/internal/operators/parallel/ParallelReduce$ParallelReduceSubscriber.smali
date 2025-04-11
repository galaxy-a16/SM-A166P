.class final Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;
.super Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x71ce22a1fe47cbf8L


# instance fields
.field accumulator:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field done:Z

.field final reducer:Llb/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvc/c;Ljava/lang/Object;Llb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "TR;",
            "Llb/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;-><init>(Lvc/c;)V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->reducer:Llb/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;->cancel()V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;->upstream:Lvc/d;

    invoke-interface {p0}, Lvc/d;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->complete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->downstream:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->done:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->reducer:Llb/c;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Llb/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The reducer returned a null value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->accumulator:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelReduce$ParallelReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lvc/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;->upstream:Lvc/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lvc/d;Lvc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/subscribers/DeferredScalarSubscriber;->upstream:Lvc/d;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/subscriptions/DeferredScalarSubscription;->downstream:Lvc/c;

    invoke-interface {v0, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lvc/d;->request(J)V

    :cond_0
    return-void
.end method
