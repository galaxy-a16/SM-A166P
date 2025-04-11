.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/f1;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/d;
.implements Lkotlinx/coroutines/y;


# instance fields
.field public final b:Lkotlin/coroutines/i;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lkotlinx/coroutines/f1;-><init>(Z)V

    sget-object p2, Lc3/l;->f:Lc3/l;

    invoke-interface {p1, p2}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/y0;

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/f1;->C(Lkotlinx/coroutines/y0;)V

    invoke-interface {p1, p0}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    return-void
.end method


# virtual methods
.method public final B(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    invoke-static {p0, p1}, Lfc/e;->s(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V

    return-void
.end method

.method public H()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/f1;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final K(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/q;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/q;

    iget-object v0, p1, Lkotlinx/coroutines/q;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/q;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->R(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->S(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public R(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public S(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final c()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public final getContext()Lkotlin/coroutines/i;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/a;->b:Lkotlin/coroutines/i;

    return-object p0
.end method

.method public isActive()Z
    .locals 0

    invoke-super {p0}, Lkotlinx/coroutines/f1;->isActive()Z

    move-result p0

    return p0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/q;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/f1;->G(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/a0;->e:Lkotlinx/coroutines/internal/z;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->l(Ljava/lang/Object;)V

    return-void
.end method
