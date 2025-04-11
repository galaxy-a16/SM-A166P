.class public final Lio/reactivex/rxjava3/internal/operators/observable/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/m;


# instance fields
.field public final a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

.field public final b:Lio/reactivex/rxjava3/operators/g;

.field public final c:I

.field public volatile d:Z

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->c:I

    new-instance p1, Lio/reactivex/rxjava3/operators/g;

    invoke-direct {p1, p3}, Lio/reactivex/rxjava3/operators/g;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->b:Lio/reactivex/rxjava3/operators/g;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->d:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->d:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->b:Lio/reactivex/rxjava3/operators/g;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/operators/g;->offer(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->drain()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;

    iget p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r;->c:I

    invoke-virtual {v0, p1, p0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->setDisposable(Lio/reactivex/rxjava3/disposables/b;I)Z

    return-void
.end method
