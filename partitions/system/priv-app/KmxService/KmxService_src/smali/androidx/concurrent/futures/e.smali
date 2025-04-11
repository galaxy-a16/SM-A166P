.class public final Landroidx/concurrent/futures/e;
.super Lp1/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp1/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final K(Landroidx/concurrent/futures/f;Landroidx/concurrent/futures/f;)V
    .locals 0

    iput-object p2, p1, Landroidx/concurrent/futures/f;->b:Landroidx/concurrent/futures/f;

    return-void
.end method

.method public final L(Landroidx/concurrent/futures/f;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Landroidx/concurrent/futures/f;->a:Ljava/lang/Thread;

    return-void
.end method

.method public final j(Landroidx/concurrent/futures/g;Landroidx/concurrent/futures/c;Landroidx/concurrent/futures/c;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/concurrent/futures/g;->b:Landroidx/concurrent/futures/c;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/g;->b:Landroidx/concurrent/futures/c;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final s(Landroidx/concurrent/futures/g;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/concurrent/futures/g;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/g;->a:Ljava/lang/Object;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final t(Landroidx/concurrent/futures/g;Landroidx/concurrent/futures/f;Landroidx/concurrent/futures/f;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/concurrent/futures/g;->c:Landroidx/concurrent/futures/f;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/concurrent/futures/g;->c:Landroidx/concurrent/futures/f;

    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
