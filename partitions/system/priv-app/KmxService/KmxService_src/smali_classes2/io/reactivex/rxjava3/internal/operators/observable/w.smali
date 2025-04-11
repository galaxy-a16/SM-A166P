.class public final Lio/reactivex/rxjava3/internal/operators/observable/w;
.super Lio/reactivex/rxjava3/internal/operators/observable/a;
.source "SourceFile"


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Ljb/q;

.field public final e:Ljb/l;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/j;JLjava/util/concurrent/TimeUnit;Ljb/q;Lio/reactivex/rxjava3/internal/operators/observable/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/a;-><init>(Lio/reactivex/rxjava3/internal/operators/observable/j;)V

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->b:J

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->d:Ljb/q;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->e:Ljb/l;

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 12

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->e:Ljb/l;

    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/observable/a;->a:Ljb/l;

    const-wide/16 v8, 0x0

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->d:Ljb/q;

    if-nez v1, :cond_0

    new-instance v6, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljb/q;->b()Ljb/p;

    move-result-object v10

    move-object v0, v6

    move-object v1, p1

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;-><init>(Ljb/m;JLjava/util/concurrent/TimeUnit;Ljb/p;)V

    invoke-interface {p1, v6}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    invoke-virtual {v6, v8, v9}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver;->startTimeout(J)V

    invoke-interface {v7, v6}, Ljb/l;->subscribe(Ljb/m;)V

    goto :goto_0

    :cond_0
    new-instance v10, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;

    iget-wide v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->b:J

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljb/q;->b()Ljb/p;

    move-result-object v6

    iget-object v11, p0, Lio/reactivex/rxjava3/internal/operators/observable/w;->e:Ljb/l;

    move-object v0, v10

    move-object v1, p1

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;-><init>(Ljb/m;JLjava/util/concurrent/TimeUnit;Ljb/p;Ljb/l;)V

    invoke-interface {p1, v10}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    invoke-virtual {v10, v8, v9}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver;->startTimeout(J)V

    invoke-interface {v7, v10}, Ljb/l;->subscribe(Ljb/m;)V

    :goto_0
    return-void
.end method
