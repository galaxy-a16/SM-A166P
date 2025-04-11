.class final Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lrb/c;
    c = "androidx.activity.FullyDrawnReporterKt"
    f = "FullyDrawnReporter.kt"
    l = {
        0xb9
    }
    m = "reportWhenComplete"
.end annotation


# instance fields
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
    .locals 2

    iput-object p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;

    invoke-direct {p1, p0}, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;-><init>(Lkotlin/coroutines/d;)V

    move-object p0, p1

    :goto_0
    iget-object p1, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->result:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->label:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/q;

    :try_start_0
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/activity/q;->b()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/activity/q;->b()V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
