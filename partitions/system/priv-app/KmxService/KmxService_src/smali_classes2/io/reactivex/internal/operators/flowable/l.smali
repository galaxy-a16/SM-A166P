.class public final Lio/reactivex/internal/operators/flowable/l;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# instance fields
.field public final c:Leb/s;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Leb/e;Leb/s;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Leb/e;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/l;->c:Leb/s;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/l;->d:Z

    iput p4, p0, Lio/reactivex/internal/operators/flowable/l;->e:I

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 4

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/l;->c:Leb/s;

    invoke-virtual {v0}, Leb/s;->a()Leb/r;

    move-result-object v0

    instance-of v1, p1, Lib/a;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/l;->e:I

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/l;->d:Z

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Leb/e;

    if-eqz v1, :cond_0

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;

    check-cast p1, Lib/a;

    invoke-direct {v1, p1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnConditionalSubscriber;-><init>(Lib/a;Leb/r;ZI)V

    goto :goto_0

    :cond_0
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;

    invoke-direct {v1, p1, v0, v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableObserveOn$ObserveOnSubscriber;-><init>(Lvc/c;Leb/r;ZI)V

    :goto_0
    invoke-virtual {p0, v1}, Leb/e;->a(Leb/g;)V

    return-void
.end method
