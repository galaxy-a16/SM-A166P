.class public abstract Lio/reactivex/rxjava3/internal/observers/c;
.super Lb0/h;
.source "SourceFile"

# interfaces
.implements Ljb/m;


# instance fields
.field public final b:Ljb/m;

.field public final c:Lio/reactivex/rxjava3/operators/e;

.field public volatile d:Z

.field public volatile e:Z


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/observers/a;Lio/reactivex/rxjava3/internal/queue/a;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lb0/h;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    return-void
.end method


# virtual methods
.method public abstract l(Ljb/m;Ljava/lang/Object;)V
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Ljava/util/Collection;Lio/reactivex/rxjava3/disposables/b;)V
    .locals 6

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/observers/c;->b:Ljb/m;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/observers/c;->c:Lio/reactivex/rxjava3/operators/e;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Lio/reactivex/rxjava3/operators/f;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3, p1}, Lio/reactivex/rxjava3/internal/observers/c;->l(Ljb/m;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4, p1}, Lio/reactivex/rxjava3/operators/f;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/c;->m()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-static {v4, v3, p2, p0}, Lp9/d;->F(Lio/reactivex/rxjava3/operators/e;Ljb/m;Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/internal/observers/c;)V

    return-void
.end method
