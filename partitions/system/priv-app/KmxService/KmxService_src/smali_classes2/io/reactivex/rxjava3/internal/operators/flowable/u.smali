.class public final Lio/reactivex/rxjava3/internal/operators/flowable/u;
.super Ljb/d;
.source "SourceFile"


# instance fields
.field public final b:Lio/reactivex/rxjava3/processors/c;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/processors/g;)V
    .locals 0

    invoke-direct {p0}, Ljb/d;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u;->b:Lio/reactivex/rxjava3/processors/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final b(Lvc/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u;->b:Lio/reactivex/rxjava3/processors/c;

    invoke-virtual {v0, p1}, Ljb/d;->subscribe(Lvc/c;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/u;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method
