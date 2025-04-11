.class final Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;
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
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    l = {
        0xd6,
        0xda,
        0xdb,
        0xe1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $shared:Lkotlinx/coroutines/flow/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/x1;"
        }
    .end annotation
.end field

.field final synthetic $started:Lkotlinx/coroutines/flow/f2;

.field final synthetic $upstream:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/f2;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/x1;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/f2;",
            "Lkotlinx/coroutines/flow/f;",
            "Lkotlinx/coroutines/flow/x1;",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/f2;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/f;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    iput-object p4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d;",
            ")",
            "Lkotlin/coroutines/d;"
        }
    .end annotation

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/f2;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/f;

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;-><init>(Lkotlinx/coroutines/flow/f2;Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/x1;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/y;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->invoke(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    sget-object v2, Lkotlin/s;->a:Lkotlin/s;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$started:Lkotlinx/coroutines/flow/f2;

    sget-object v1, Lkotlinx/coroutines/flow/e2;->a:Lkotlinx/coroutines/flow/g2;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    iput v6, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    return-object v0

    :cond_4
    sget-object v1, Lkotlinx/coroutines/flow/e2;->b:Lkotlinx/coroutines/flow/i2;

    const/4 v6, 0x0

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    check-cast p1, Lkotlinx/coroutines/flow/internal/a;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lkotlinx/coroutines/flow/internal/a;->d:Lkotlinx/coroutines/flow/internal/v;

    if-nez v1, :cond_5

    new-instance v1, Lkotlinx/coroutines/flow/internal/v;

    iget v3, p1, Lkotlinx/coroutines/flow/internal/a;->b:I

    invoke-direct {v1, v3}, Lkotlinx/coroutines/flow/internal/v;-><init>(I)V

    iput-object v1, p1, Lkotlinx/coroutines/flow/internal/a;->d:Lkotlinx/coroutines/flow/internal/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p1

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$1;

    invoke-direct {p1, v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$1;-><init>(Lkotlin/coroutines/d;)V

    iput v5, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-static {v1, p1, p0}, Lkotlinx/coroutines/flow/s;->f(Lkotlinx/coroutines/flow/internal/v;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/f;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    iput v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_7
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    check-cast v1, Lkotlinx/coroutines/flow/internal/a;

    monitor-enter v1

    :try_start_1
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/a;->d:Lkotlinx/coroutines/flow/internal/v;

    if-nez v4, :cond_8

    new-instance v4, Lkotlinx/coroutines/flow/internal/v;

    iget v5, v1, Lkotlinx/coroutines/flow/internal/a;->b:I

    invoke-direct {v4, v5}, Lkotlinx/coroutines/flow/internal/v;-><init>(I)V

    iput-object v4, v1, Lkotlinx/coroutines/flow/internal/a;->d:Lkotlinx/coroutines/flow/internal/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    monitor-exit v1

    invoke-interface {p1, v4}, Lkotlinx/coroutines/flow/f2;->a(Lkotlinx/coroutines/flow/internal/v;)Lkotlinx/coroutines/flow/f;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/y;->a:Lvb/b;

    instance-of v1, p1, Lkotlinx/coroutines/flow/k2;

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    sget-object v1, Lkotlinx/coroutines/flow/y;->a:Lvb/b;

    sget-object v4, Lkotlinx/coroutines/flow/y;->b:Lvb/c;

    instance-of v5, p1, Lkotlinx/coroutines/flow/e;

    if-eqz v5, :cond_a

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/flow/e;

    iget-object v7, v5, Lkotlinx/coroutines/flow/e;->b:Lvb/b;

    if-ne v7, v1, :cond_a

    iget-object v1, v5, Lkotlinx/coroutines/flow/e;->c:Lvb/c;

    if-ne v1, v4, :cond_a

    goto :goto_2

    :cond_a
    new-instance v1, Lkotlinx/coroutines/flow/e;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/e;-><init>(Lkotlinx/coroutines/flow/f;)V

    move-object p1, v1

    :goto_2
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$2;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$upstream:Lkotlinx/coroutines/flow/f;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$shared:Lkotlinx/coroutines/flow/x1;

    iget-object v7, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->$initialValue:Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v7, v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1$2;-><init>(Lkotlinx/coroutines/flow/f;Lkotlinx/coroutines/flow/x1;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput v3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/u0;->a(Lkotlinx/coroutines/flow/f;Lvb/c;)Lkotlinx/coroutines/flow/internal/h;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4, v1}, Lkotlinx/coroutines/flow/internal/o;->d(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/internal/q;->a:Lkotlinx/coroutines/flow/internal/q;

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/f;->a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_b

    goto :goto_3

    :cond_b
    move-object p0, v2

    :goto_3
    if-ne p0, v0, :cond_c

    goto :goto_4

    :cond_c
    move-object p0, v2

    :goto_4
    if-ne p0, v0, :cond_d

    return-object v0

    :cond_d
    :goto_5
    return-object v2

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method
