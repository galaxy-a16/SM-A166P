.class public abstract Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
.super Lio/netty/util/concurrent/AbstractEventExecutor;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field static final WAKEUP_TASK:Ljava/lang/Runnable;


# instance fields
.field nextTaskId:J

.field scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/PriorityQueue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;

    invoke-direct {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;

    invoke-direct {v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$2;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutorGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;-><init>(Lio/netty/util/concurrent/EventExecutorGroup;)V

    return-void
.end method

.method public static deadlineToDelayNanos(J)J
    .locals 0

    invoke-static {p0, p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineToDelayNanos(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static initialNanoTime()J
    .locals 2

    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->initialNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static isNullOrEmpty(Ljava/util/Queue;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static nanoTime()J
    .locals 2

    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "TV;>;)",
            "Lio/netty/util/concurrent/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleFromEventLoop(Lio/netty/util/concurrent/ScheduledFutureTask;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->beforeScheduledTaskSubmitted(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->afterScheduledTaskSubmitted(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->WAKEUP_TASK:Ljava/lang/Runnable;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private validateScheduled0(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public afterScheduledTaskSubmitted(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public beforeScheduledTaskSubmitted(J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public cancelScheduledTasks()V
    .locals 5

    iget-object p0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-static {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->isNullOrEmpty(Ljava/util/Queue;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/util/concurrent/ScheduledFutureTask;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->cancelWithoutRemove(Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lio/netty/util/internal/PriorityQueue;->clearIgnoringIndexes()V

    return-void
.end method

.method public final hasScheduledTasks()Z
    .locals 4

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final nextScheduledTaskDeadlineNanos()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final nextScheduledTaskNano()J
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/concurrent/ScheduledFutureTask;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final pollScheduledTask()Ljava/lang/Runnable;
    .locals 2

    .line 1
    invoke-static {}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->pollScheduledTask(J)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final pollScheduledTask(J)Ljava/lang/Runnable;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->peekScheduledTask()Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setConsumed()V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeScheduled(Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/netty/util/internal/PriorityQueue;->removeTyped(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/AbstractEventExecutor;->lazyExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/c;"
        }
    .end annotation

    .line 2
    const-string v0, "command"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;J)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/c;"
        }
    .end annotation

    .line 3
    const-string v0, "callable"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    invoke-static {p2, p3}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/util/concurrent/Callable;J)V

    invoke-direct {p0, v0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/c;"
        }
    .end annotation

    .line 1
    move-object v7, p0

    move-wide v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    const-string v5, "command"

    move-object v6, p1

    invoke-static {p1, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "unit"

    invoke-static {v4, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v5, :cond_1

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    invoke-direct {p0, v0, v1, v4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v2, v3, v4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    new-instance v8, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v9

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;JJ)V

    invoke-direct {p0, v8}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "period: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v10

    const-string v0, "initialDelay: %d (expected: >= 0)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public final scheduleFromEventLoop(Lio/netty/util/concurrent/ScheduledFutureTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextTaskId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextTaskId:J

    invoke-virtual {p1, v1, v2}, Lio/netty/util/concurrent/ScheduledFutureTask;->setId(J)Lio/netty/util/concurrent/ScheduledFutureTask;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/c;"
        }
    .end annotation

    .line 1
    move-object v7, p0

    move-wide v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    const-string v5, "command"

    move-object v6, p1

    invoke-static {p1, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "unit"

    invoke-static {v4, v5}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v5, :cond_1

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    invoke-direct {p0, v0, v1, v4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v2, v3, v4}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->validateScheduled0(JLjava/util/concurrent/TimeUnit;)V

    new-instance v8, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos(J)J

    move-result-wide v9

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    neg-long v11, v0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v9

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/AbstractScheduledEventExecutor;Ljava/lang/Runnable;JJ)V

    invoke-direct {p0, v8}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->schedule(Lio/netty/util/concurrent/ScheduledFutureTask;)Lio/netty/util/concurrent/c;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "delay: %d (expected: > 0)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v10

    const-string v0, "initialDelay: %d (expected: >= 0)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/c;

    move-result-object p0

    return-object p0
.end method

.method public scheduledTaskQueue()Lio/netty/util/internal/PriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/PriorityQueue<",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/util/internal/DefaultPriorityQueue;

    sget-object v1, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->SCHEDULED_FUTURE_TASK_COMPARATOR:Ljava/util/Comparator;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/netty/util/internal/DefaultPriorityQueue;-><init>(Ljava/util/Comparator;I)V

    iput-object v0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    :cond_0
    iget-object p0, p0, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->scheduledTaskQueue:Lio/netty/util/internal/PriorityQueue;

    return-object p0
.end method

.method public validateScheduled(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
