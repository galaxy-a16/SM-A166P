.class public final Lcom/android/server/tare/InternalResourceService$IrsHandler;
.super Landroid/os/Handler;
.source "InternalResourceService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_d

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_6

    const/4 v1, 0x5

    if-eq v2, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    move-wide v10, v8

    :goto_0
    iget-object v4, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v4}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v5, v4, :cond_4

    iget-object v4, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v4}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    iget-object v12, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v12}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v12

    sub-int/2addr v12, v3

    :goto_1
    if-ltz v12, :cond_3

    iget-object v13, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v13}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v13

    invoke-virtual {v13, v5, v12}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v14}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v14

    invoke-virtual {v14, v5, v12}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v15, v6

    if-gez v15, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v14, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v14}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmTemporaryVips(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseArrayMap;

    move-result-object v14

    invoke-virtual {v14, v4, v13}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    cmp-long v3, v10, v8

    if-gez v3, :cond_5

    sub-long/2addr v10, v6

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    monitor-exit v2

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v2}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode(I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;->onTareEnabledModeChanged(I)V

    goto/16 :goto_7

    :cond_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v4, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v4}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseSetArray;->size()I

    move-result v4

    :goto_4
    if-ge v5, v4, :cond_a

    iget-object v6, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    and-int v7, v6, v1

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    iget-object v7, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v7}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v8, v6}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode(I)I

    move-result v6

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_5
    if-ltz v8, :cond_9

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;

    invoke-interface {v9, v6}, Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;->onTareEnabledModeChanged(I)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    monitor-exit v2

    goto :goto_7

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_b
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_2
    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0, v2, v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mprocessUsageEventLocked(Lcom/android/server/tare/InternalResourceService;ILandroid/app/usage/UsageEvents$Event;)V

    monitor-exit v4

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_c
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService$IrsHandler;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mscheduleUnusedWealthReclamationLocked(Lcom/android/server/tare/InternalResourceService;)V

    monitor-exit v2

    goto :goto_7

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_d
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v3

    invoke-interface {v4, v1, v2, v5, v3}, Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;->onAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Z)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_7
    return-void
.end method
