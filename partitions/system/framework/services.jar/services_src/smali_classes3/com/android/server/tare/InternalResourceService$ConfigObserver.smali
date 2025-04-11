.class public Lcom/android/server/tare/InternalResourceService$ConfigObserver;
.super Landroid/database/ContentObserver;
.source "InternalResourceService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public ENABLE_TIP3:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateEnabledStatus(Lcom/android/server/tare/InternalResourceService$ConfigObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    .line 1545
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->ENABLE_TIP3:Z

    .line 1546
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    const-string/jumbo v0, "tare"

    .line 1566
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p0

    return-object p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "enable_tare"

    .line 1571
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "tare_alarm_manager_constants"

    .line 1573
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "tare_job_scheduler_constants"

    .line 1574
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1575
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 9

    .line 1582
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1583
    :try_start_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_0

    .line 1587
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x552a1fcc

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_4

    const v6, -0x11ea8e9a

    if-eq v5, v6, :cond_3

    const v6, 0x5b9bebe4

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "target_bg_battery_life_hrs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v7

    goto :goto_2

    :cond_3
    const-string v5, "enable_tare_mode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_2

    :cond_4
    const-string v5, "enable_tip3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v8, :cond_8

    if-eq v5, v7, :cond_7

    if-nez v3, :cond_0

    const-string v5, "am"

    .line 1603
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "js"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "enable_policy"

    .line 1604
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1605
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEconomicPolicy()V

    move v3, v8

    goto :goto_0

    .line 1595
    :cond_7
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1596
    :try_start_1
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmDefaultTargetBackgroundBatteryLifeHours(Lcom/android/server/tare/InternalResourceService;)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmTargetBackgroundBatteryLifeHours(Lcom/android/server/tare/InternalResourceService;I)V

    .line 1598
    iget-object v4, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v4}, Lcom/android/server/tare/InternalResourceService;->maybeAdjustDesiredStockLevelLocked()V

    .line 1599
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 1592
    :cond_8
    invoke-virtual {p1, v4, v8}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->ENABLE_TIP3:Z

    goto/16 :goto_0

    .line 1589
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    goto/16 :goto_0

    .line 1610
    :cond_a
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public start()V
    .locals 3

    const-string/jumbo v0, "tare"

    .line 1551
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1550
    invoke-static {v0, v1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1552
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "enable_tare"

    .line 1553
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 1552
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1554
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tare_alarm_manager_constants"

    .line 1555
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1554
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1556
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tare_job_scheduler_constants"

    .line 1557
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1556
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->updateEnabledStatus()V

    return-void
.end method

.method public final updateEconomicPolicy()V
    .locals 9

    .line 1650
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmLock(Lcom/android/server/tare/InternalResourceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedConsumptionLimit()J

    move-result-wide v1

    .line 1652
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v3

    .line 1653
    iget-object v5, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v5}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/tare/CompleteEconomicPolicy;->getEnabledPolicyIds()I

    move-result v5

    .line 1654
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tare/EconomicPolicy;->tearDown()V

    .line 1655
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    new-instance v7, Lcom/android/server/tare/CompleteEconomicPolicy;

    iget-object v8, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-direct {v7, v8}, Lcom/android/server/tare/CompleteEconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    invoke-static {v6, v7}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/CompleteEconomicPolicy;)V

    .line 1656
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmBootPhase(Lcom/android/server/tare/InternalResourceService;)I

    move-result v6

    const/16 v7, 0x258

    if-lt v6, v7, :cond_2

    .line 1658
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->getAllDeviceConfigProperties()Landroid/provider/DeviceConfig$Properties;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/tare/CompleteEconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    .line 1659
    iget-object v6, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v6}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedConsumptionLimit()J

    move-result-wide v6

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedConsumptionLimit()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 1663
    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmScribe(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Scribe;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v2}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v2

    .line 1664
    invoke-virtual {v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getInitialSatiatedConsumptionLimit()J

    move-result-wide v2

    .line 1663
    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->setConsumptionLimitLocked(J)V

    .line 1666
    :cond_1
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmAgent(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    .line 1667
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmCompleteEconomicPolicy(Lcom/android/server/tare/InternalResourceService;)Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tare/CompleteEconomicPolicy;->getEnabledPolicyIds()I

    move-result v1

    if-eq v5, v1, :cond_2

    xor-int/2addr v1, v5

    .line 1670
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1672
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1675
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateEnabledStatus()V
    .locals 4

    const-string/jumbo v0, "tare"

    const-string v1, "enable_tare_mode"

    const/4 v2, 0x0

    .line 1615
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1617
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v1}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$misTareSupported(Lcom/android/server/tare/InternalResourceService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "enable_tare"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1630
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v3

    if-eq v3, v0, :cond_7

    .line 1633
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 1635
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v3, v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fputmEnabledMode(Lcom/android/server/tare/InternalResourceService;I)V

    if-eqz v1, :cond_6

    .line 1637
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmEnabledMode(Lcom/android/server/tare/InternalResourceService;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1638
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$msetupEverything(Lcom/android/server/tare/InternalResourceService;)V

    goto :goto_3

    .line 1640
    :cond_5
    iget-object v0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {v0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$mtearDownEverything(Lcom/android/server/tare/InternalResourceService;)V

    .line 1643
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/server/tare/InternalResourceService$ConfigObserver;->this$0:Lcom/android/server/tare/InternalResourceService;

    invoke-static {p0}, Lcom/android/server/tare/InternalResourceService;->-$$Nest$fgetmHandler(Lcom/android/server/tare/InternalResourceService;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    const/high16 v1, 0x30000000

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1645
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method
