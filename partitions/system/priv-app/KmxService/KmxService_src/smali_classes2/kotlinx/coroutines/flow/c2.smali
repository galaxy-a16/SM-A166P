.class public abstract Lkotlinx/coroutines/flow/c2;
.super Lkotlinx/coroutines/flow/internal/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/x1;
.implements Lkotlinx/coroutines/flow/f;
.implements Lkotlinx/coroutines/flow/internal/o;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Lkotlinx/coroutines/channels/BufferOverflow;

.field public h:[Ljava/lang/Object;

.field public i:J

.field public j:J

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/BufferOverflow;)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/flow/internal/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/flow/c2;->e:I

    const v0, 0x7fffffff

    iput v0, p0, Lkotlinx/coroutines/flow/c2;->f:I

    iput-object p1, p0, Lkotlinx/coroutines/flow/c2;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    return-void
.end method

.method public static k(Lkotlinx/coroutines/flow/c2;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 8

    instance-of v0, p2, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;-><init>(Lkotlinx/coroutines/flow/c2;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eqz v2, :cond_5

    const/4 p0, 0x1

    if-eq v2, p0, :cond_4

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/y0;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d2;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/g;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c2;

    :try_start_0
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, p1

    move-object p1, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/y0;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d2;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/g;

    iget-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/c2;

    :try_start_1
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_4
    iget-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/d2;

    iget-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/g;

    iget-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/c2;

    :try_start_2
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_5
    invoke-static {p2}, Lkotlin/h;->e(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/a;->e()Lkotlinx/coroutines/flow/internal/b;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/d2;

    :goto_1
    :try_start_3
    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v2

    sget-object v5, Lc3/l;->f:Lc3/l;

    invoke-interface {v2, v5}, Lkotlin/coroutines/i;->get(Lkotlin/coroutines/h;)Lkotlin/coroutines/g;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/y0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v5, p0

    move-object p0, v2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v5, p1}, Lkotlinx/coroutines/flow/c2;->s(Lkotlinx/coroutines/flow/d2;)Ljava/lang/Object;

    move-result-object p2

    sget-object v6, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/internal/z;

    if-ne p2, v6, :cond_7

    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-virtual {v5, p1, v0}, Lkotlinx/coroutines/flow/c2;->i(Lkotlinx/coroutines/flow/d2;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_7
    if-eqz p0, :cond_9

    invoke-interface {p0}, Lkotlinx/coroutines/y0;->isActive()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    check-cast p0, Lkotlinx/coroutines/f1;

    invoke-virtual {p0}, Lkotlinx/coroutines/f1;->u()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_4
    iput-object v5, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/SharedFlowImpl$collect$1;->label:I

    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    :goto_5
    move-object v2, v5

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p2

    :goto_6
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/a;->h(Lkotlinx/coroutines/flow/internal/b;)V

    throw p1
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/c2;->k(Lkotlinx/coroutines/flow/c2;Lkotlinx/coroutines/flow/g;Lkotlin/coroutines/d;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v2, v2

    add-long v5, v0, v2

    iget-wide v7, p0, Lkotlinx/coroutines/flow/c2;->j:J

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v2, v2

    add-long v9, v0, v2

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v0

    iget v2, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Lkotlinx/coroutines/flow/c2;->l:I

    int-to-long v2, v2

    add-long v11, v0, v2

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lkotlinx/coroutines/flow/c2;->t(JJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lkotlinx/coroutines/flow/internal/l;->a:[Lkotlin/coroutines/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->q(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/c2;->n([Lkotlin/coroutines/d;)[Lkotlin/coroutines/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    monitor-exit p0

    array-length p0, v0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    sget-object v3, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/f;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/flow/internal/f;-><init>(Lkotlinx/coroutines/flow/f;Lkotlin/coroutines/i;ILkotlinx/coroutines/channels/BufferOverflow;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {p2}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    const/4 v7, 0x1

    invoke-direct {v0, v7, p2}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->n()V

    sget-object p2, Lkotlinx/coroutines/flow/internal/l;->a:[Lkotlin/coroutines/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->q(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/c2;->n([Lkotlin/coroutines/d;)[Lkotlin/coroutines/d;

    move-result-object p1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    new-instance v8, Lkotlinx/coroutines/flow/a2;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v1

    iget v3, p0, Lkotlinx/coroutines/flow/c2;->k:I

    iget v4, p0, Lkotlinx/coroutines/flow/c2;->l:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/a2;-><init>(Lkotlinx/coroutines/flow/c2;JLjava/lang/Object;Lkotlinx/coroutines/h;)V

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/flow/c2;->m(Ljava/lang/Object;)V

    iget p1, p0, Lkotlinx/coroutines/flow/c2;->l:I

    add-int/2addr p1, v7

    iput p1, p0, Lkotlinx/coroutines/flow/c2;->l:I

    iget p1, p0, Lkotlinx/coroutines/flow/c2;->f:I

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/flow/c2;->n([Lkotlin/coroutines/d;)[Lkotlin/coroutines/d;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object p1, p2

    move-object p2, v8

    :goto_0
    monitor-exit p0

    if-eqz p2, :cond_3

    new-instance p0, Lkotlinx/coroutines/e;

    invoke-direct {p0, p2, v7}, Lkotlinx/coroutines/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h;->p(Lvb/b;)V

    :cond_3
    array-length p0, p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p0, :cond_5

    aget-object v1, p1, p2

    if-eqz v1, :cond_4

    sget-object v2, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    :goto_2
    if-ne p0, p1, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    :goto_4
    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Lkotlinx/coroutines/flow/internal/b;
    .locals 0

    new-instance p0, Lkotlinx/coroutines/flow/d2;

    invoke-direct {p0}, Lkotlinx/coroutines/flow/d2;-><init>()V

    return-object p0
.end method

.method public final g()[Lkotlinx/coroutines/flow/internal/b;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlinx/coroutines/flow/d2;

    return-object p0
.end method

.method public final i(Lkotlinx/coroutines/flow/d2;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lkotlinx/coroutines/h;

    invoke-static {p2}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/h;-><init>(ILkotlin/coroutines/d;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->n()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->r(Lkotlinx/coroutines/flow/d2;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    iput-object v0, p1, Lkotlinx/coroutines/flow/d2;->b:Lkotlinx/coroutines/h;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/h;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    invoke-virtual {v0}, Lkotlinx/coroutines/h;->m()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()V
    .locals 7

    iget v0, p0, Lkotlinx/coroutines/flow/c2;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lkotlinx/coroutines/flow/c2;->l:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    :goto_0
    iget v1, p0, Lkotlinx/coroutines/flow/c2;->l:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v1

    iget v3, p0, Lkotlinx/coroutines/flow/c2;->k:I

    iget v4, p0, Lkotlinx/coroutines/flow/c2;->l:I

    add-int/2addr v3, v4

    int-to-long v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    long-to-int v1, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v1, v0, v1

    sget-object v2, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/internal/z;

    if-ne v1, v2, :cond_1

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lkotlinx/coroutines/flow/c2;->l:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v1

    iget v3, p0, Lkotlinx/coroutines/flow/c2;->k:I

    iget v4, p0, Lkotlinx/coroutines/flow/c2;->l:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v1

    long-to-int v1, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lkotlinx/coroutines/flow/c2;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/coroutines/flow/c2;->k:I

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lkotlinx/coroutines/flow/c2;->i:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lkotlinx/coroutines/flow/c2;->i:J

    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/flow/c2;->j:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    iget v2, p0, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/a;->a:[Lkotlinx/coroutines/flow/internal/b;

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    check-cast v5, Lkotlinx/coroutines/flow/d2;

    iget-wide v6, v5, Lkotlinx/coroutines/flow/d2;->a:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    iput-wide v0, v5, Lkotlinx/coroutines/flow/d2;->a:J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lkotlinx/coroutines/flow/c2;->j:J

    :cond_3
    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lkotlinx/coroutines/flow/c2;->k:I

    iget v1, p0, Lkotlinx/coroutines/flow/c2;->l:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v1}, Lkotlinx/coroutines/flow/c2;->p(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v1}, Lkotlinx/coroutines/flow/c2;->p(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int p0, v2

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    aput-object p1, v1, p0

    return-void
.end method

.method public final n([Lkotlin/coroutines/d;)[Lkotlin/coroutines/d;
    .locals 10

    array-length v0, p1

    iget v1, p0, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/a;->a:[Lkotlinx/coroutines/flow/internal/b;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    check-cast v4, Lkotlinx/coroutines/flow/d2;

    iget-object v5, v4, Lkotlinx/coroutines/flow/d2;->b:Lkotlinx/coroutines/h;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/flow/c2;->r(Lkotlinx/coroutines/flow/d2;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    array-length v6, p1

    if-lt v0, v6, :cond_1

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(this, newSize)"

    invoke-static {p1, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v6, p1

    check-cast v6, [Lkotlin/coroutines/d;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lkotlinx/coroutines/flow/d2;->b:Lkotlinx/coroutines/h;

    move v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, [Lkotlin/coroutines/d;

    return-object p1
.end method

.method public final o()J
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/flow/c2;->j:J

    iget-wide v2, p0, Lkotlinx/coroutines/flow/c2;->i:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    new-array v1, p2, [Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v2

    :goto_1
    if-ge v0, p1, :cond_2

    int-to-long v4, v0

    add-long/2addr v4, v2

    long-to-int p0, v4

    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, p0

    aget-object v4, p3, v4

    add-int/lit8 v5, p2, -0x1

    and-int/2addr p0, v5

    aput-object v4, v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Ljava/lang/Object;)Z
    .locals 12

    iget v1, p0, Lkotlinx/coroutines/flow/internal/a;->b:I

    iget v2, p0, Lkotlinx/coroutines/flow/c2;->e:I

    const/4 v9, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->m(Ljava/lang/Object;)V

    iget v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    add-int/2addr v1, v9

    iput v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->l()V

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v1

    iget v3, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lkotlinx/coroutines/flow/c2;->j:J

    :goto_0
    return v9

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    iget v3, p0, Lkotlinx/coroutines/flow/c2;->f:I

    if-lt v1, v3, :cond_5

    iget-wide v4, p0, Lkotlinx/coroutines/flow/c2;->j:J

    iget-wide v6, p0, Lkotlinx/coroutines/flow/c2;->i:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    sget-object v1, Lkotlinx/coroutines/flow/b2;->a:[I

    iget-object v4, p0, Lkotlinx/coroutines/flow/c2;->g:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v9, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    return v9

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->m(Ljava/lang/Object;)V

    iget v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    add-int/2addr v1, v9

    iput v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    if-le v1, v3, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->l()V

    :cond_6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v3

    iget v1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lkotlinx/coroutines/flow/c2;->i:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    if-le v1, v2, :cond_7

    const-wide/16 v1, 0x1

    add-long/2addr v1, v5

    iget-wide v3, p0, Lkotlinx/coroutines/flow/c2;->j:J

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v5

    iget v7, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v7

    iget v10, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lkotlinx/coroutines/flow/c2;->l:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/c2;->t(JJJJ)V

    :cond_7
    return v9
.end method

.method public final r(Lkotlinx/coroutines/flow/d2;)J
    .locals 6

    iget-wide v0, p1, Lkotlinx/coroutines/flow/d2;->a:J

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v2

    iget p1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-wide v0

    :cond_0
    iget p1, p0, Lkotlinx/coroutines/flow/c2;->f:I

    const-wide/16 v2, -0x1

    if-lez p1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    return-wide v2

    :cond_2
    iget p0, p0, Lkotlinx/coroutines/flow/c2;->l:I

    if-nez p0, :cond_3

    return-wide v2

    :cond_3
    return-wide v0
.end method

.method public final s(Lkotlinx/coroutines/flow/d2;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlinx/coroutines/flow/internal/l;->a:[Lkotlin/coroutines/d;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/c2;->r(Lkotlinx/coroutines/flow/d2;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/internal/z;

    goto :goto_0

    :cond_0
    iget-wide v3, p1, Lkotlinx/coroutines/flow/d2;->a:J

    iget-object v0, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    instance-of v5, v0, Lkotlinx/coroutines/flow/a2;

    if-eqz v5, :cond_1

    check-cast v0, Lkotlinx/coroutines/flow/a2;

    iget-object v0, v0, Lkotlinx/coroutines/flow/a2;->c:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lkotlinx/coroutines/flow/d2;->a:J

    invoke-virtual {p0, v3, v4}, Lkotlinx/coroutines/flow/c2;->u(J)[Lkotlin/coroutines/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    array-length p0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    sget-object v3, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final t(JJJJ)V
    .locals 7

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v4}, Li4/f;->g(Ljava/lang/Object;)V

    long-to-int v5, v2

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lkotlinx/coroutines/flow/c2;->i:J

    iput-wide p3, p0, Lkotlinx/coroutines/flow/c2;->j:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lkotlinx/coroutines/flow/c2;->k:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lkotlinx/coroutines/flow/c2;->l:I

    return-void
.end method

.method public final u(J)[Lkotlin/coroutines/d;
    .locals 22

    move-object/from16 v9, p0

    iget-wide v0, v9, Lkotlinx/coroutines/flow/c2;->j:J

    cmp-long v0, p1, v0

    sget-object v1, Lkotlinx/coroutines/flow/internal/l;->a:[Lkotlin/coroutines/d;

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v2

    iget v0, v9, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    const-wide/16 v6, 0x1

    iget v0, v9, Lkotlinx/coroutines/flow/c2;->f:I

    if-nez v0, :cond_1

    iget v8, v9, Lkotlinx/coroutines/flow/c2;->l:I

    if-lez v8, :cond_1

    add-long/2addr v4, v6

    :cond_1
    iget v8, v9, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-eqz v8, :cond_3

    iget-object v8, v9, Lkotlinx/coroutines/flow/internal/a;->a:[Lkotlinx/coroutines/flow/internal/b;

    if-eqz v8, :cond_3

    array-length v11, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v13, v8, v12

    if-eqz v13, :cond_2

    check-cast v13, Lkotlinx/coroutines/flow/d2;

    iget-wide v13, v13, Lkotlinx/coroutines/flow/d2;->a:J

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-ltz v15, :cond_2

    cmp-long v15, v13, v4

    if-gez v15, :cond_2

    move-wide v4, v13

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    iget-wide v11, v9, Lkotlinx/coroutines/flow/c2;->j:J

    cmp-long v8, v4, v11

    if-gtz v8, :cond_4

    return-object v1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/c2;->o()J

    move-result-wide v11

    iget v8, v9, Lkotlinx/coroutines/flow/c2;->k:I

    int-to-long v13, v8

    add-long/2addr v11, v13

    iget v8, v9, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-lez v8, :cond_5

    sub-long v13, v11, v4

    long-to-int v8, v13

    iget v13, v9, Lkotlinx/coroutines/flow/c2;->l:I

    sub-int v8, v0, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_5
    iget v8, v9, Lkotlinx/coroutines/flow/c2;->l:I

    :goto_1
    iget v13, v9, Lkotlinx/coroutines/flow/c2;->l:I

    int-to-long v13, v13

    add-long/2addr v13, v11

    sget-object v15, Lkotlinx/coroutines/flow/s;->a:Lkotlinx/coroutines/internal/z;

    if-lez v8, :cond_a

    new-array v1, v8, [Lkotlin/coroutines/d;

    iget-object v10, v9, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v10}, Li4/f;->g(Ljava/lang/Object;)V

    move-wide v6, v11

    const/16 v17, 0x0

    :goto_2
    cmp-long v18, v11, v13

    if-gez v18, :cond_8

    move-wide/from16 v18, v4

    long-to-int v4, v11

    array-length v5, v10

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v4

    aget-object v5, v10, v5

    if-eq v5, v15, :cond_7

    if-eqz v5, :cond_6

    check-cast v5, Lkotlinx/coroutines/flow/a2;

    move-wide/from16 v20, v13

    add-int/lit8 v13, v17, 0x1

    iget-object v14, v5, Lkotlinx/coroutines/flow/a2;->d:Lkotlin/coroutines/d;

    aput-object v14, v1, v17

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    and-int/2addr v4, v14

    aput-object v15, v10, v4

    long-to-int v4, v6

    array-length v14, v10

    add-int/lit8 v14, v14, -0x1

    and-int/2addr v4, v14

    iget-object v5, v5, Lkotlinx/coroutines/flow/a2;->c:Ljava/lang/Object;

    aput-object v5, v10, v4

    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    if-ge v13, v8, :cond_9

    move/from16 v17, v13

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-wide/from16 v20, v13

    const-wide/16 v4, 0x1

    :goto_3
    add-long/2addr v11, v4

    move-wide/from16 v4, v18

    move-wide/from16 v13, v20

    goto :goto_2

    :cond_8
    move-wide/from16 v18, v4

    move-wide/from16 v20, v13

    :cond_9
    move-wide v11, v6

    goto :goto_4

    :cond_a
    move-wide/from16 v18, v4

    move-wide/from16 v20, v13

    :goto_4
    move-object v10, v1

    sub-long v1, v11, v2

    long-to-int v1, v1

    iget v2, v9, Lkotlinx/coroutines/flow/internal/a;->b:I

    if-nez v2, :cond_b

    move-wide v3, v11

    goto :goto_5

    :cond_b
    move-wide/from16 v3, v18

    :goto_5
    iget-wide v5, v9, Lkotlinx/coroutines/flow/c2;->i:J

    iget v2, v9, Lkotlinx/coroutines/flow/c2;->e:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v1, v1

    sub-long v1, v11, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    if-nez v0, :cond_c

    cmp-long v0, v1, v20

    if-gez v0, :cond_c

    iget-object v0, v9, Lkotlinx/coroutines/flow/c2;->h:[Ljava/lang/Object;

    invoke-static {v0}, Li4/f;->g(Ljava/lang/Object;)V

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    invoke-static {v0, v15}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    add-long/2addr v1, v5

    :cond_c
    move-wide v5, v11

    move-object/from16 v0, p0

    move-wide/from16 v7, v20

    invoke-virtual/range {v0 .. v8}, Lkotlinx/coroutines/flow/c2;->t(JJJJ)V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/flow/c2;->j()V

    array-length v0, v10

    const/4 v1, 0x1

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    xor-int/2addr v0, v1

    if-eqz v0, :cond_e

    invoke-virtual {v9, v10}, Lkotlinx/coroutines/flow/c2;->n([Lkotlin/coroutines/d;)[Lkotlin/coroutines/d;

    move-result-object v10

    :cond_e
    return-object v10
.end method
