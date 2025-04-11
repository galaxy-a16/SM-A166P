.class final Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Leb/g;
.implements Lvc/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Leb/g;",
        "Lvc/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21b3dc811227de88L


# instance fields
.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field produced:J

.field final queue:Lio/reactivex/internal/queue/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/b;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final size:J

.field final skip:J

.field upstream:Lvc/d;

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/processors/g;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lvc/c;JJI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lvc/c;

    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-direct {p1, p6}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/b;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public checkTerminated(ZZLvc/c;Lio/reactivex/internal/queue/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lvc/c;",
            "Lio/reactivex/internal/queue/b;",
            ")Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lio/reactivex/internal/queue/b;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    invoke-virtual {p4}, Lio/reactivex/internal/queue/b;->clear()V

    invoke-interface {p3, p0}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p3}, Lvc/c;->onComplete()V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public drain()V
    .locals 14

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lvc/c;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/b;

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/b;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/reactivex/processors/g;

    if-nez v12, :cond_2

    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {p0, v11, v13, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLvc/c;Lio/reactivex/internal/queue/b;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, v12}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {v1}, Lio/reactivex/internal/queue/b;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v1}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->checkTerminated(ZZLvc/c;Lio/reactivex/internal/queue/b;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvc/a;

    invoke-interface {v1}, Lvc/c;->onComplete()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvc/a;

    invoke-interface {v1, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->cancelled:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->bufferSize:I

    invoke-static {v4, p0}, Lio/reactivex/processors/g;->e(ILjava/lang/Runnable;)Lio/reactivex/processors/g;

    move-result-object v4

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->queue:Lio/reactivex/internal/queue/b;

    invoke-virtual {v5, v4}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvc/a;

    invoke-interface {v7, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    add-long/2addr v6, v4

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_3

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    sub-long/2addr v6, v4

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvc/a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lvc/c;->onComplete()V

    goto :goto_1

    :cond_3
    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->produced:J

    :cond_4
    :goto_1
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    cmp-long p1, v0, v4

    if-nez p1, :cond_5

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    goto :goto_2

    :cond_5
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->index:J

    :goto_2
    return-void
.end method

.method public onSubscribe(Lvc/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lvc/d;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lvc/d;Lvc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lvc/d;

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->downstream:Lvc/c;

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 4

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lh3/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lh3/a;->C(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->size:J

    invoke-static {v0, v1, p1, p2}, Lh3/a;->e(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->skip:J

    invoke-static {v0, v1, p1, p2}, Lh3/a;->C(JJ)J

    move-result-wide p1

    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lvc/d;

    invoke-interface {v0, p1, p2}, Lvc/d;->request(J)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->drain()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowOverlapSubscriber;->upstream:Lvc/d;

    invoke-interface {p0}, Lvc/d;->cancel()V

    :cond_0
    return-void
.end method
