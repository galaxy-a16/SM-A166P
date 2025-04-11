.class public abstract Lkotlinx/coroutines/channels/j;
.super Lkotlinx/coroutines/channels/l;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/p;


# direct methods
.method public constructor <init>(Lvb/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/l;-><init>(Lvb/b;)V

    return-void
.end method

.method public static final t(ILvb/c;Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/selects/g;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/selects/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/c;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p2, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    instance-of v1, v1, Lkotlinx/coroutines/channels/c0;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lkotlinx/coroutines/channels/j;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    new-instance v1, Lkotlinx/coroutines/channels/e;

    invoke-direct {v1, p0, p1, p2, v0}, Lkotlinx/coroutines/channels/e;-><init>(ILvb/c;Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/selects/g;)V

    invoke-virtual {p2, v1}, Lkotlinx/coroutines/channels/j;->u(Lkotlinx/coroutines/channels/z;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/c;->r(Lkotlinx/coroutines/j0;)V

    :cond_3
    if-eqz v2, :cond_0

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/channels/j;->B(Lkotlinx/coroutines/selects/g;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/selects/h;->b:Lkotlinx/coroutines/internal/z;

    if-ne v1, v3, :cond_5

    :goto_2
    return-void

    :cond_5
    sget-object v3, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-eq v1, v3, :cond_0

    sget-object v3, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/internal/z;

    if-eq v1, v3, :cond_0

    instance-of v3, v1, Lkotlinx/coroutines/channels/u;

    if-eqz v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    check-cast v1, Lkotlinx/coroutines/channels/u;

    iget-object v1, v1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance v2, Lkotlinx/coroutines/channels/q;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlinx/coroutines/channels/s;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    check-cast v1, Lkotlinx/coroutines/channels/u;

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lkotlinx/coroutines/internal/y;->a:I

    throw p0

    :cond_9
    if-ne p0, v2, :cond_b

    if-eqz v3, :cond_a

    check-cast v1, Lkotlinx/coroutines/channels/u;

    iget-object v1, v1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance v2, Lkotlinx/coroutines/channels/q;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :cond_a
    new-instance v2, Lkotlinx/coroutines/channels/s;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_b
    :goto_3
    invoke-static {p1, v1, v0}, Li4/g;->x(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/Object;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->s()Lkotlinx/coroutines/channels/c0;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/c0;->u(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/internal/z;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/c0;->r()V

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/c0;->s()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/c0;->v()V

    goto :goto_0
.end method

.method public B(Lkotlinx/coroutines/selects/g;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/g;

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/g;-><init>(Lkotlinx/coroutines/internal/i;)V

    check-cast p1, Lkotlinx/coroutines/selects/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/coroutines/selects/a;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/selects/a;-><init>(Lkotlinx/coroutines/selects/c;Lkotlinx/coroutines/internal/a;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->h()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c0;->r()V

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/m;->h()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/c0;->s()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/l;->b(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/j;->y(Z)V

    return-void
.end method

.method public final d()Lkotlinx/coroutines/selects/e;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/channels/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/channels/i;-><init>(Lkotlinx/coroutines/channels/j;I)V

    return-object v0
.end method

.method public final e()Lkotlinx/coroutines/selects/e;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/channels/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/channels/i;-><init>(Lkotlinx/coroutines/channels/j;I)V

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->A()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-ne p0, v0, :cond_0

    sget-object p0, Lkotlinx/coroutines/channels/s;->b:Lkotlinx/coroutines/channels/r;

    return-object p0

    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/channels/u;

    if-eqz v0, :cond_1

    check-cast p0, Lkotlinx/coroutines/channels/u;

    iget-object p0, p0, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance v0, Lkotlinx/coroutines/channels/q;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/a;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/channels/a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/a;-><init>(Lkotlinx/coroutines/channels/j;)V

    return-object v0
.end method

.method public final j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;-><init>(Lkotlinx/coroutines/channels/j;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->A()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-eq p1, v2, :cond_4

    instance-of p0, p1, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_3

    check-cast p1, Lkotlinx/coroutines/channels/u;

    iget-object p0, p1, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    new-instance p1, Lkotlinx/coroutines/channels/q;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/q;-><init>(Ljava/lang/Throwable;)V

    :cond_3
    return-object p1

    :cond_4
    iput v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveCatching$1;->label:I

    invoke-static {v0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Ll9/b;->e0(Lkotlin/coroutines/d;)Lkotlinx/coroutines/h;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-nez v0, :cond_5

    new-instance v0, Lkotlinx/coroutines/channels/b;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/b;-><init>(Lkotlinx/coroutines/h;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lkotlinx/coroutines/channels/c;

    invoke-direct {v4, p1, v0}, Lkotlinx/coroutines/channels/c;-><init>(Lkotlinx/coroutines/h;Lvb/b;)V

    move-object v0, v4

    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/j;->u(Lkotlinx/coroutines/channels/z;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Lkotlinx/coroutines/channels/f;

    invoke-direct {v2, p0, v0}, Lkotlinx/coroutines/channels/f;-><init>(Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/channels/z;)V

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->A()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lkotlinx/coroutines/channels/u;

    if-eqz v5, :cond_8

    check-cast v4, Lkotlinx/coroutines/channels/u;

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/channels/b;->s(Lkotlinx/coroutines/channels/u;)V

    goto :goto_3

    :cond_8
    if-eq v4, v2, :cond_6

    iget p0, v0, Lkotlinx/coroutines/channels/b;->e:I

    if-ne p0, v3, :cond_9

    new-instance p0, Lkotlinx/coroutines/channels/s;

    invoke-direct {p0, v4}, Lkotlinx/coroutines/channels/s;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    move-object p0, v4

    :goto_2
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/channels/z;->r(Ljava/lang/Object;)Lvb/b;

    move-result-object v0

    iget v2, p1, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p1, p0, v2, v0}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;ILvb/b;)V

    :goto_3
    invoke-virtual {p1}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p1

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    check-cast p1, Lkotlinx/coroutines/channels/s;

    iget-object p0, p1, Lkotlinx/coroutines/channels/s;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public final r()Lkotlinx/coroutines/channels/b0;
    .locals 1

    invoke-super {p0}, Lkotlinx/coroutines/channels/l;->r()Lkotlinx/coroutines/channels/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lkotlinx/coroutines/channels/u;

    :cond_0
    return-object p0
.end method

.method public u(Lkotlinx/coroutines/channels/z;)Z
    .locals 5

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->v()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    instance-of v0, p0, Lkotlinx/coroutines/channels/c0;

    xor-int/2addr v0, v3

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/internal/n;->f(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/i;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/h;

    invoke-direct {v0, p1, p0, v2}, Lkotlinx/coroutines/channels/h;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/channels/l;I)V

    :goto_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object p0

    instance-of v4, p0, Lkotlinx/coroutines/channels/c0;

    xor-int/2addr v4, v3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1, v0}, Lkotlinx/coroutines/internal/n;->q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/k;)I

    move-result p0

    if-eq p0, v3, :cond_4

    const/4 v4, 0x2

    if-eq p0, v4, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method public abstract v()Z
.end method

.method public abstract w()Z
.end method

.method public x()Z
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->b:Lkotlinx/coroutines/internal/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->j()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/u;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlinx/coroutines/channels/l;->n(Lkotlinx/coroutines/channels/u;)V

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/j;->w()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public y(Z)V
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/l;->m()Lkotlinx/coroutines/channels/u;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->k()Lkotlinx/coroutines/internal/n;

    move-result-object v1

    instance-of v2, v1, Lkotlinx/coroutines/internal/i;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/j;->z(Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->n()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/v;

    iget-object v1, v1, Lkotlinx/coroutines/internal/v;->a:Lkotlinx/coroutines/internal/n;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/n;->l()V

    goto :goto_0

    :cond_1
    check-cast v1, Lkotlinx/coroutines/channels/c0;

    invoke-static {v0, v1}, Lfc/e;->M(Ljava/lang/Object;Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot happen"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public z(Ljava/lang/Object;Lkotlinx/coroutines/channels/u;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of p0, p1, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/c0;->t(Lkotlinx/coroutines/channels/u;)V

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, -0x1

    add-int/2addr p0, v0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {v1, p2}, Lkotlinx/coroutines/channels/c0;->t(Lkotlinx/coroutines/channels/u;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
