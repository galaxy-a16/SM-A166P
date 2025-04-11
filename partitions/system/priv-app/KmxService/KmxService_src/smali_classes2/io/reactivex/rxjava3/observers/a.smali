.class public final Lio/reactivex/rxjava3/observers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/m;
.implements Lio/reactivex/rxjava3/disposables/b;


# instance fields
.field public final a:Ljb/m;

.field public b:Lio/reactivex/rxjava3/disposables/b;

.field public c:Z

.field public d:Lio/reactivex/rxjava3/internal/util/a;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljb/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    iget-object p0, p0, Lio/reactivex/rxjava3/observers/a;->b:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/observers/a;->b:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/b;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public final onComplete()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    :cond_2
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    invoke-interface {p0}, Ljb/m;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    iget-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    :cond_2
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/util/a;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    monitor-exit p0

    return-void

    :cond_3
    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    move v1, v2

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    iget-object p0, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    invoke-interface {p0, p1}, Ljb/m;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lio/reactivex/rxjava3/observers/a;->b:Lio/reactivex/rxjava3/disposables/b;

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/b;->dispose()V

    const-string p1, "onNext called with a null value."

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/b;->b(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/observers/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->e:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    if-nez v0, :cond_3

    new-instance v0, Lio/reactivex/rxjava3/internal/util/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/util/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    :cond_3
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    invoke-interface {v1, p1}, Ljb/m;->onNext(Ljava/lang/Object;)V

    :cond_5
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    const/4 v1, 0x0

    if-nez p1, :cond_6

    iput-boolean v1, p0, Lio/reactivex/rxjava3/observers/a;->c:Z

    monitor-exit p0

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/rxjava3/observers/a;->d:Lio/reactivex/rxjava3/internal/util/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    iget-object p1, p1, Lio/reactivex/rxjava3/internal/util/a;->a:[Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_a

    move v3, v1

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_9

    aget-object v5, p1, v3

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v5, v2}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Ljb/m;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v0

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    aget-object p1, p1, v4

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_a
    :goto_3
    if-eqz v1, :cond_5

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/observers/a;->b:Lio/reactivex/rxjava3/disposables/b;

    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/disposables/DisposableHelper;->validate(Lio/reactivex/rxjava3/disposables/b;Lio/reactivex/rxjava3/disposables/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/rxjava3/observers/a;->b:Lio/reactivex/rxjava3/disposables/b;

    iget-object p1, p0, Lio/reactivex/rxjava3/observers/a;->a:Ljb/m;

    invoke-interface {p1, p0}, Ljb/m;->onSubscribe(Lio/reactivex/rxjava3/disposables/b;)V

    :cond_0
    return-void
.end method
