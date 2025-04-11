.class public Lkotlinx/coroutines/internal/x;
.super Lkotlinx/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lrb/b;


# instance fields
.field public final c:Lkotlin/coroutines/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/i;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/x;->c:Lkotlin/coroutines/d;

    return-void
.end method


# virtual methods
.method public final E()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lrb/b;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/x;->c:Lkotlin/coroutines/d;

    instance-of v0, p0, Lrb/b;

    if-eqz v0, :cond_0

    check-cast p0, Lrb/b;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/x;->c:Lkotlin/coroutines/d;

    invoke-static {p0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p1}, Lv9/a;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/t;->c(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/x;->c:Lkotlin/coroutines/d;

    invoke-static {p1}, Lv9/a;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
