.class abstract Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/rxjava3/disposables/b;",
        ">;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/n;->c:Lio/reactivex/rxjava3/internal/schedulers/m;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call(Ljb/p;Ljb/a;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/disposables/b;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/n;->d:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/n;->c:Lio/reactivex/rxjava3/internal/schedulers/m;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Ljb/p;Ljb/a;)Lio/reactivex/rxjava3/disposables/b;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    :cond_2
    return-void
.end method

.method public abstract callActual(Ljb/p;Ljb/a;)Lio/reactivex/rxjava3/disposables/b;
.end method

.method public dispose()V
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/n;->d:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->isDisposed()Z

    move-result p0

    return p0
.end method
