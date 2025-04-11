.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 449
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I

    move-result v1

    .line 451
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 452
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v10, v2

    .line 453
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBattery(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 454
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 455
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmScreenState(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I

    move-result v7

    .line 456
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)[I

    move-result-object v8

    .line 457
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v9

    .line 458
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    .line 459
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUidsToRemove(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 461
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentFuture(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)V

    .line 462
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Z)V

    and-int/lit8 v12, v1, 0x7f

    const/16 v13, 0x7f

    if-ne v12, v13, :cond_1

    .line 464
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    :cond_1
    and-int/lit8 v14, v1, 0x1

    if-eqz v14, :cond_2

    .line 467
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    :cond_2
    and-int/lit8 v2, v1, 0xe

    const/16 v4, 0xe

    if-ne v2, v4, :cond_3

    .line 470
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 472
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 475
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmWorkerLock(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move v4, v1

    invoke-static/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_4

    .line 491
    :try_start_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 496
    :try_start_5
    array-length v2, v10

    move v3, v11

    :goto_1
    if-ge v3, v2, :cond_5

    aget v5, v10, v3

    const/16 v4, 0x2b

    const/4 v6, -0x1

    .line 497
    invoke-static {v4, v6, v5, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 499
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 499
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->maybeRemoveIsolatedUidLocked(IJJ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 502
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 503
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v2

    .line 487
    :try_start_7
    throw v2

    :catchall_2
    move-exception v2

    .line 488
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "BatteryExternalStatsWorker"

    const-string v3, "Error updating external stats: "

    .line 505
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_6

    .line 509
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 510
    :try_start_9
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V

    .line 511
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :cond_6
    if-ne v12, v13, :cond_7

    .line 513
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 514
    :try_start_a
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V

    .line 515
    monitor-exit v0

    goto :goto_3

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p0

    :cond_7
    :goto_3
    return-void

    :catchall_5
    move-exception p0

    .line 472
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0
.end method
