.class public final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
.super Lcom/android/server/vibrator/Vibration;
.source "VibratorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final externalVibration:Landroid/os/ExternalVibration;

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public scale:I

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .locals 7

    .line 1668
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 1669
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getToken()Landroid/os/IBinder;

    move-result-object p1

    new-instance v6, Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 1670
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    const/4 v3, -0x1

    .line 1674
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-direct {p0, p1, v6}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 1675
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    const/4 p1, 0x0

    .line 1676
    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1677
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1715
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1716
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "VibratorManagerService"

    const-string v2, "External vibration finished because binder died"

    .line 1718
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-direct {v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;)V

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 1724
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 4

    .line 1697
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_0

    return-void

    .line 1701
    :cond_0
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/Vibration$Status;

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 1702
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/Vibration$CallerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/VibrationStats;->reportEnded(Lcom/android/server/vibrator/Vibration$CallerInfo;)Z

    .line 1704
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1709
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 1710
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStats;->getEndUptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1709
    invoke-virtual {p1, v0, v1}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOn(J)V

    :cond_1
    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 8

    .line 1728
    new-instance v7, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLcom/android/server/vibrator/Vibration$CallerInfo;)V

    return-object v7
.end method

.method public getStatsInfo(J)Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .locals 9

    .line 1733
    new-instance v8, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1734
    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getUid()I

    move-result v1

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1736
    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    move-object v0, v8

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V

    return-object v8
.end method

.method public isHoldingSameVibration(Landroid/os/ExternalVibration;)Z
    .locals 0

    .line 1693
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRepeating()Z
    .locals 1

    .line 1745
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

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

.method public linkToDeath()V
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method

.method public mute()V
    .locals 0

    .line 1681
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {p0}, Landroid/os/ExternalVibration;->mute()Z

    return-void
.end method

.method public unlinkToDeath()V
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    return-void
.end method
