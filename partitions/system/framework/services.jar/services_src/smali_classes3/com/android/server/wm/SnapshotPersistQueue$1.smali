.class public Lcom/android/server/wm/SnapshotPersistQueue$1;
.super Ljava/lang/Thread;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    .line 153
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    move v3, v2

    goto :goto_2

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v1}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->onDequeuedLocked()V

    const/4 v3, 0x1

    goto :goto_2

    .line 167
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 171
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_4

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {v1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->write()V

    :cond_3
    const-wide/16 v0, 0x64

    .line 176
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmWriteQueue(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmPaused(Lcom/android/server/wm/SnapshotPersistQueue;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v3, v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmLock(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$1;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fputmQueueIdling(Lcom/android/server/wm/SnapshotPersistQueue;Z)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catch_0
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 171
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
