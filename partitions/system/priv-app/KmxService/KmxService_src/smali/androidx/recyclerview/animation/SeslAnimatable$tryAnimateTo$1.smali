.class final Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lvb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lvb/c;"
    }
.end annotation

.annotation runtime Lrb/c;
    c = "androidx.recyclerview.animation.SeslAnimatable$tryAnimateTo$1"
    f = "SeslAnimatable.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $animationSpec:Landroidx/recyclerview/animation/a;

.field final synthetic $targetValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/recyclerview/animation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/animation/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/animation/b;Ljava/lang/Object;Landroidx/recyclerview/animation/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/animation/b;",
            "Ljava/lang/Object;",
            "Landroidx/recyclerview/animation/a;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$targetValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->$targetValue:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, v0, p2}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;-><init>(Landroidx/recyclerview/animation/b;Ljava/lang/Object;Landroidx/recyclerview/animation/a;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/y;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iput v1, p0, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;->label:I

    const/4 p0, 0x0

    throw p0
.end method
