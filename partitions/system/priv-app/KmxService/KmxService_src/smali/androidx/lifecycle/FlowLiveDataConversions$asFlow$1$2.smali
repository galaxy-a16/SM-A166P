.class final Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/a;"
    }
.end annotation


# instance fields
.field final synthetic $observer:Landroidx/lifecycle/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m0;"
        }
    .end annotation
.end field

.field final synthetic $this_asFlow:Landroidx/lifecycle/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/h0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/h0;",
            "Landroidx/lifecycle/m0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;->$this_asFlow:Landroidx/lifecycle/h0;

    iput-object p2, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;->$observer:Landroidx/lifecycle/m0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;->invoke()V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/s;->a:Lkotlinx/coroutines/h1;

    .line 3
    check-cast v0, Lkotlinx/coroutines/android/d;

    .line 4
    iget-object v0, v0, Lkotlinx/coroutines/android/d;->f:Lkotlinx/coroutines/android/d;

    .line 5
    new-instance v1, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2$1;

    iget-object v2, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;->$this_asFlow:Landroidx/lifecycle/h0;

    iget-object p0, p0, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2;->$observer:Landroidx/lifecycle/m0;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Landroidx/lifecycle/FlowLiveDataConversions$asFlow$1$2$1;-><init>(Landroidx/lifecycle/h0;Landroidx/lifecycle/m0;Lkotlin/coroutines/d;)V

    const/4 p0, 0x2

    const/4 v2, 0x1

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    .line 6
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    :cond_0
    const/4 p0, 0x2

    and-int/2addr p0, p0

    if-eqz p0, :cond_1

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 7
    :cond_1
    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    invoke-static {p0, v0, v2}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    .line 9
    sget-object v0, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    if-eq p0, v0, :cond_2

    .line 10
    sget-object v4, Le9/a;->c:Le9/a;

    invoke-interface {p0, v4}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    .line 11
    :cond_2
    invoke-virtual {v3}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lkotlinx/coroutines/g1;

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/g1;-><init>(Lkotlin/coroutines/i;Lvb/c;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlinx/coroutines/n1;

    invoke-direct {v0, p0, v2}, Lkotlinx/coroutines/n1;-><init>(Lkotlin/coroutines/i;Z)V

    .line 12
    :goto_0
    invoke-virtual {v3, v1, v0, v0}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-void
.end method
