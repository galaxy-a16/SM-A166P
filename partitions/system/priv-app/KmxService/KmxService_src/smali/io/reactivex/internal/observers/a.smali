.class public final Lio/reactivex/internal/observers/a;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Leb/u;
.implements Leb/b;
.implements Leb/h;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Throwable;

.field public c:Lio/reactivex/disposables/b;

.field public volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/observers/a;->d:Z

    iget-object p0, p0, Lio/reactivex/internal/observers/a;->c:Lio/reactivex/disposables/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    invoke-static {v0}, Lio/reactivex/internal/util/b;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/a;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object p0, p0, Lio/reactivex/internal/observers/a;->a:Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-static {v0}, Lio/reactivex/internal/util/b;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final onComplete()V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/observers/a;->b:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/observers/a;->c:Lio/reactivex/disposables/b;

    iget-boolean p0, p0, Lio/reactivex/internal/observers/a;->d:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/b;->dispose()V

    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/observers/a;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
