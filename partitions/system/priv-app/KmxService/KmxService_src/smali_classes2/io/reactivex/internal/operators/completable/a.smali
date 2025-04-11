.class public final Lio/reactivex/internal/operators/completable/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/b;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Leb/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Leb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/a;->b:Leb/b;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/a;->b:Leb/b;

    invoke-interface {p0}, Leb/b;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/a;->b:Leb/b;

    invoke-interface {p0, p1}, Leb/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
