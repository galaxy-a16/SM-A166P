.class public final Lkotlinx/coroutines/channels/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/channels/j;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/channels/j;

    sget-object p1, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    iput-object p1, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    instance-of p0, v0, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_1

    check-cast v0, Lkotlinx/coroutines/channels/u;

    iget-object p0, v0, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lkotlinx/coroutines/internal/y;->a:I

    throw p0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/a;->a:Lkotlinx/coroutines/channels/j;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/j;->A()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    if-eq v4, v1, :cond_5

    instance-of p0, v4, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_4

    check-cast v4, Lkotlinx/coroutines/channels/u;

    iget-object p0, v4, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    sget p1, Lkotlinx/coroutines/internal/y;->a:I

    throw p0

    :cond_4
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {p1}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    invoke-static {p1}, Ll9/b;->e0(Lkotlin/coroutines/d;)Lkotlinx/coroutines/h;

    move-result-object p1

    new-instance v2, Lkotlinx/coroutines/channels/d;

    invoke-direct {v2, p0, p1}, Lkotlinx/coroutines/channels/d;-><init>(Lkotlinx/coroutines/channels/a;Lkotlinx/coroutines/h;)V

    :cond_6
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/channels/j;->u(Lkotlinx/coroutines/channels/z;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance p0, Lkotlinx/coroutines/channels/f;

    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/channels/f;-><init>(Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/channels/z;)V

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/j;->A()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    instance-of v4, v3, Lkotlinx/coroutines/channels/u;

    if-eqz v4, :cond_9

    check-cast v3, Lkotlinx/coroutines/channels/u;

    iget-object p0, v3, Lkotlinx/coroutines/channels/u;->d:Ljava/lang/Throwable;

    if-nez p0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    if-eq v3, v1, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lkotlinx/coroutines/channels/l;->a:Lvb/b;

    if-eqz v0, :cond_a

    iget-object v1, p1, Lkotlinx/coroutines/h;->e:Lkotlin/coroutines/i;

    invoke-static {v0, v3, v1}, Lkotlinx/coroutines/internal/t;->a(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/i;)Lvb/b;

    move-result-object v0

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    iget v1, p1, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {p1, p0, v1, v0}, Lkotlinx/coroutines/h;->t(Ljava/lang/Object;ILvb/b;)V

    :goto_4
    invoke-virtual {p1}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/channels/u;

    if-nez v1, :cond_1

    sget-object v1, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lkotlinx/coroutines/channels/a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/channels/u;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/u;->w()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, Lkotlinx/coroutines/internal/y;->a:I

    throw p0
.end method
