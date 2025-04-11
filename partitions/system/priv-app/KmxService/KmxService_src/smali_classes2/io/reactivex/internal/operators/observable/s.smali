.class public final Lio/reactivex/internal/operators/observable/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/n;


# instance fields
.field public final a:Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

.field public final b:Lio/reactivex/internal/queue/b;

.field public volatile c:Z

.field public d:Ljava/lang/Throwable;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-direct {p1, p2}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s;->b:Lio/reactivex/internal/queue/b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/s;->c:Z

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s;->d:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/s;->c:Z

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s;->b:Lio/reactivex/internal/queue/b;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/b;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/s;->a:Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->drain()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/observable/s;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
