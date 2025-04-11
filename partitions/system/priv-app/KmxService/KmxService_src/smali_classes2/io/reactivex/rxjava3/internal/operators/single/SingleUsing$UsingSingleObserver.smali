.class final Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb/r;
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Ljb/r;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49fd60e1dc287b5fL


# instance fields
.field final disposer:Llb/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/g;"
        }
    .end annotation
.end field

.field final downstream:Ljb/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/r;"
        }
    .end annotation
.end field

.field final eager:Z

.field upstream:Lio/reactivex/rxjava3/disposables/b;


# direct methods
.method public constructor <init>(Ljb/r;Ljava/lang/Object;ZLlb/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/r;",
            "TU;Z",
            "Llb/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Ljb/r;

    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Llb/g;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeResource()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeResource()V

    :goto_0
    return-void
.end method

.method public disposeResource()V
    .locals 1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Llb/g;

    invoke-interface {p0, v0}, Llb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Llb/g;

    invoke-interface {v1, v0}, Llb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Ljb/r;

    invoke-interface {v0, p1}, Ljb/r;->onError(Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeResource()V

    :cond_2
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Ljb/r;

    invoke-interface {p1, p0}, Ljb/r;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->upstream:Lio/reactivex/rxjava3/disposables/b;

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Llb/g;

    invoke-interface {v1, v0}, Llb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Ljb/r;

    invoke-interface {p0, p1}, Ljb/r;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->downstream:Ljb/r;

    invoke-interface {v0, p1}, Ljb/r;->onSuccess(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeResource()V

    :cond_2
    return-void
.end method
