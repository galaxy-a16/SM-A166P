.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Ljb/e;
.implements Lvc/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Ljb/e;",
        "Lvc/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field final serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;


# direct methods
.method public constructor <init>(Lvc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lvc/c;

    new-instance p1, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onUnsubscribed()V

    return-void
.end method

.method public completeDownstream()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lvc/c;

    invoke-interface {v0}, Lvc/c;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    throw v0
.end method

.method public errorDownstream(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->downstream:Lvc/c;

    invoke-interface {v0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->dispose()V

    throw p1
.end method

.method public final isCancelled()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->completeDownstream()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "onError called with a null Throwable."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/b;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->signalError(Ljava/lang/Throwable;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public abstract synthetic onNext(Ljava/lang/Object;)V
.end method

.method public onRequested()V
    .locals 0

    return-void
.end method

.method public onUnsubscribed()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 1

    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lh3/a;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->onRequested()V

    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final serialize()Ljb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljb/e;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$SerializedEmitter;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$SerializedEmitter;-><init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;)V

    return-object v0
.end method

.method public final setCancellable(Llb/f;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/disposables/CancellableDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/CancellableDisposable;-><init>(Llb/f;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->setDisposable(Lio/reactivex/rxjava3/disposables/b;)V

    return-void
.end method

.method public final setDisposable(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->serial:Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/disposables/SequentialDisposable;->update(Lio/reactivex/rxjava3/disposables/b;)Z

    return-void
.end method

.method public signalError(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->errorDownstream(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicLong;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s{%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryOnError(Ljava/lang/Throwable;)Z
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "tryOnError called with a null Throwable."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/b;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableCreate$BaseEmitter;->signalError(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method
