.class public final Lcom/google/firebase/concurrent/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/ArrayDeque;

.field public c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

.field public d:J

.field public final e:Lcom/google/firebase/concurrent/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/concurrent/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/concurrent/j;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    sget-object v0, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object v0, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/concurrent/j;->d:J

    new-instance v0, Lcom/google/firebase/concurrent/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/concurrent/i;-><init>(Lcom/google/firebase/concurrent/j;I)V

    iput-object v0, p0, Lcom/google/firebase/concurrent/j;->e:Lcom/google/firebase/concurrent/i;

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/concurrent/j;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 8

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->RUNNING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, v2, :cond_7

    sget-object v2, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUED:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v3, p0, Lcom/google/firebase/concurrent/j;->d:J

    new-instance v1, Lcom/google/firebase/concurrent/i;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/concurrent/i;-><init>(Lcom/google/firebase/concurrent/j;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    iput-object p1, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x1

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/google/firebase/concurrent/j;->a:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/google/firebase/concurrent/j;->e:Lcom/google/firebase/concurrent/i;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v1, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v6, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    monitor-enter v6

    :try_start_2
    iget-wide v0, p0, Lcom/google/firebase/concurrent/j;->d:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v0, p1, :cond_3

    iput-object v2, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    :cond_3
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Lcom/google/firebase/concurrent/j;->c:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->IDLE:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;->QUEUING:Lcom/google/firebase/concurrent/SequentialExecutor$WorkerRunningState;

    if-ne v3, v4, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v5

    :goto_1
    instance-of p0, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz p0, :cond_6

    if-nez v0, :cond_6

    monitor-exit v2

    return-void

    :cond_6
    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_2
    :try_start_4
    iget-object p0, p0, Lcom/google/firebase/concurrent/j;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SequentialExecutor@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/concurrent/j;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
