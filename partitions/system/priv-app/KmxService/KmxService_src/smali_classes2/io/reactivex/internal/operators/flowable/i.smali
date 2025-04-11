.class public final Lio/reactivex/internal/operators/flowable/i;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# instance fields
.field public final c:Lgb/h;

.field public final d:Z

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lm6/b;Lcom/google/firebase/concurrent/h;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Leb/e;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/i;->c:Lgb/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/i;->d:Z

    const/16 p1, 0x40

    iput p1, p0, Lio/reactivex/internal/operators/flowable/i;->e:I

    iput p3, p0, Lio/reactivex/internal/operators/flowable/i;->f:I

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 8

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/i;->c:Lgb/h;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a;->b:Leb/e;

    invoke-static {p1, v0, v1}, Li4/f;->Q(Lvc/c;Lgb/h;Leb/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/i;->c:Lgb/h;

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/i;->d:Z

    iget v6, p0, Lio/reactivex/internal/operators/flowable/i;->e:I

    iget v7, p0, Lio/reactivex/internal/operators/flowable/i;->f:I

    new-instance p0, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableFlatMap$MergeSubscriber;-><init>(Lvc/c;Lgb/h;ZII)V

    invoke-virtual {v1, p0}, Leb/e;->a(Leb/g;)V

    return-void
.end method
