.class final Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;
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
    c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2"
    f = "ChannelFlow.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collector:Lkotlinx/coroutines/flow/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/g;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/internal/c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/internal/c;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g;",
            "Lkotlinx/coroutines/flow/internal/c;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/g;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/g;

    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/c;

    invoke-direct {v0, v1, p0, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;-><init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/internal/c;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/y;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->label:I

    sget-object v2, Lkotlin/s;->a:Lkotlin/s;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/y;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->$collector:Lkotlinx/coroutines/flow/g;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->this$0:Lkotlinx/coroutines/flow/internal/c;

    iget-object v5, v4, Lkotlinx/coroutines/flow/internal/c;->a:Lkotlin/coroutines/i;

    const/4 v6, -0x3

    iget v7, v4, Lkotlinx/coroutines/flow/internal/c;->b:I

    if-ne v7, v6, :cond_2

    const/4 v7, -0x2

    :cond_2
    sget-object v6, Lkotlinx/coroutines/CoroutineStart;->ATOMIC:Lkotlinx/coroutines/CoroutineStart;

    new-instance v8, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collectToFun$1;-><init>(Lkotlinx/coroutines/flow/internal/c;Lkotlin/coroutines/d;)V

    const/4 v9, 0x4

    iget-object v4, v4, Lkotlinx/coroutines/flow/internal/c;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {v7, v4, v9}, Li4/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/j;

    move-result-object v4

    invoke-interface {p1}, Lkotlinx/coroutines/y;->c()Lkotlin/coroutines/i;

    move-result-object p1

    invoke-static {p1, v5, v3}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p1

    sget-object v5, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    if-eq p1, v5, :cond_3

    sget-object v7, Le9/a;->c:Le9/a;

    invoke-interface {p1, v7}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-interface {p1, v5}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p1

    :cond_3
    new-instance v5, Lkotlinx/coroutines/channels/x;

    invoke-direct {v5, p1, v4}, Lkotlinx/coroutines/channels/x;-><init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/j;)V

    invoke-virtual {v6, v8, v5, v5}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput v3, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;->label:I

    invoke-static {v1, v5, v3, p0}, Lkotlinx/coroutines/flow/s;->d(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/channels/x;ZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    return-object v2
.end method
