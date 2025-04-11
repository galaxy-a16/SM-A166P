.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Ljb/f;
.implements Lvc/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljb/f;",
        "Lvc/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x51f0e7a17ed319a6L


# instance fields
.field final disposer:Llb/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llb/g;"
        }
    .end annotation
.end field

.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field final eager:Z

.field final resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field upstream:Lvc/d;


# direct methods
.method public constructor <init>(Lvc/c;Ljava/lang/Object;Llb/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            "TD;",
            "Llb/g;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Llb/g;

    iput-boolean p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeResource()V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    invoke-interface {v0}, Lvc/d;->cancel()V

    sget-object v0, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    invoke-interface {v0}, Lvc/d;->cancel()V

    sget-object v0, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeResource()V

    :goto_0
    return-void
.end method

.method public disposeResource()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Llb/g;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v0, p0}, Llb/g;->accept(Ljava/lang/Object;)V
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

.method public onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Llb/g;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v0, v1}, Llb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Li4/f;->L(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {p0, v0}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {v0}, Lvc/c;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeResource()V

    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->eager:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposer:Llb/g;

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Llb/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v2}, Li4/f;->L(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    if-eqz v2, :cond_1

    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v0

    aput-object v2, v4, v1

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {p0, v3}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {v0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->disposeResource()V

    :goto_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lvc/d;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Lvc/d;Lvc/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->downstream:Lvc/c;

    invoke-interface {p1, p0}, Lvc/c;->onSubscribe(Lvc/d;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableUsing$UsingSubscriber;->upstream:Lvc/d;

    invoke-interface {p0, p1, p2}, Lvc/d;->request(J)V

    return-void
.end method
