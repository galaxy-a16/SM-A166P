.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lvc/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lvc/d;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6991198c1ca311f8L


# instance fields
.field final downstream:Lvc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvc/c;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lvc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lvc/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lvc/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->downstream:Lvc/c;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableConcatMap$SimpleScalarSubscription;->value:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lvc/c;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lvc/c;->onComplete()V

    :cond_0
    return-void
.end method
