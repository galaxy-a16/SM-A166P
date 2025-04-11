.class final Lkotlinx/coroutines/AwaitKt$joinAll$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lrb/c;
    c = "kotlinx.coroutines.AwaitKt"
    f = "Await.kt"
    l = {
        0x36
    }
    m = "joinAll"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iput-object p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/coroutines/AwaitKt$joinAll$1;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/AwaitKt$joinAll$1;-><init>(Lkotlin/coroutines/d;)V

    move-object p0, p1

    :goto_0
    iget-object p1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iget v3, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    check-cast v4, [Lkotlinx/coroutines/y0;

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    add-int/2addr v3, v2

    if-ge v3, v1, :cond_2

    aget-object p1, v4, v3

    iput-object v4, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$0:I

    iput v1, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->I$1:I

    iput v2, p0, Lkotlinx/coroutines/AwaitKt$joinAll$1;->label:I

    check-cast p1, Lkotlinx/coroutines/f1;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/f1;->F(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_2
    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
