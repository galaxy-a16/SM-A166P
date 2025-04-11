.class public abstract synthetic Lkotlinx/coroutines/channels/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;

.field public static final b:Lkotlinx/coroutines/internal/z;

.field public static final c:Lkotlinx/coroutines/internal/z;

.field public static final d:Lkotlinx/coroutines/internal/z;

.field public static final e:Lkotlinx/coroutines/internal/z;

.field public static final f:Lkotlinx/coroutines/internal/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->d:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "ENQUEUE_FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->e:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/t;->f:Lkotlinx/coroutines/internal/z;

    return-void
.end method

.method public static final a(JJLkotlinx/coroutines/channels/x;Lkotlin/coroutines/d;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 6

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/d0;

    invoke-static {p5}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/d0;

    invoke-static {p5}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lkotlinx/coroutines/channels/d0;

    invoke-static {p5}, Lkotlin/h;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lkotlin/h;->e(Ljava/lang/Object;)V

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/a0;->i(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    sget-object p2, Lkotlin/s;->a:Lkotlin/s;

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p4, p2, v0}, Lkotlinx/coroutines/channels/d0;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p2, p4

    :goto_2
    iput-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/a0;->i(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    move-object p4, p2

    goto :goto_1
.end method

.method public static final b(JJLkotlinx/coroutines/channels/x;Lkotlin/coroutines/d;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 21

    move-object/from16 v0, p5

    instance-of v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/d0;

    invoke-static {v0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    move-object v0, v3

    :cond_3
    move-wide/from16 v19, v7

    move-wide v7, v9

    move-wide/from16 v9, v19

    goto :goto_3

    :cond_4
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/d0;

    invoke-static {v0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_4

    :cond_5
    iget-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iget-object v3, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/d0;

    invoke-static {v0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    move-object v0, v3

    move-wide v10, v9

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/a0;->j(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-object/from16 v0, p4

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v10, p0

    iput-wide v10, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v8, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    move-wide/from16 v12, p2

    invoke-static {v12, v13, v1}, Lkotlinx/coroutines/a0;->i(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    goto :goto_5

    :cond_7
    move-wide v7, v8

    :goto_2
    invoke-static {v10, v11}, Lkotlinx/coroutines/a0;->j(J)J

    move-result-wide v9

    :goto_3
    add-long/2addr v7, v9

    sget-object v3, Lkotlin/s;->a:Lkotlin/s;

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v6, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {v0, v3, v1}, Lkotlinx/coroutines/channels/d0;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_8

    goto :goto_5

    :cond_8
    move-wide/from16 v19, v7

    move-wide v7, v9

    move-wide/from16 v9, v19

    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v13, v9, v11

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-gez v3, :cond_9

    move-wide v13, v15

    :cond_9
    cmp-long v3, v13, v15

    const-wide/32 v17, 0xf4240

    if-nez v3, :cond_b

    cmp-long v3, v7, v15

    if-eqz v3, :cond_b

    sub-long v9, v11, v9

    rem-long/2addr v9, v7

    sub-long v9, v7, v9

    add-long/2addr v11, v9

    div-long v9, v9, v17

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v11, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v5, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v9, v10, v1}, Lkotlinx/coroutines/a0;->i(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    goto :goto_5

    :cond_a
    move-wide v9, v7

    move-wide v7, v11

    goto :goto_3

    :cond_b
    div-long v13, v13, v17

    iput-object v0, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v9, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v7, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput v4, v1, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v13, v14, v1}, Lkotlinx/coroutines/a0;->i(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    :goto_5
    return-object v2
.end method

.method public static final c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final d(Lkotlinx/coroutines/channels/y;Lvb/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lvb/a;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/y;

    :try_start_0
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object p2

    sget-object v2, Lc3/l;->f:Lc3/l;

    invoke-interface {p2, v2}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object p2

    if-ne p2, p0, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_5

    :try_start_1
    iput-object p0, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$1;->label:I

    new-instance p2, Lkotlinx/coroutines/h;

    invoke-static {v0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-direct {p2, v3, v0}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    invoke-virtual {p2}, Lkotlinx/coroutines/h;->n()V

    new-instance v0, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(Lkotlinx/coroutines/g;)V

    check-cast p0, Lkotlinx/coroutines/channels/x;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/x;->f(Lvb/b;)V

    invoke-virtual {p2}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    invoke-interface {p1}, Lvb/a;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :goto_3
    invoke-interface {p1}, Lvb/a;->invoke()Ljava/lang/Object;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "awaitClose() can only be invoked from the producer context"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v4

    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_2
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final f(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const-string v3, "ReceiveChannel doesn\'t contain element at index "

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$1:I

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/a;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v7}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v9, v2, 0x1

    if-ne v6, v2, :cond_1

    invoke-static {v8, v4}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    :try_start_2
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$0:I

    iput v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$1:I

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    move v2, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v8

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    move-object v8, v4

    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v8, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final g(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$1:I

    iget v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$0:I

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v6}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v2, 0x1

    if-ne v5, v2, :cond_1

    invoke-static {v7, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    :try_start_2
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$0:I

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$1:I

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    move v2, v8

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v7

    goto :goto_2

    :cond_3
    invoke-static {v7, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    move-object v7, v3

    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v7, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final h(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {v6, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_3
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/d0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/d0;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    invoke-interface {v7, p0, v0}, Lkotlinx/coroutines/channels/d0;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :catchall_0
    move-exception p0

    move-object v3, v6

    goto :goto_2

    :cond_5
    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v7

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    move-object v6, v3

    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v6, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final j(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v1, "ReceiveChannel is empty."

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final k(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/a;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-static {v0, v2}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v2}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final l(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$0:Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v7, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v0

    :cond_2
    :try_start_1
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v4

    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_3
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/lang/Integer;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final m(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$2:Ljava/lang/Object;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :goto_1
    :try_start_2
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, v5

    move-object v5, p0

    move-object p0, v6

    move-object v6, v7

    :goto_2
    :try_start_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, v5

    move-object v5, v6

    goto :goto_1

    :cond_4
    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :goto_3
    move-object v5, v6

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :cond_5
    :try_start_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ReceiveChannel is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :goto_4
    move-object v5, v3

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v5, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final n(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v8, p0}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_2
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, v4

    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_3
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance p0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final o(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p0, :cond_3

    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    :goto_1
    :try_start_3
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, v5

    move-object v5, p0

    move-object p0, v6

    move-object v6, v7

    :goto_2
    :try_start_4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p0, v5

    move-object v5, v6

    goto :goto_1

    :cond_5
    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :goto_3
    move-object v5, v6

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :goto_4
    move-object v5, v3

    :goto_5
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v5, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final p(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$3:Ljava/lang/Object;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/Comparator;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_3

    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v5

    move-object v5, v2

    :goto_1
    move-object v2, p0

    :cond_4
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v7, v2, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-gez v8, :cond_4

    goto :goto_1

    :cond_6
    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p0

    move-object v3, v6

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :goto_3
    move-object v6, v3

    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v6, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final q(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$3:Ljava/lang/Object;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/Comparator;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/channels/a0;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_3

    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v5

    move-object v5, v2

    :goto_1
    move-object v2, p0

    :cond_4
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v7, v2, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v8, :cond_4

    goto :goto_1

    :cond_6
    invoke-static {v6, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p0

    move-object v3, v6

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :goto_3
    move-object v6, v3

    :goto_4
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v6, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final r(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v2, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static s(Lkotlinx/coroutines/y;ILvb/c;I)Lkotlinx/coroutines/channels/x;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    sget-object p3, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    const/4 v2, 0x4

    invoke-static {p1, p3, v2}, Li4/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/channels/j;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/coroutines/y;->c()Lkotlin/coroutines/i;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, v0, p3}, Lkotlinx/coroutines/a0;->m(Lkotlin/coroutines/i;Lkotlin/coroutines/i;Z)Lkotlin/coroutines/i;

    move-result-object p0

    sget-object p3, Lkotlinx/coroutines/h0;->a:Lkotlinx/coroutines/scheduling/e;

    if-eq p0, p3, :cond_2

    sget-object v0, Le9/a;->c:Le9/a;

    invoke-interface {p0, v0}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0, p3}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object p0

    :cond_2
    new-instance p3, Lkotlinx/coroutines/channels/x;

    invoke-direct {p3, p0, p1}, Lkotlinx/coroutines/channels/x;-><init>(Lkotlin/coroutines/i;Lkotlinx/coroutines/channels/j;)V

    invoke-virtual {v1, p2, p3, p3}, Lkotlinx/coroutines/CoroutineStart;->invoke(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-object p3
.end method

.method public static final t(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p0

    move-object p0, v0

    move-object v0, v5

    :goto_1
    :try_start_2
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_4

    invoke-static {v0, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReceiveChannel has more than one element."

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ReceiveChannel is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final u(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/a0;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    :try_start_1
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_3

    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v1, p0

    move-object p0, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    if-eqz p0, :cond_5

    return-object v3

    :cond_5
    return-object v1

    :catchall_1
    move-exception p0

    move-object v3, v5

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :goto_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final v(Lkotlinx/coroutines/channels/a0;Lkotlinx/coroutines/channels/y;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/a;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/a0;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/d0;

    :try_start_0
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, p0

    move-object p0, p1

    move-object p1, v2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/a;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/a0;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/d0;

    :try_start_1
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/a0;->iterator()Lkotlinx/coroutines/channels/a;

    move-result-object p2

    :goto_1
    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    invoke-virtual {p2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v2

    move-object v2, v5

    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p2

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/channels/d0;->i(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    :cond_6
    const/4 p0, 0x0

    invoke-static {p1, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p1, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final w(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_2
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final x(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toList$1;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_2
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    invoke-static {v7}, Ll9/b;->M(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final y(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;-><init>(Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/a;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/a0;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    :try_start_0
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :cond_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/a;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$2:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/channels/a;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    return-object v1

    :cond_2
    invoke-static {v5, v3}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0}, Lkotlin/h;->e(Ljava/lang/Object;)V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v3, p0}, Ll9/b;->N(Lkotlinx/coroutines/channels/a0;Ljava/lang/Throwable;)V

    throw v0
.end method
