.class final Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Leb/n;
.implements Lio/reactivex/disposables/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Leb/n;",
        "Lio/reactivex/disposables/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x67d4a190b6f57310L


# instance fields
.field volatile cancelled:Z

.field final capacityHint:I

.field final count:J

.field final downstream:Leb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leb/n;"
        }
    .end annotation
.end field

.field size:J

.field upstream:Lio/reactivex/disposables/b;

.field window:Lio/reactivex/subjects/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/h;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leb/n;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leb/n;",
            "JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->downstream:Leb/n;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->count:J

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->capacityHint:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->cancelled:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->cancelled:Z

    return p0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v0}, Lio/reactivex/subjects/h;->onComplete()V

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->downstream:Leb/n;

    invoke-interface {p0}, Leb/n;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/h;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->downstream:Leb/n;

    invoke-interface {p0, p1}, Leb/n;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->cancelled:Z

    if-nez v1, :cond_0

    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->capacityHint:I

    new-instance v1, Lio/reactivex/subjects/h;

    invoke-direct {v1, v0, p0}, Lio/reactivex/subjects/h;-><init>(ILjava/lang/Runnable;)V

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->downstream:Leb/n;

    invoke-interface {v0, v1}, Leb/n;->onNext(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/h;->onNext(Ljava/lang/Object;)V

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->size:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->size:J

    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->count:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->window:Lio/reactivex/subjects/h;

    invoke-virtual {v0}, Lio/reactivex/subjects/h;->onComplete()V

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->cancelled:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/b;Lio/reactivex/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->upstream:Lio/reactivex/disposables/b;

    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->downstream:Leb/n;

    invoke-interface {p1, p0}, Leb/n;->onSubscribe(Lio/reactivex/disposables/b;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->cancelled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowExactObserver;->upstream:Lio/reactivex/disposables/b;

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method
