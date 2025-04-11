.class public final Lkotlinx/coroutines/channels/x;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/y;
.implements Lkotlinx/coroutines/channels/p;


# instance fields
.field public final c:Lkotlinx/coroutines/channels/p;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/j;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    return-void
.end method


# virtual methods
.method public final R(Ljava/lang/Throwable;Z)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/d0;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final S(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/s;

    const/4 p1, 0x0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/d0;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->z()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/q;

    if-nez v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/d1;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/d1;

    invoke-virtual {v0}, Lkotlinx/coroutines/d1;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/y0;)V

    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/x;->n(Ljava/util/concurrent/CancellationException;)V

    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/d0;->b(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final d()Lkotlinx/coroutines/selects/e;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/a0;->d()Lkotlinx/coroutines/selects/e;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/selects/e;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/a0;->e()Lkotlinx/coroutines/selects/e;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lvb/b;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/d0;->f(Lvb/b;)V

    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/a0;->g()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/d0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/d0;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/a;->isActive()Z

    move-result p0

    return p0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/a;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0}, Lkotlinx/coroutines/channels/a0;->iterator()Lkotlinx/coroutines/channels/a;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/a0;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final n(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/x;->c:Lkotlinx/coroutines/channels/p;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/a0;->a(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->m(Ljava/lang/Object;)Z

    return-void
.end method
