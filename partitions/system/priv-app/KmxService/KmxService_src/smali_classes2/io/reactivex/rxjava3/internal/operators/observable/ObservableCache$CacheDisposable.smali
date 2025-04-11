.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/disposables/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5df4ba2ba2d80afaL


# instance fields
.field volatile disposed:Z

.field final downstream:Ljb/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljb/m;"
        }
    .end annotation
.end field

.field index:J

.field node:Lio/reactivex/rxjava3/internal/operators/observable/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/h;"
        }
    .end annotation
.end field

.field offset:I

.field final parent:Lio/reactivex/rxjava3/internal/operators/observable/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/i;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljb/m;Lio/reactivex/rxjava3/internal/operators/observable/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            "Lio/reactivex/rxjava3/internal/operators/observable/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->downstream:Ljb/m;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    const/4 p0, 0x0

    throw p0
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    return p0
.end method
