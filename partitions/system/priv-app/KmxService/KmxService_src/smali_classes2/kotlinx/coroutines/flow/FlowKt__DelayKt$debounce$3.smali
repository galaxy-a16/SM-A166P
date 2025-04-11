.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# instance fields
.field final synthetic $timeout:Lvb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb/b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lvb/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$3;->$timeout:Lvb/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$3;->$timeout:Lvb/b;

    invoke-interface {p0, p1}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyb/a;

    .line 1
    iget-wide p0, p0, Lyb/a;->a:J

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, v1}, Lyb/a;->c(JJ)I

    move-result v2

    if-lez v2, :cond_2

    long-to-int v0, p0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0, p1}, Lyb/a;->e(J)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    shr-long/2addr p0, v1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lyb/a;->g(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    :goto_1
    move-wide v0, p0

    const-wide/16 p0, 0x1

    cmp-long v2, v0, p0

    if-gez v2, :cond_2

    move-wide v0, p0

    .line 5
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$3;->invoke(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
