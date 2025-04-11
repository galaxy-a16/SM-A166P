.class public final Landroidx/work/impl/utils/futures/i;
.super Landroidx/work/impl/utils/futures/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/utils/futures/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Landroidx/work/impl/utils/futures/h;->g:Ljava/lang/Object;

    :cond_0
    sget-object v0, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroidx/work/impl/utils/futures/h;->c(Landroidx/work/impl/utils/futures/h;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance v0, Landroidx/work/impl/utils/futures/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Landroidx/work/impl/utils/futures/b;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/work/impl/utils/futures/h;->c(Landroidx/work/impl/utils/futures/h;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Ls4/a;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/work/impl/utils/futures/h;->f(Ls4/a;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    invoke-virtual {v0, p0, v3, p1}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Landroidx/work/impl/utils/futures/h;->c(Landroidx/work/impl/utils/futures/h;)V

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_0
    new-instance v0, Landroidx/work/impl/utils/futures/e;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/futures/e;-><init>(Landroidx/work/impl/utils/futures/h;Ls4/a;)V

    sget-object v4, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    invoke-virtual {v4, p0, v3, v0}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v1, Landroidx/work/impl/utils/futures/DirectExecutor;->INSTANCE:Landroidx/work/impl/utils/futures/DirectExecutor;

    invoke-interface {p1, v0, v1}, Ls4/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Landroidx/work/impl/utils/futures/b;

    invoke-direct {v1, p1}, Landroidx/work/impl/utils/futures/b;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    sget-object v1, Landroidx/work/impl/utils/futures/b;->b:Landroidx/work/impl/utils/futures/b;

    :goto_1
    sget-object p1, Landroidx/work/impl/utils/futures/h;->f:Lkotlin/reflect/x;

    invoke-virtual {p1, p0, v0, v1}, Lkotlin/reflect/x;->c(Landroidx/work/impl/utils/futures/h;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    :cond_2
    instance-of p0, v0, Landroidx/work/impl/utils/futures/a;

    if-eqz p0, :cond_3

    check-cast v0, Landroidx/work/impl/utils/futures/a;

    iget-boolean p0, v0, Landroidx/work/impl/utils/futures/a;->a:Z

    invoke-interface {p1, p0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    :goto_2
    return v1
.end method
