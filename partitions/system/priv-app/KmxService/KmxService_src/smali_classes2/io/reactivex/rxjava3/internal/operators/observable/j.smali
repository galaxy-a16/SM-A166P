.class public final Lio/reactivex/rxjava3/internal/operators/observable/j;
.super Ljb/j;
.source "SourceFile"


# instance fields
.field public final a:La5/a;


# direct methods
.method public constructor <init>(La5/a;)V
    .locals 0

    invoke-direct {p0}, Ljb/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:La5/a;

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 2

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Ljb/m;)V

    invoke-interface {p1, v0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/j;->a:La5/a;

    iget-object p0, p0, La5/a;->b:Ljava/lang/Object;

    check-cast p0, Lu4/a;

    iget-object p1, p0, Lu4/a;->b:Ljava/lang/Object;

    check-cast p1, Lpa/c;

    new-instance v1, Lra/e;

    invoke-direct {v1, p0, v0}, Lra/e;-><init>(Lu4/a;Ljb/k;)V

    invoke-virtual {p1, v1}, Lpa/c;->subscribe(Lpa/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
