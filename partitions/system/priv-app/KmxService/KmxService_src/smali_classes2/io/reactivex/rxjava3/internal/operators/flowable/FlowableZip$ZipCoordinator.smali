.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
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
        "Lvc/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21ca630c444d714fL


# instance fields
.field volatile cancelled:Z

.field final current:[Ljava/lang/Object;

.field final delayErrors:Z

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final zipper:Llb/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/h;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvc/c;Llb/h;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "Llb/h;",
            "IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lvc/c;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Llb/h;

    iput-boolean p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    new-array p1, p3, [Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    new-instance p5, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    invoke-direct {p5, p0, p4}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 3

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->downstream:Lvc/c;

    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    array-length v4, v3

    iget-object v5, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    const/4 v7, 0x1

    :cond_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide/16 v12, 0x0

    :goto_0
    cmp-long v14, v8, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v14, :cond_c

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    :goto_2
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryTerminateConsumer(Lvc/c;)V

    return-void

    :cond_3
    move/from16 v6, v16

    move/from16 v17, v6

    :goto_3
    if-ge v6, v4, :cond_a

    aget-object v0, v3, v6

    aget-object v18, v5, v6

    if-nez v18, :cond_9

    iget-boolean v10, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/rxjava3/operators/f;

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    invoke-static {v10}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v10}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v15

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    move-object v0, v15

    :goto_4
    if-nez v0, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move/from16 v11, v16

    :goto_5
    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    goto :goto_1

    :cond_7
    if-nez v11, :cond_8

    aput-object v0, v5, v6

    goto :goto_6

    :cond_8
    const/16 v17, 0x1

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    if-eqz v17, :cond_b

    goto :goto_7

    :cond_b
    :try_start_1
    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Llb/h;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Llb/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "The zipper returned a null value"

    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v2, v0}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v12, v10

    invoke-static {v5, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    iget-object v3, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_c
    :goto_7
    if-nez v14, :cond_14

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    goto/16 :goto_1

    :cond_e
    move/from16 v6, v16

    :goto_8
    if-ge v6, v4, :cond_14

    aget-object v0, v3, v6

    aget-object v10, v5, v6

    if-nez v10, :cond_13

    iget-boolean v10, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/rxjava3/operators/f;

    if-eqz v0, :cond_10

    :try_start_2
    invoke-interface {v0}, Lio/reactivex/rxjava3/operators/f;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v10, v0

    invoke-static {v10}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, v10}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    iget-boolean v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_f

    goto/16 :goto_1

    :cond_f
    move-object v0, v15

    const/4 v10, 0x1

    goto :goto_9

    :cond_10
    move-object v0, v15

    :goto_9
    if-nez v0, :cond_11

    const/4 v11, 0x1

    goto :goto_a

    :cond_11
    move/from16 v11, v16

    :goto_a
    if-eqz v10, :cond_12

    if-eqz v11, :cond_12

    goto/16 :goto_1

    :cond_12
    if-nez v11, :cond_13

    aput-object v0, v5, v6

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_14
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_16

    array-length v0, v3

    move/from16 v6, v16

    :goto_b
    if-ge v6, v0, :cond_15

    aget-object v10, v3, v6

    invoke-virtual {v10, v12, v13}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->request(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v0, v8, v10

    if-eqz v0, :cond_16

    iget-object v0, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_16
    neg-int v0, v7

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_1

    return-void
.end method

.method public error(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowableOrReport(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lh3/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    :cond_0
    return-void
.end method

.method public subscribe([Lvc/b;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvc/b;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipSubscriber;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/rxjava3/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lvc/b;->subscribe(Lvc/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
