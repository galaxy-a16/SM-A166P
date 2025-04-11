.class public final Landroidx/lifecycle/o0;
.super Lkotlinx/coroutines/t;
.source "SourceFile"


# instance fields
.field public final c:Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlinx/coroutines/t;-><init>()V

    new-instance v0, Landroidx/lifecycle/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/i;-><init>(I)V

    iput-object v0, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method public final i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    check-cast v0, Lkotlinx/coroutines/android/d;

    iget-object v0, v0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/android/d;->x(Lkotlin/coroutines/i;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroidx/lifecycle/i;->b:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/lifecycle/i;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/lifecycle/i;->d()V

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot enqueue any more runnables"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    new-instance v1, Ld/p0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p2}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/android/d;->i(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method

.method public final x(Lkotlin/coroutines/i;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    check-cast v0, Lkotlinx/coroutines/android/d;

    iget-object v0, v0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/android/d;->x(Lkotlin/coroutines/i;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/lifecycle/o0;->c:Landroidx/lifecycle/i;

    iget-boolean p1, p0, Landroidx/lifecycle/i;->b:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Landroidx/lifecycle/i;->a:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method
