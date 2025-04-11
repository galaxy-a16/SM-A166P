.class public final Lio/reactivex/internal/observers/CallbackCompletableObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Leb/b;
.implements Lio/reactivex/disposables/b;
.implements Lgb/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/b;",
        ">;",
        "Leb/b;",
        "Lio/reactivex/disposables/b;",
        "Lgb/g;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c8666afd0faa5aaL


# instance fields
.field final onComplete:Lgb/a;

.field final onError:Lgb/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgb/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgb/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p0, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onError:Lgb/g;

    iput-object p1, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onComplete:Lgb/a;

    return-void
.end method

.method public constructor <init>(Lgb/g;Lgb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgb/g;",
            "Lgb/a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onError:Lgb/g;

    iput-object p2, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onComplete:Lgb/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/observers/CallbackCompletableObserver;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    new-instance p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    invoke-direct {p0, p1}, Lio/reactivex/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasCustomOnError()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onError:Lgb/g;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onComplete:Lgb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_0
    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/observers/CallbackCompletableObserver;->onError:Lgb/g;

    invoke-interface {v0, p1}, Lgb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lv4/b;->Y(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    :goto_0
    sget-object p1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/b;)Z

    return-void
.end method
