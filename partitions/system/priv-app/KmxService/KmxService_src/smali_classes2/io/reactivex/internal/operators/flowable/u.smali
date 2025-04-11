.class public final Lio/reactivex/internal/operators/flowable/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# instance fields
.field public final a:Lvc/c;

.field public final b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;


# direct methods
.method public constructor <init>(Lvc/c;Lio/reactivex/internal/subscriptions/SubscriptionArbiter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/u;->a:Lvc/c;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/u;->b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/u;->a:Lvc/c;

    invoke-interface {p0}, Lvc/c;->onComplete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/u;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/u;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/u;->b:Lio/reactivex/internal/subscriptions/SubscriptionArbiter;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;->setSubscription(Lvc/d;)V

    return-void
.end method
