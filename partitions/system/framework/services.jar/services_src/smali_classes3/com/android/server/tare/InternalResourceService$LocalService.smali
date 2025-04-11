.class public final Lcom/android/server/tare/InternalResourceService$LocalService;
.super Ljava/lang/Object;
.source "InternalResourceService.java"

# interfaces
.implements Lcom/android/server/tare/EconomyManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 0

    .line 1369
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/InternalResourceService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tare/InternalResourceService$LocalService;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    return-void
.end method


# virtual methods
.method public canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1430
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    .line 1433
    :cond_0
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 1441
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v3

    .line 1442
    iget-object v5, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v9, v6

    .line 1443
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 1444
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1445
    iget-object v11, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v11}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v11

    iget v12, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v11, v12, v1, v2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v11

    .line 1447
    iget-wide v11, v11, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v13, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v13, v13

    mul-long/2addr v13, v11

    move-object/from16 p3, v5

    :try_start_1
    iget-wide v4, v10, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v4, v15

    mul-long/2addr v11, v4

    add-long/2addr v13, v11

    add-long/2addr v7, v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p3

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 p3, v5

    .line 1450
    iget-object v3, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-ltz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v0

    cmp-long v0, v0, v7

    if-ltz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    monitor-exit p3

    return v4

    :catchall_0
    move-exception v0

    move-object/from16 p3, v5

    .line 1452
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public getEnabledMode(I)I
    .locals 0

    .line 1491
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode(I)I

    move-result p0

    return p0
.end method

.method public getMaxDurationMs(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)J
    .locals 10

    .line 1458
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v0

    const-wide v1, 0xc63fafa400L

    if-nez v0, :cond_0

    return-wide v1

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v1

    .line 1466
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object p3

    .line 1467
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    .line 1468
    :goto_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 1469
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 1470
    iget-object v9, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v9}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v9

    iget v8, v8, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {v9, v8, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    .line 1472
    iget-wide v8, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    cmp-long p3, v6, v3

    if-nez p3, :cond_3

    .line 1475
    monitor-exit v0

    return-wide v1

    .line 1477
    :cond_3
    iget-object p3, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p3

    .line 1478
    invoke-virtual {p3, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide p1

    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object p0

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v1

    .line 1477
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    mul-long/2addr p0, p2

    .line 1480
    div-long/2addr p0, v6

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 1481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1501
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V

    .line 1502
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteOngoingEventStarted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1508
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1512
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1513
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V

    .line 1514
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteOngoingEventStopped(ILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1520
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1523
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1524
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 1525
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1526
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V

    .line 1527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$misTareSupported(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1387
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 1388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public registerTareStateChangeListener(Lcom/android/server/tare/EconomyManagerInternal$TareStateChangeListener;I)V
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$misTareSupported(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1409
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v0

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmStateChangeListeners(Lcom/android/server/tare/InternalResourceService;)Landroid/util/SparseSetArray;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1411
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1412
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1414
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$LocalService;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tare/Agent;->unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 1400
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
