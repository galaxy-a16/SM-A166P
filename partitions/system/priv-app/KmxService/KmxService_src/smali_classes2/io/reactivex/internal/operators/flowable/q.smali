.class public final Lio/reactivex/internal/operators/flowable/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/g;


# instance fields
.field public final a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q;->a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/q;->a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->complete()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/q;->a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/q;->a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->run()V

    return-void
.end method

.method public final onSubscribe(Lvc/d;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/q;->a:Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableSamplePublisher$SamplePublisherSubscriber;->setOther(Lvc/d;)V

    return-void
.end method
