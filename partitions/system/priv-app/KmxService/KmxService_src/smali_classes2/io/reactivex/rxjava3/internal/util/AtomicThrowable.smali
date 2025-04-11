.class public final Lio/reactivex/rxjava3/internal/util/AtomicThrowable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36ce8ce03b5e1eabL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public isTerminated()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public terminate()Ljava/lang/Throwable;
    .locals 0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/b;->d(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public tryAddThrowable(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public tryAddThrowableOrReport(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->tryAddThrowable(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public tryTerminateAndReport()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public tryTerminateConsumer(Ljb/a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljb/a;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljb/a;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryTerminateConsumer(Ljb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljb/c;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljb/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryTerminateConsumer(Ljb/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/g;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljb/g;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljb/g;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryTerminateConsumer(Ljb/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/m;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Ljb/m;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tryTerminateConsumer(Ljb/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb/r;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_0

    invoke-interface {p1, p0}, Ljb/r;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public tryTerminateConsumer(Lvc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/c;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lvc/c;->onComplete()V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/reactivex/rxjava3/internal/util/b;->a:Ljava/lang/Throwable;

    if-eq p0, v0, :cond_1

    invoke-interface {p1, p0}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
