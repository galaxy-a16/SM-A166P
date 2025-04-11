.class public final Lkotlinx/coroutines/flow/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# instance fields
.field public final synthetic a:Lkotlin/coroutines/i;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lkotlinx/coroutines/channels/a0;

.field public final synthetic d:Lkotlinx/coroutines/flow/g;

.field public final synthetic e:Lvb/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/i;Ljava/lang/Object;Lkotlinx/coroutines/channels/a0;Lkotlinx/coroutines/flow/g;Lvb/d;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/j;->a:Lkotlin/coroutines/i;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/j;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/j;->c:Lkotlinx/coroutines/channels/a0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/j;->d:Lkotlinx/coroutines/flow/g;

    iput-object p5, p0, Lkotlinx/coroutines/flow/internal/j;->e:Lvb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;-><init>(Lkotlinx/coroutines/flow/internal/j;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;->label:I

    sget-object v3, Lkotlin/s;->a:Lkotlin/s;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    new-instance p2, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1;

    iget-object v6, p0, Lkotlinx/coroutines/flow/internal/j;->c:Lkotlinx/coroutines/channels/a0;

    iget-object v7, p0, Lkotlinx/coroutines/flow/internal/j;->d:Lkotlinx/coroutines/flow/g;

    iget-object v8, p0, Lkotlinx/coroutines/flow/internal/j;->e:Lvb/d;

    const/4 v10, 0x0

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1;-><init>(Lkotlinx/coroutines/channels/a0;Lkotlinx/coroutines/flow/g;Lvb/d;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput v4, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$emit$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/j;->a:Lkotlin/coroutines/i;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/j;->b:Ljava/lang/Object;

    invoke-static {p1, v3, p0, p2, v0}, Lh3/a;->Z(Lkotlin/coroutines/i;Ljava/lang/Object;Ljava/lang/Object;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v3
.end method
