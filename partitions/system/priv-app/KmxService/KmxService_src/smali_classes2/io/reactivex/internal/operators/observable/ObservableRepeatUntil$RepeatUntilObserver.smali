.class final Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Leb/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Leb/n;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x628271a96862fff0L


# instance fields
.field final downstream:Leb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/n;"
        }
    .end annotation
.end field

.field final source:Leb/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/m;"
        }
    .end annotation
.end field

.field final stop:Lgb/e;

.field final upstream:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method public constructor <init>(Leb/n;Lgb/e;Lio/reactivex/internal/disposables/SequentialDisposable;Leb/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/n;",
            "Lgb/e;",
            "Lio/reactivex/internal/disposables/SequentialDisposable;",
            "Leb/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Leb/n;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->source:Leb/m;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->stop:Lgb/e;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->stop:Lgb/e;

    invoke-interface {v0}, Lgb/e;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Leb/n;

    invoke-interface {p0}, Leb/n;->onComplete()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->subscribeNext()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Leb/n;

    invoke-interface {p0, v0}, Leb/n;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Leb/n;

    invoke-interface {p0, p1}, Leb/n;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->downstream:Leb/n;

    invoke-interface {p0, p1}, Leb/n;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->upstream:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/b;)Z

    return-void
.end method

.method public subscribeNext()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRepeatUntil$RepeatUntilObserver;->source:Leb/m;

    invoke-interface {v1, p0}, Leb/m;->subscribe(Leb/n;)V

    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method
