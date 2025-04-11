.class final Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lvc/d;
.implements Llb/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lvc/d;",
        "Llb/i;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2db3b5785ea03c8eL


# instance fields
.field volatile cancelled:Z

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field emitting:Z

.field fastPath:Z

.field index:J

.field next:Z

.field queue:Lio/reactivex/rxjava3/internal/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/util/a;"
        }
    .end annotation
.end field

.field final state:Lio/reactivex/rxjava3/processors/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvc/c;Lio/reactivex/rxjava3/processors/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "Lio/reactivex/rxjava3/processors/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lvc/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public emitFirst()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->next:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public emitLoop()V
    .locals 5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitting:Z

    monitor-exit p0

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/util/a;->a:[Ljava/lang/Object;

    :goto_1
    if-eqz v0, :cond_0

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0, v4}, Llb/i;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    aget-object v0, v0, v3

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public emitNext(Ljava/lang/Object;J)V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->fastPath:Z

    if-nez v0, :cond_5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-wide v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->index:J

    cmp-long p2, v0, p2

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->emitting:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/a;

    if-nez p2, :cond_3

    new-instance p2, Lio/reactivex/rxjava3/internal/util/a;

    invoke-direct {p2}, Lio/reactivex/rxjava3/internal/util/a;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->queue:Lio/reactivex/rxjava3/internal/util/a;

    :cond_3
    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->next:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->fastPath:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public isFull()Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lh3/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    return v1

    :cond_1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lvc/c;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lvc/c;

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, v2, v0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->cancel()V

    iget-object p0, p0, Lio/reactivex/rxjava3/processors/BehaviorProcessor$BehaviorSubscription;->downstream:Lvc/c;

    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    move-result-object p1

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return v1
.end method
