.class public final Lkotlinx/coroutines/flow/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# instance fields
.field public final synthetic a:Lvb/d;

.field public final synthetic b:Lkotlinx/coroutines/flow/g;


# direct methods
.method public constructor <init>(Lvb/d;Lkotlinx/coroutines/flow/g;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/q0;->a:Lvb/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/q0;->b:Lkotlinx/coroutines/flow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;-><init>(Lkotlinx/coroutines/flow/q0;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/q0;

    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1$1;->label:I

    iget-object p2, p0, Lkotlinx/coroutines/flow/q0;->a:Lvb/d;

    iget-object v2, p0, Lkotlinx/coroutines/flow/q0;->b:Lkotlinx/coroutines/flow/g;

    invoke-interface {p2, v2, p1, v0}, Lvb/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :cond_4
    new-instance p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/g;)V

    throw p1
.end method
