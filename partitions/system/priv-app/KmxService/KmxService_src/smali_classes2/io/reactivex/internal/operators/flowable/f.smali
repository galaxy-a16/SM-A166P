.class public final Lio/reactivex/internal/operators/flowable/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/d;


# instance fields
.field public final a:Lvc/c;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lvc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f;->a:Lvc/c;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/f;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/f;->c:Z

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/f;->b:Ljava/lang/Object;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/f;->a:Lvc/c;

    invoke-interface {p0, p1}, Lvc/c;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Lvc/c;->onComplete()V

    :cond_0
    return-void
.end method
