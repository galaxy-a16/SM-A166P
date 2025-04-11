.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lvb/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lvb/d;"
    }
.end annotation

.annotation runtime Lrb/c;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    l = {
        0xde,
        0x163
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_debounceInternal:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f;"
        }
    .end annotation
.end field

.field final synthetic $timeoutMillisSelector:Lvb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvb/b;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lvb/b;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/b;",
            "Lkotlinx/coroutines/flow/f;",
            "Lkotlin/coroutines/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lvb/b;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/f;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/y;

    check-cast p2, Lkotlinx/coroutines/flow/g;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invoke(Lkotlinx/coroutines/y;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/y;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/y;",
            "Lkotlinx/coroutines/flow/g;",
            "Lkotlin/coroutines/d;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lvb/b;

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/f;

    invoke-direct {v0, v1, p0, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;-><init>(Lvb/b;Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/a0;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/g;

    invoke-static/range {p1 .. p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/a0;

    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/g;

    invoke-static/range {p1 .. p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/y;

    iget-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/flow/g;

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;

    iget-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/f;

    invoke-direct {v10, v11, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/d;)V

    const/4 v11, 0x3

    invoke-static {v2, v5, v10, v11}, Lkotlinx/coroutines/channels/t;->s(Lkotlinx/coroutines/y;ILvb/c;I)Lkotlinx/coroutines/channels/x;

    move-result-object v2

    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v11, v9

    move-object v9, v10

    move-object v10, v2

    :goto_0
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v12, Lkotlinx/coroutines/flow/internal/l;->d:Lkotlinx/coroutines/internal/z;

    if-eq v2, v12, :cond_c

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_8

    iget-object v13, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lvb/b;

    sget-object v14, Lkotlinx/coroutines/flow/internal/l;->b:Lkotlinx/coroutines/internal/z;

    if-ne v12, v14, :cond_3

    move-object v12, v8

    :cond_3
    invoke-interface {v13, v12}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    iput-wide v12, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v12, v12, v3

    if-ltz v12, :cond_4

    move v13, v7

    goto :goto_1

    :cond_4
    move v13, v5

    :goto_1
    if-eqz v13, :cond_7

    if-nez v12, :cond_8

    iget-object v12, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v12, v14, :cond_5

    move-object v12, v8

    :cond_5
    iput-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput v7, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    invoke-interface {v11, v12, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    iput-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Debounce timeout should not be negative"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    move-object/from16 v16, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v16

    iput-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput v6, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    new-instance v12, Lkotlinx/coroutines/selects/c;

    invoke-direct {v12, v1}, Lkotlinx/coroutines/selects/c;-><init>(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :try_start_0
    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v13, :cond_a

    iget-wide v13, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;

    invoke-direct {v0, v11, v9, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1;-><init>(Lkotlinx/coroutines/flow/g;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/d;)V

    cmp-long v15, v13, v3

    if-gtz v15, :cond_9

    invoke-virtual {v12}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v13, :cond_a

    :try_start_1
    invoke-static {v7, v0}, Li4/g;->g(ILjava/lang/Object;)V

    invoke-interface {v0, v12}, Lvb/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v13, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-eq v0, v13, :cond_a

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Lkotlinx/coroutines/selects/c;->resumeWith(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance v15, Lr3/l;

    const/16 v3, 0xf

    invoke-direct {v15, v12, v0, v3}, Lr3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12}, Lkotlinx/coroutines/selects/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/a0;->p(Lkotlin/coroutines/i;)Lkotlinx/coroutines/e0;

    move-result-object v0

    invoke-virtual {v12}, Lkotlinx/coroutines/selects/c;->getContext()Lkotlin/coroutines/i;

    move-result-object v3

    invoke-interface {v0, v13, v14, v15, v3}, Lkotlinx/coroutines/e0;->b(JLjava/lang/Runnable;Lkotlin/coroutines/i;)Lkotlinx/coroutines/j0;

    move-result-object v0

    invoke-virtual {v12, v0}, Lkotlinx/coroutines/selects/c;->r(Lkotlinx/coroutines/j0;)V

    :cond_a
    :goto_5
    invoke-interface {v10}, Lkotlinx/coroutines/channels/a0;->e()Lkotlinx/coroutines/selects/e;

    move-result-object v0

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;

    invoke-direct {v3, v9, v11, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)V

    check-cast v0, Lkotlinx/coroutines/channels/i;

    iget v4, v0, Lkotlinx/coroutines/channels/i;->a:I

    iget-object v0, v0, Lkotlinx/coroutines/channels/i;->b:Lkotlinx/coroutines/channels/j;

    packed-switch v4, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    invoke-static {v5, v3, v0, v12}, Lkotlinx/coroutines/channels/j;->t(ILvb/c;Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/selects/g;)V

    goto :goto_7

    :goto_6
    invoke-static {v7, v3, v0, v12}, Lkotlinx/coroutines/channels/j;->t(ILvb/c;Lkotlinx/coroutines/channels/j;Lkotlinx/coroutines/selects/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {v12, v0}, Lkotlinx/coroutines/selects/c;->u(Ljava/lang/Throwable;)V

    :goto_7
    invoke-virtual {v12}, Lkotlinx/coroutines/selects/c;->t()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v2, :cond_b

    return-object v2

    :cond_b
    move-object v0, v1

    move-object v1, v2

    :goto_8
    const-wide/16 v3, 0x0

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
