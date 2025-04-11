.class final Lio/reactivex/rxjava3/subjects/AsyncSubject$AsyncDisposable;
.super Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e215678802bc8d0L


# instance fields
.field final parent:Lio/reactivex/rxjava3/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljb/m;Lio/reactivex/rxjava3/subjects/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            "Lio/reactivex/rxjava3/subjects/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;-><init>(Ljb/m;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-super {p0}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->tryDispose()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public onComplete()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Ljb/m;

    invoke-interface {p0}, Ljb/m;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/observers/DeferredScalarDisposable;->downstream:Ljb/m;

    invoke-interface {p0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
