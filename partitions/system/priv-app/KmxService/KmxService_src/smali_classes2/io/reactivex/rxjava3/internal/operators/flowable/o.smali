.class public final Lio/reactivex/rxjava3/internal/operators/flowable/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/f;


# instance fields
.field public final a:Lvc/c;

.field public final b:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;


# direct methods
.method public constructor <init>(Lvc/c;Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->a:Lvc/c;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->b:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->a:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/o;->b:Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lvc/d;)V

    return-void
.end method
