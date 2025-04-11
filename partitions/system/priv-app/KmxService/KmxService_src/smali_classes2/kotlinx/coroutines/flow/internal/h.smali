.class public final Lkotlinx/coroutines/flow/internal/h;
.super Lkotlinx/coroutines/flow/internal/e;
.source "SourceFile"


# instance fields
.field public final e:Lvb/d;


# direct methods
.method public constructor <init>(Lvb/d;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lkotlinx/coroutines/flow/internal/e;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/h;->e:Lvb/d;

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/internal/c;
    .locals 7

    new-instance v6, Lkotlinx/coroutines/flow/internal/h;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/h;->e:Lvb/d;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/e;->d:Lkotlinx/coroutines/flow/f;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/h;-><init>(Lvb/d;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    return-object v6
.end method

.method public final f(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;-><init>(Lkotlinx/coroutines/flow/internal/h;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)V

    invoke-static {v0, p2}, Lp9/d;->t(Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
