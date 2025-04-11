.class public final Landroidx/work/impl/utils/futures/f;
.super Lkotlin/reflect/x;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/x;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/work/impl/utils/futures/h;Landroidx/work/impl/utils/futures/c;Landroidx/work/impl/utils/futures/c;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/work/impl/utils/futures/h;->b:Landroidx/work/impl/utils/futures/c;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/h;->b:Landroidx/work/impl/utils/futures/c;

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

.method public final c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

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

.method public final d(Landroidx/work/impl/utils/futures/h;Landroidx/work/impl/utils/futures/g;Landroidx/work/impl/utils/futures/g;)Z
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Landroidx/work/impl/utils/futures/h;->c:Landroidx/work/impl/utils/futures/g;

    if-ne p0, p2, :cond_0

    iput-object p3, p1, Landroidx/work/impl/utils/futures/h;->c:Landroidx/work/impl/utils/futures/g;

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

.method public final h(Landroidx/work/impl/utils/futures/g;Landroidx/work/impl/utils/futures/g;)V
    .locals 0

    iput-object p2, p1, Landroidx/work/impl/utils/futures/g;->b:Landroidx/work/impl/utils/futures/g;

    return-void
.end method

.method public final i(Landroidx/work/impl/utils/futures/g;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Landroidx/work/impl/utils/futures/g;->a:Ljava/lang/Thread;

    return-void
.end method
