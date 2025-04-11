.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Ljb/m;
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljb/m;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4eca0434695949bbL


# instance fields
.field volatile cancelled:Z

.field final count:J

.field final delayError:Z

.field final downstream:Ljb/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/m;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field final queue:Lio/reactivex/rxjava3/operators/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/operators/g;"
        }
    .end annotation
.end field

.field final scheduler:Ljb/q;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>(Ljb/m;JJLjava/util/concurrent/TimeUnit;Ljb/q;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljb/q;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->downstream:Ljb/m;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->count:J

    iput-wide p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->time:J

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->scheduler:Ljb/q;

    new-instance p1, Lio/reactivex/rxjava3/operators/g;

    invoke-direct {p1, p8}, Lio/reactivex/rxjava3/operators/g;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    iput-boolean p9, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->delayError:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->cancelled:Z

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {v1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/operators/g;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->downstream:Ljb/m;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    iget-boolean v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->delayError:Z

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->scheduler:Ljb/q;

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljb/q;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->time:J

    sub-long/2addr v5, v7

    :goto_0
    iget-boolean v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->cancelled:Z

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lio/reactivex/rxjava3/operators/g;->clear()V

    return-void

    :cond_1
    if-nez v4, :cond_2

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->error:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lio/reactivex/rxjava3/operators/g;->clear()V

    invoke-interface {v2, v7}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-virtual {v3}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    move v8, v1

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    if-eqz v8, :cond_5

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->error:Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-interface {v2, p0}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljb/m;->onComplete()V

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v3}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-gez v7, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v2, v8}, Ljb/m;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->cancelled:Z

    return p0
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->error:Ljava/lang/Throwable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->queue:Lio/reactivex/rxjava3/operators/g;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->scheduler:Ljb/q;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljb/q;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->time:J

    iget-wide v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->count:J

    const-wide v7, 0x7fffffffffffffffL

    cmp-long p0, v5, v7

    const/4 v7, 0x1

    if-nez p0, :cond_0

    move p0, v7

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8, p1}, Lio/reactivex/rxjava3/operators/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/g;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/g;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v1, v3

    cmp-long p1, v8, v10

    if-lez p1, :cond_2

    if-nez p0, :cond_3

    iget-object p1, v0, Lio/reactivex/rxjava3/operators/g;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :goto_2
    iget-object v10, v0, Lio/reactivex/rxjava3/operators/g;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-nez v8, :cond_1

    sub-long/2addr v10, v12

    long-to-int p1, v10

    shr-int/2addr p1, v7

    int-to-long v8, p1

    cmp-long p1, v8, v5

    if-lez p1, :cond_3

    goto :goto_3

    :cond_1
    move-wide v8, v12

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/operators/g;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTakeLastTimed$TakeLastTimedObserver;->downstream:Ljb/m;

    invoke-interface {p1, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    :cond_0
    return-void
.end method
