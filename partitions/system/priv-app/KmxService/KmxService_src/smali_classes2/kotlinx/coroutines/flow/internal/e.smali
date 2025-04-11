.class public abstract Lkotlinx/coroutines/flow/internal/e;
.super Lkotlinx/coroutines/flow/internal/c;
.source "SourceFile"


# instance fields
.field public final d:Lkotlinx/coroutines/flow/f;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/c;-><init>(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/e;->d:Lkotlinx/coroutines/flow/f;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    iget v1, p0, Lkotlinx/coroutines/flow/internal/c;->b:I

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/c;->a:Lkotlin/coroutines/i;

    invoke-interface {v1, v2}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object v2

    invoke-static {v2, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/e;->f(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_6

    :goto_0
    move-object v0, p0

    goto :goto_5

    :cond_0
    sget-object v4, Le9/a;->c:Le9/a;

    invoke-interface {v2, v4}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v5

    invoke-interface {v1, v4}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v1

    invoke-static {v5, v1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v1

    instance-of v4, p1, Lkotlinx/coroutines/flow/internal/t;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    instance-of v4, p1, Lkotlinx/coroutines/flow/internal/q;

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Lkotlinx/coroutines/flow/internal/w;

    invoke-direct {v4, p1, v1}, Lkotlinx/coroutines/flow/internal/w;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/i;)V

    move-object p1, v4

    :goto_2
    new-instance v1, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2;

    invoke-direct {v1, p0, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator$collectWithContextUndispatched$2;-><init>(Lkotlinx/coroutines/flow/internal/e;Lkotlin/coroutines/d;)V

    invoke-static {v2}, Lkotlinx/coroutines/internal/b0;->b(Lkotlin/coroutines/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0, v1, p2}, Lh3/a;->Z(Lkotlin/coroutines/i;Ljava/lang/Object;Ljava/lang/Object;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p0, v0

    :goto_3
    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_4
    new-instance v1, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;

    invoke-direct {v1, p1, p0, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlow$collect$2;-><init>(Lkotlinx/coroutines/flow/g;Lkotlinx/coroutines/flow/internal/c;Lkotlin/coroutines/d;)V

    invoke-static {v1, p2}, Lp9/d;->t(Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, v0

    :goto_4
    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_6
    :goto_5
    return-object v0
.end method

.method public abstract f(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/e;->d:Lkotlinx/coroutines/flow/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/flow/internal/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
