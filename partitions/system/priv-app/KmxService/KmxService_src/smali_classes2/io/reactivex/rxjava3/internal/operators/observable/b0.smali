.class public final Lio/reactivex/rxjava3/internal/operators/observable/b0;
.super Ljb/j;
.source "SourceFile"


# instance fields
.field public final a:Lio/reactivex/rxjava3/subjects/g;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/h;)V
    .locals 0

    invoke-direct {p0}, Ljb/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/b0;->a:Lio/reactivex/rxjava3/subjects/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/b0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/b0;->a:Lio/reactivex/rxjava3/subjects/g;

    invoke-virtual {v0, p1}, Ljb/j;->subscribe(Ljb/m;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/b0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/b0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
