.class public final Lkotlinx/coroutines/flow/internal/f;
.super Lkotlinx/coroutines/flow/internal/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/e;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/c;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/f;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/e;->d:Lkotlinx/coroutines/flow/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/f;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-object v0
.end method

.method public final f(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/e;->d:Lkotlinx/coroutines/flow/f;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
