.class public final Lkotlinx/coroutines/flow/d0;
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

    iput-object p1, p0, Lkotlinx/coroutines/flow/d0;->a:Lvb/d;

    iput-object p2, p0, Lkotlinx/coroutines/flow/d0;->b:Lkotlinx/coroutines/flow/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;-><init>(Lkotlinx/coroutines/flow/d0;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$transform$1$1$emit$1;->label:I

    iget-object p2, p0, Lkotlinx/coroutines/flow/d0;->a:Lvb/d;

    iget-object p0, p0, Lkotlinx/coroutines/flow/d0;->b:Lkotlinx/coroutines/flow/g;

    invoke-interface {p2, p0, p1, v0}, Lvb/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
