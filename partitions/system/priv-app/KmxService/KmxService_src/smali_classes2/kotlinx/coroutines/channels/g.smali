.class public final Lkotlinx/coroutines/channels/g;
.super Lkotlinx/coroutines/internal/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/m;-><init>(Lkotlinx/coroutines/internal/i;)V

    return-void
.end method


# virtual methods
.method public final c(Lkotlinx/coroutines/internal/n;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lkotlinx/coroutines/channels/u;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lkotlinx/coroutines/channels/c0;

    if-nez p0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final f(Lkotlinx/coroutines/internal/l;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p1, Lkotlinx/coroutines/internal/l;->a:Lkotlinx/coroutines/internal/n;

    check-cast p0, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/c0;->u(Lkotlinx/coroutines/internal/l;)Lkotlinx/coroutines/internal/z;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlinx/coroutines/internal/t;->g:Lkotlinx/coroutines/internal/z;

    return-object p0

    :cond_0
    sget-object p1, Lkotlinx/coroutines/internal/t;->b:Lkotlinx/coroutines/internal/z;

    if-ne p0, p1, :cond_1

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lkotlinx/coroutines/internal/n;)V
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/c0;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/c0;->v()V

    return-void
.end method
