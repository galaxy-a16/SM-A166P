.class public final Lkotlinx/coroutines/s1;
.super Lkotlinx/coroutines/internal/x;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/t1;->a:Lkotlinx/coroutines/t1;

    invoke-interface {p2, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/x;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/s1;->d:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p1, Le9/a;->c:Le9/a;

    invoke-interface {p0, p1}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/t;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final T()Z
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/s1;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/s1;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/i;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lv9/a;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/coroutines/internal/x;->c:Lkotlin/coroutines/d;

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/internal/b0;->a:Lkotlinx/coroutines/internal/z;

    if-eq v1, v3, :cond_1

    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/a0;->O(Lkotlin/coroutines/d;Lkotlin/coroutines/i;Ljava/lang/Object;)Lkotlinx/coroutines/s1;

    move-result-object v2

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/s1;->T()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lkotlinx/coroutines/s1;->T()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    :cond_5
    throw p0
.end method
