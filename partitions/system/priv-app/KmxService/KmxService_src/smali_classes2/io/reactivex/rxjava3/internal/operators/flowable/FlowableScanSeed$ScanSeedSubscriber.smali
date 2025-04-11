.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Ljb/f;
.implements Lvc/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljb/f;",
        "Lvc/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18a87226297dfae5L


# instance fields
.field final accumulator:Llb/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/c;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field consumed:I

.field volatile done:Z

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final limit:I

.field final prefetch:I

.field final queue:Lio/reactivex/rxjava3/operators/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/e;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field upstream:Lvc/d;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvc/c;Llb/c;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "Llb/c;",
            "TR;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lvc/c;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Llb/c;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    iput p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->prefetch:I

    shr-int/lit8 p1, p4, 0x2

    sub-int p1, p4, p1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->limit:I

    new-instance p1, Lio/reactivex/rxjava3/operators/SpscArrayQueue;

    invoke-direct {p1, p4}, Lio/reactivex/rxjava3/operators/SpscArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {p1, p3}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lvc/d;

    invoke-interface {v0}, Lvc/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {p0}, Lio/reactivex/rxjava3/operators/f;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lvc/c;

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/rxjava3/operators/e;

    iget v3, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->limit:I

    iget v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->consumed:I

    const/4 v5, 0x1

    move v6, v5

    :cond_1
    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    :cond_2
    :goto_0
    cmp-long v13, v11, v7

    if-eqz v13, :cond_8

    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->cancelled:Z

    if-eqz v14, :cond_3

    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    return-void

    :cond_3
    iget-boolean v14, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v14, :cond_4

    iget-object v15, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v15, :cond_4

    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    invoke-interface {v1, v15}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_5

    move/from16 v17, v5

    goto :goto_1

    :cond_5
    move/from16 v17, v16

    :goto_1
    if-eqz v14, :cond_6

    if-eqz v17, :cond_6

    invoke-interface {v1}, Lvc/c;->onComplete()V

    return-void

    :cond_6
    if-eqz v17, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1, v15}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_2

    iget-object v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lvc/d;

    int-to-long v13, v3

    invoke-interface {v4, v13, v14}, Lvc/d;->request(J)V

    move/from16 v4, v16

    goto :goto_0

    :cond_8
    :goto_2
    if-nez v13, :cond_a

    iget-boolean v7, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v7, :cond_a

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    if-eqz v7, :cond_9

    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->clear()V

    invoke-interface {v1, v7}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    invoke-interface {v2}, Lio/reactivex/rxjava3/operators/f;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Lvc/c;->onComplete()V

    return-void

    :cond_a
    cmp-long v7, v11, v9

    if-eqz v7, :cond_b

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v7, v11, v12}, Lh3/a;->H(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_b
    iput v4, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->consumed:I

    neg-int v6, v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->accumulator:Llb/c;

    invoke-interface {v1, v0, p1}, Llb/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The accumulator returned a null value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->value:Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->queue:Lio/reactivex/rxjava3/operators/e;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lvc/d;

    invoke-interface {v0}, Lvc/d;->cancel()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lvc/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lvc/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lvc/d;Lvc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->upstream:Lvc/d;

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->downstream:Lvc/c;

    invoke-interface {v0, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->prefetch:I

    add-int/lit8 p0, p0, -0x1

    int-to-long v0, p0

    invoke-interface {p1, v0, v1}, Lvc/d;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lh3/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableScanSeed$ScanSeedSubscriber;->drain()V

    :cond_0
    return-void
.end method
