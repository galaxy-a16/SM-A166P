.class public abstract Ljb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lio/reactivex/rxjava3/internal/observers/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/observers/a;-><init>()V

    invoke-virtual {p0, v0}, Ljb/j;->subscribe(Ljb/m;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/observers/a;->dispose()V

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/b;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    iget-object p0, v0, Lio/reactivex/rxjava3/internal/observers/a;->b:Ljava/lang/Throwable;

    if-nez p0, :cond_2

    iget-object p0, v0, Lio/reactivex/rxjava3/internal/observers/a;->a:Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/b;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public abstract b(Ljb/m;)V
.end method

.method public final subscribe(Ljb/m;)V
    .locals 1

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, Ljb/j;->b(Ljb/m;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Li4/f;->L(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method
