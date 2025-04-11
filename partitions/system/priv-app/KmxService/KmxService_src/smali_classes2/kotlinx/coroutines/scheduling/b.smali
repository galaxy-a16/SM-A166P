.class public final Lkotlinx/coroutines/scheduling/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lkotlinx/coroutines/scheduling/m;

.field public b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field public c:J

.field public d:J

.field public e:I

.field public f:Z

.field public final synthetic g:Lkotlinx/coroutines/scheduling/c;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field volatile synthetic workerCtl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/b;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/c;I)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    sget-object p1, Lkotlinx/coroutines/scheduling/c;->k:Lkotlinx/coroutines/internal/z;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lkotlin/random/e;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->e:I

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/c;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    sget-object v4, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_8

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget p1, p1, Lkotlinx/coroutines/scheduling/c;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    if-nez v3, :cond_9

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/b;->e()Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/b;->i(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object p1

    :goto_5
    return-object p1

    :cond_a
    if-eqz p1, :cond_c

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_d

    :cond_c
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/o;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    :cond_d
    if-nez v0, :cond_e

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/b;->i(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/b;->e:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/b;->e:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lkotlinx/coroutines/scheduling/i;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    move-result v0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->e:Lkotlinx/coroutines/scheduling/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/o;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/i;

    return-object p0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/c;->f:Lkotlinx/coroutines/scheduling/f;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/o;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/i;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/c;->e:Lkotlinx/coroutines/scheduling/f;

    goto :goto_0
.end method

.method public final f(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method

.method public final i(Z)Lkotlinx/coroutines/scheduling/i;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/c;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/b;->d(I)I

    move-result v2

    iget-object v4, v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    const/4 v7, 0x0

    move v8, v7

    const-wide v9, 0x7fffffffffffffffL

    :goto_0
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_7

    const/4 v13, 0x1

    add-int/2addr v2, v13

    if-le v2, v1, :cond_1

    move v2, v13

    :cond_1
    iget-object v13, v4, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/internal/w;

    invoke-virtual {v13, v2}, Lkotlinx/coroutines/internal/w;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/b;

    if-eqz v13, :cond_6

    if-eq v13, v0, :cond_6

    iget-object v14, v0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    iget-object v13, v13, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    const-wide/16 v15, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/scheduling/m;->e(Lkotlinx/coroutines/scheduling/m;)J

    move-result-wide v13

    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v14, v5, v7}, Lkotlinx/coroutines/scheduling/m;->a(Lkotlinx/coroutines/scheduling/i;Z)Lkotlinx/coroutines/scheduling/i;

    move-wide v13, v15

    goto :goto_1

    :cond_3
    invoke-virtual {v14, v13, v7}, Lkotlinx/coroutines/scheduling/m;->f(Lkotlinx/coroutines/scheduling/m;Z)J

    move-result-wide v13

    :goto_1
    cmp-long v5, v13, v15

    if-nez v5, :cond_5

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/b;->a:Lkotlinx/coroutines/scheduling/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/scheduling/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/i;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/m;->d()Lkotlinx/coroutines/scheduling/i;

    move-result-object v1

    :cond_4
    return-object v1

    :cond_5
    cmp-long v5, v13, v11

    if-lez v5, :cond_6

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v9, v5

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move-wide v9, v11

    :goto_2
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/b;->d:J

    return-object v3
.end method

.method public final run()V
    .locals 15

    :cond_0
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_1
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v2, v3, :cond_15

    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/b;->f:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/b;->a(Z)Lkotlinx/coroutines/scheduling/i;

    move-result-object v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_8

    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    iget-object v0, v2, Lkotlinx/coroutines/scheduling/i;->b:Lcom/google/gson/internal/c;

    iget v0, v0, Lcom/google/gson/internal/c;->a:I

    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v4, :cond_2

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v1, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/c;->x()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v4, v1, Lkotlinx/coroutines/scheduling/c;->controlState:J

    invoke-virtual {v1, v4, v5}, Lkotlinx/coroutines/scheduling/c;->t(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/c;->x()Z

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v4, -0x200000

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v0, v3, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_8
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/b;->f:Z

    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-nez v1, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->d:J

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/scheduling/c;->k:Lkotlinx/coroutines/internal/z;

    if-eq v2, v6, :cond_b

    move v2, v3

    goto :goto_4

    :cond_b
    move v2, v0

    :goto_4
    if-nez v2, :cond_c

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/scheduling/c;->d(Lkotlinx/coroutines/scheduling/b;)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, -0x1

    iput v2, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    :cond_d
    :goto_5
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v7, Lkotlinx/coroutines/scheduling/c;->k:Lkotlinx/coroutines/internal/z;

    if-eq v6, v7, :cond_e

    move v6, v3

    goto :goto_6

    :cond_e
    move v6, v0

    :goto_6
    if-eqz v6, :cond_1

    iget v6, p0, Lkotlinx/coroutines/scheduling/b;->workerCtl:I

    if-ne v6, v2, :cond_1

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v6, v7, :cond_f

    goto/16 :goto_1

    :cond_f
    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v6}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    cmp-long v6, v8, v4

    if-nez v6, :cond_10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-wide v10, v6, Lkotlinx/coroutines/scheduling/c;->c:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    :cond_10
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-wide v8, v6, Lkotlinx/coroutines/scheduling/c;->c:J

    invoke-static {v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    sub-long/2addr v8, v10

    cmp-long v6, v8, v4

    if-ltz v6, :cond_d

    iput-wide v4, p0, Lkotlinx/coroutines/scheduling/b;->c:J

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/c;

    iget-object v8, v6, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/internal/w;

    monitor-enter v8

    :try_start_1
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/c;->isTerminated()Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_7

    :cond_11
    iget-wide v9, v6, Lkotlinx/coroutines/scheduling/c;->controlState:J

    const-wide/32 v11, 0x1fffff

    and-long/2addr v9, v11

    long-to-int v9, v9

    iget v10, v6, Lkotlinx/coroutines/scheduling/c;->a:I

    if-gt v9, v10, :cond_12

    goto :goto_7

    :cond_12
    sget-object v9, Lkotlinx/coroutines/scheduling/b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v9, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v9, :cond_13

    :goto_7
    monitor-exit v8

    goto :goto_5

    :cond_13
    :try_start_2
    iget v9, p0, Lkotlinx/coroutines/scheduling/b;->indexInArray:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    invoke-virtual {v6, p0, v9, v0}, Lkotlinx/coroutines/scheduling/c;->i(Lkotlinx/coroutines/scheduling/b;II)V

    sget-object v10, Lkotlinx/coroutines/scheduling/c;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long v10, v13, v11

    long-to-int v10, v10

    if-eq v10, v9, :cond_14

    iget-object v11, v6, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/internal/w;

    invoke-virtual {v11, v10}, Lkotlinx/coroutines/internal/w;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Li4/f;->g(Ljava/lang/Object;)V

    check-cast v11, Lkotlinx/coroutines/scheduling/b;

    iget-object v12, v6, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/internal/w;

    invoke-virtual {v12, v9, v11}, Lkotlinx/coroutines/internal/w;->c(ILkotlinx/coroutines/scheduling/b;)V

    invoke-virtual {v11, v9}, Lkotlinx/coroutines/scheduling/b;->f(I)V

    invoke-virtual {v6, v11, v10, v9}, Lkotlinx/coroutines/scheduling/c;->i(Lkotlinx/coroutines/scheduling/b;II)V

    :cond_14
    iget-object v6, v6, Lkotlinx/coroutines/scheduling/c;->g:Lkotlinx/coroutines/internal/w;

    const/4 v9, 0x0

    invoke-virtual {v6, v10, v9}, Lkotlinx/coroutines/internal/w;->c(ILkotlinx/coroutines/scheduling/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    iput-object v7, p0, Lkotlinx/coroutines/scheduling/b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v8

    throw p0

    :cond_15
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method
