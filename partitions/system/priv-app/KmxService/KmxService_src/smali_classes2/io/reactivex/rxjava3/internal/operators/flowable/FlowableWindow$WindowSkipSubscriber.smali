.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Ljb/f;
.implements Lvc/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljb/f;",
        "Lvc/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a066e1378289dc0L


# instance fields
.field final bufferSize:I

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final size:J

.field final skip:J

.field upstream:Lvc/d;

.field window:Lio/reactivex/rxjava3/processors/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/g;"
        }
    .end annotation
.end field


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

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->downstream:Lvc/c;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/processors/g;->onComplete()V

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->downstream:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/processors/g;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->downstream:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v2, p0}, Lio/reactivex/rxjava3/processors/g;->e(ILjava/lang/Runnable;)Lio/reactivex/rxjava3/processors/g;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    new-instance v5, Lio/reactivex/rxjava3/internal/operators/flowable/u;

    invoke-direct {v5, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/u;-><init>(Lio/reactivex/rxjava3/processors/g;)V

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->downstream:Lvc/c;

    invoke-interface {v7, v5}, Lvc/c;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lio/reactivex/rxjava3/processors/g;->onNext(Ljava/lang/Object;)V

    :cond_1
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_2

    iput-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/rxjava3/processors/g;

    invoke-virtual {v2}, Lio/reactivex/rxjava3/processors/g;->onComplete()V

    :cond_2
    iget-wide v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    cmp-long p1, v0, v6

    if-nez p1, :cond_3

    iput-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    goto :goto_1

    :cond_3
    iput-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lio/reactivex/rxjava3/internal/operators/flowable/u;->d()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v5, Lio/reactivex/rxjava3/internal/operators/flowable/u;->b:Lio/reactivex/rxjava3/processors/c;

    check-cast p0, Lio/reactivex/rxjava3/processors/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/g;->onComplete()V

    :cond_4
    return-void
.end method

.method public onSubscribe(Lvc/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->upstream:Lvc/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lvc/d;Lvc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->upstream:Lvc/d;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->downstream:Lvc/c;

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 6

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    invoke-static {v0, v1, p1, p2}, Lh3/a;->D(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr p1, v4

    invoke-static {v2, v3, p1, p2}, Lh3/a;->D(JJ)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lh3/a;->f(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    invoke-static {v0, v1, p1, p2}, Lh3/a;->D(JJ)J

    move-result-wide p1

    :goto_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->upstream:Lvc/d;

    invoke-interface {p0, p1, p2}, Lvc/d;->request(J)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->upstream:Lvc/d;

    invoke-interface {p0}, Lvc/d;->cancel()V

    :cond_0
    return-void
.end method
