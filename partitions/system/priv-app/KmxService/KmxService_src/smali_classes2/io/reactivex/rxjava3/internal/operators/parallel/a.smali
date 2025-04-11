.class public final Lio/reactivex/rxjava3/internal/operators/parallel/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/d;


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;II)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->c:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->a:I

    iput p3, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->b:I

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->c:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    iget-object v1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->a:I

    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->b:I

    add-int/2addr v2, p0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr p0, p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->cancel(I)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 8

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->c:Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;

    iget-object v7, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->requests:Ljava/util/concurrent/atomic/AtomicLongArray;

    :cond_0
    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->a:I

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v3, v4, p1, p2}, Lh3/a;->f(JJ)J

    move-result-wide v5

    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->a:I

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->subscriberCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/parallel/a;->b:I

    if-ne p1, p0, :cond_2

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/parallel/ParallelFromPublisher$ParallelDispatcher;->drain()V

    :cond_2
    return-void
.end method
