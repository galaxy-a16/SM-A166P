.class public final Lio/reactivex/rxjava3/internal/operators/observable/n;
.super Ljb/j;
.source "SourceFile"

# interfaces
.implements Llb/j;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lra/f;)V
    .locals 0

    invoke-direct {p0}, Ljb/j;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/n;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljb/m;)V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n;->a:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Ljb/m;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/n;->a:Ljava/lang/Object;

    return-object p0
.end method
