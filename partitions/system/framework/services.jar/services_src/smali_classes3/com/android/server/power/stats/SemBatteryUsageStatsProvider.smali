.class public Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "SemBatteryUsageStatsProvider.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastKWakelockMap:Ljava/util/Map;

.field public mLastScreenWakeMap:Ljava/util/Map;

.field public mLastWakeupMap:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    instance-of v0, p2, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/internal/os/PowerProfile;

    invoke-direct {p2, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method public final calculateWakelockTime(Landroid/os/BatteryStats$Uid;JI)J
    .locals 6

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public final computeWakeupReasonTime(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final elapsedRealtime()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats()Landroid/os/SemBatterySipper;
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    invoke-virtual {p0}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->uptimeMillis()J

    move-result-wide v0

    mul-long v8, v0, v2

    new-instance v1, Landroid/os/SemDevicePowerInfo;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/SemDevicePowerInfo;-><init>(D)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v0

    :try_start_0
    new-instance v4, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v4, v5, v10}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    new-instance v5, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v4, p0

    move-object v10, v1

    move-object v11, v2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, v4, v12}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, v4, v13}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Landroid/os/SemBatterySipper;

    move-object v0, p0

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Landroid/os/SemBatterySipper;-><init>(Landroid/os/SemDevicePowerInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBluetoothScanCount(Landroid/os/BatteryStats$Uid;JI)I
    .locals 2

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p1

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getExcessivePowerCount(Landroid/os/BatteryStats$Uid;)I
    .locals 3

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v1, p1

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    return p1
.end method

.method public final getForegroundActivityTotalTime(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getSyncTotalTime(Landroid/os/BatteryStats$Uid;JI)J
    .locals 6

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v0, 0x0

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final getWakeupAlarmCount(Landroid/os/BatteryStats$Uid;I)I
    .locals 4

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v3, p2}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final makeWakeupReasonListName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "Abort:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "Some devices failed to suspend, or early wake event detected"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, "PowerManagerService.WakeLocks"

    const-string v1, "alarmtimer"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeWakeupReasonListName WhiteList Tag/tableName="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemBatteryUsageStatsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final processAppUsage(Landroid/os/BatteryStats$Uid;Landroid/os/UidBatteryConsumer;Landroid/os/SemDevicePowerInfo;J)Landroid/os/SemUidPowerInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    new-instance v5, Landroid/os/SemUidPowerInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/SemUidPowerInfo;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getForegroundActivityTotalTime(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const/4 v13, 0x1

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v14

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v16

    add-long v14, v14, v16

    div-long/2addr v14, v9

    add-long/2addr v7, v14

    const/4 v14, 0x3

    invoke-virtual {v1, v14, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v16

    const/4 v15, 0x4

    invoke-virtual {v1, v15, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v18

    add-long v16, v16, v18

    const/4 v15, 0x5

    invoke-virtual {v1, v15, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v19

    add-long v16, v16, v19

    div-long v14, v16, v9

    const-wide/16 v16, 0x0

    move v13, v6

    move-wide/from16 v9, v16

    move-wide/from16 v21, v9

    :goto_0
    const/16 v2, 0x10

    if-ge v13, v2, :cond_1

    invoke-virtual {v1, v13, v6}, Landroid/os/BatteryStats$Uid;->getSpeakerMediaTime(II)J

    move-result-wide v23

    cmp-long v2, v23, v16

    if-gtz v2, :cond_0

    move-wide/from16 v25, v7

    goto :goto_1

    :cond_0
    add-long v9, v9, v23

    add-int/lit8 v2, v13, 0x1

    move-wide/from16 v25, v7

    int-to-long v6, v2

    mul-long v23, v23, v6

    move-wide/from16 v6, v21

    add-long v21, v6, v23

    :goto_1
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, v25

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-wide/from16 v25, v7

    move-wide/from16 v6, v21

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->hasDisplayPowerReporting()Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide/from16 v16, v6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getDisplayPowerDrain(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v21, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v21

    move-wide v7, v6

    move-object/from16 v6, p2

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v6

    const/4 v2, 0x0

    move-object/from16 v6, p2

    invoke-virtual {v6, v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v7

    :goto_2
    iput-wide v7, v5, Landroid/os/SemUidPowerInfo;->screenPower:D

    move-wide/from16 v21, v9

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iput-wide v7, v5, Landroid/os/SemUidPowerInfo;->screenPower:D

    iget-boolean v2, v5, Landroid/os/SemUidPowerInfo;->shouldHide:Z

    if-eqz v2, :cond_3

    move-wide v7, v9

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v7

    :goto_3
    iput-wide v7, v5, Landroid/os/SemUidPowerInfo;->smearedPower:D

    invoke-virtual/range {p2 .. p2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v6

    move-wide/from16 v23, v14

    iget-wide v13, v5, Landroid/os/SemUidPowerInfo;->screenPower:D

    sub-double/2addr v6, v13

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->power:D

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v6

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->cpuTime:J

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->calculateWakelockTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    div-long/2addr v6, v8

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->mobileActive:J

    invoke-virtual {v1, v2, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    add-long/2addr v6, v9

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->mobileData:J

    invoke-virtual {v1, v2, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    invoke-virtual {v1, v8, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->mobilePackets:J

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    add-long/2addr v7, v13

    iput-wide v7, v5, Landroid/os/SemUidPowerInfo;->wifiPackets:J

    invoke-virtual {v1, v6, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    invoke-virtual {v1, v9, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->wifiData:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getWakeupAlarmCount(Landroid/os/BatteryStats$Uid;I)I

    move-result v6

    iput v6, v5, Landroid/os/SemUidPowerInfo;->wakeupAlarm:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getBluetoothScanCount(Landroid/os/BatteryStats$Uid;JI)I

    move-result v6

    iput v6, v5, Landroid/os/SemUidPowerInfo;->btScan:I

    const/4 v6, 0x4

    invoke-virtual {v1, v6, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    const/4 v8, 0x5

    invoke-virtual {v1, v8, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->btData:J

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateUidGpsDuration(Landroid/os/BatteryStats$Uid;Landroid/os/SemUidPowerInfo;J)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->cameraRunTime:J

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getExcessivePowerCount(Landroid/os/BatteryStats$Uid;)I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->killCount:J

    iput-wide v11, v5, Landroid/os/SemUidPowerInfo;->screenTime:J

    move-wide/from16 v7, v25

    iput-wide v7, v5, Landroid/os/SemUidPowerInfo;->fgTime:J

    move-wide/from16 v6, v23

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->bgTime:J

    move-wide/from16 v9, v21

    iput-wide v9, v5, Landroid/os/SemUidPowerInfo;->spkTime:J

    move-wide/from16 v6, v16

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->spkLevel:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getMsTimeFromTimer(Landroid/os/BatteryStats$Timer;J)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->audioTime:J

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->networkWakeup:J

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->getSyncTotalTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/os/SemUidPowerInfo;->syncTime:J

    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget v6, v5, Landroid/os/SemUidPowerInfo;->btScan:I

    add-int/2addr v2, v6

    iput v2, v0, Landroid/os/SemDevicePowerInfo;->btScanCount:I

    iget-wide v6, v0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v8, v5, Landroid/os/SemUidPowerInfo;->gpsTime:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/os/SemDevicePowerInfo;->gpsTime:J

    iget-wide v6, v0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v8, v5, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/os/SemDevicePowerInfo;->actualGpsTime:J

    iget-wide v6, v0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v3

    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    add-long/2addr v6, v3

    iput-wide v6, v0, Landroid/os/SemDevicePowerInfo;->wifiScanTime:J

    iget v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/os/SemDevicePowerInfo;->wifiScanCount:I

    iget-wide v1, v0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    iget-wide v3, v5, Landroid/os/SemUidPowerInfo;->wakelockTime:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/os/SemDevicePowerInfo;->pwlTime:J

    return-object v5
.end method

.method public final processBluetoothUsage(Landroid/os/SemDevicePowerInfo;J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    iput-wide v3, p1, Landroid/os/SemDevicePowerInfo;->btOnTime:J

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, p2, p3, v2}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    iput-wide p2, p1, Landroid/os/SemDevicePowerInfo;->btScanTime:J

    iget-object p2, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v2}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide p2

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Landroid/os/SemDevicePowerInfo;->btTotalBytes:J

    return-void
.end method

.method public final processDeviceUsage(Landroid/os/BatteryUsageStats;Landroid/os/SemDevicePowerInfo;JJ)V
    .locals 7

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processScreenUsage(Landroid/os/SemDevicePowerInfo;J)V

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processSpeakerUsage(Landroid/os/SemDevicePowerInfo;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processRadioUsage(Landroid/os/SemDevicePowerInfo;J)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processWifiUsage(Landroid/os/SemDevicePowerInfo;J)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processBluetoothUsage(Landroid/os/SemDevicePowerInfo;J)V

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processNetworkUsage(Landroid/os/SemDevicePowerInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processModemUsage(Landroid/os/SemDevicePowerInfo;)V

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    iput-wide v0, p2, Landroid/os/SemDevicePowerInfo;->totalPower:D

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->batteryPerc:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    iget-wide v5, p2, Landroid/os/SemDevicePowerInfo;->screenOffTime:J

    sub-long/2addr v1, v5

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, v0}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->screenOnCount:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->getSubScreenOnTime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->subScreenOnTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p5, p6, v0}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->uptime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p5, p6, v0}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide p5

    div-long/2addr p5, v3

    iput-wide p5, p2, Landroid/os/SemDevicePowerInfo;->screenOffUptime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide p5

    div-long/2addr p5, v3

    iput-wide p5, p2, Landroid/os/SemDevicePowerInfo;->psmTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargePermil()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->screenOffDischarge:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargePermil()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->screenOnDischarge:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOffSinceChargePermil()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->subScreenOffDischarge:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountSubScreenOnSinceChargePermil()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->subScreenOnDischarge:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->getSubScreenDozeTime(JI)J

    move-result-wide p5

    div-long/2addr p5, v3

    iput-wide p5, p2, Landroid/os/SemDevicePowerInfo;->subAodTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceChargeCoulombCounter()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->screenOffCoulombCounter:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceChargeCoulombCounter()I

    move-result p1

    iput p1, p2, Landroid/os/SemDevicePowerInfo;->screenOnCoulombCounter:I

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p3, p4, v0}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    move-result-wide p5

    div-long/2addr p5, v3

    iput-wide p5, p2, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, v0}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount(I)J

    move-result-wide p5

    iput-wide p5, p2, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 p5, 0x2

    invoke-virtual {p1, p5, p3, p4, v0}, Landroid/os/BatteryStats;->getDisplayHighRefreshRateTime(IJI)J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 p6, 0x1

    invoke-virtual {p1, p6, p3, p4, v0}, Landroid/os/BatteryStats;->getDisplayHighRefreshRateTime(IJI)J

    move-result-wide v5

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->hrrAlwaysTime:J

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p5, p3, p4, v0}, Landroid/os/BatteryStats;->getSubDisplayHighRefreshRateTime(IJI)J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p1, p6, p3, p4, v0}, Landroid/os/BatteryStats;->getSubDisplayHighRefreshRateTime(IJI)J

    move-result-wide p5

    add-long/2addr v1, p5

    div-long/2addr v1, v3

    iput-wide v1, p2, Landroid/os/SemDevicePowerInfo;->subHrrAlwaysTime:J

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, p3, p4, v0}, Landroid/os/BatteryStats;->getScreenOnGpsRunningTime(JI)J

    move-result-wide p0

    div-long/2addr p0, v3

    iput-wide p0, p2, Landroid/os/SemDevicePowerInfo;->screenOnGpsTime:J

    return-void
.end method

.method public final processModemUsage(Landroid/os/SemDevicePowerInfo;)V
    .locals 14

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getNetworkModemControllerActivity()Landroid/os/BatteryStats$ModemActivityCounter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpSleepTime:J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->cpIdleTime:J

    const/4 v0, 0x5

    new-array v2, v0, [J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v7, v3, v5

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    aput-wide v7, v2, v6

    iget-wide v9, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    add-long/2addr v9, v7

    iput-wide v9, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    iget-wide v9, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    add-int/lit8 v6, v6, 0x1

    int-to-long v11, v6

    mul-long/2addr v7, v11

    long-to-double v7, v7

    add-double/2addr v9, v7

    iput-wide v9, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    long-to-double v2, v2

    div-double/2addr v6, v2

    iput-wide v6, p1, Landroid/os/SemDevicePowerInfo;->nrTxLevel:D

    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrRxTime:J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrTxByte:J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->nrRxByte:J

    new-array v0, v0, [J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    array-length v3, v2

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v8, v2, v6

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    aput-wide v8, v0, v7

    iget-wide v10, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    add-long/2addr v10, v8

    iput-wide v10, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    iget-wide v10, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    add-int/lit8 v7, v7, 0x1

    int-to-long v12, v7

    mul-long/2addr v8, v12

    long-to-double v8, v8

    add-double/2addr v10, v8

    iput-wide v10, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v4, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    long-to-double v2, v2

    div-double/2addr v4, v2

    iput-wide v4, p1, Landroid/os/SemDevicePowerInfo;->lcTxLevel:D

    :cond_3
    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcRxTime:J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$ModemTxRxCounter;->getTxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->lcTxByte:J

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemActivityCounter;->getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/BatteryStats$ModemTxRxCounter;->getRxByteCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/SemDevicePowerInfo;->lcRxByte:J

    return-void
.end method

.method public final processNetworkUsage(Landroid/os/SemDevicePowerInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    add-long/2addr v2, v5

    iput-wide v2, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalBytes:J

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalBytes:J

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p1, Landroid/os/SemDevicePowerInfo;->mobileTotalPackets:J

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, v3, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p1, Landroid/os/SemDevicePowerInfo;->wifiTotalPackets:J

    return-void
.end method

.method public final processRadioUsage(Landroid/os/SemDevicePowerInfo;J)V
    .locals 7

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide/16 v3, 0x3e8

    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v2, p2, p3, v1}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v3

    iget-object v3, p1, Landroid/os/SemDevicePowerInfo;->signalStrengthTime:[J

    aput-wide v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    div-long/2addr v5, v3

    iput-wide v5, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime:J

    iget-object v0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v0

    iput v0, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveCount:I

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, p2, p3, v1}, Landroid/os/BatteryStats;->getMobileActive5GTime(JI)J

    move-result-wide p2

    div-long/2addr p2, v3

    iput-wide p2, p1, Landroid/os/SemDevicePowerInfo;->mobileActiveTime5G:J

    return-void
.end method

.method public final processScreenUsage(Landroid/os/SemDevicePowerInfo;J)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    const-wide/16 v3, 0x3e8

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenBrightnessTime:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v1, p2, p3, v0}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v3

    aput-wide v5, v2, v1

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->screenAutoBrightnessTime:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v1, p2, p3, v0}, Landroid/os/BatteryStats;->getScreenAutoBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v3

    aput-wide v5, v2, v1

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenBrightnessTime:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v1, p2, p3, v0}, Landroid/os/BatteryStats;->getSubScreenBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v3

    aput-wide v5, v2, v1

    iget-object v2, p1, Landroid/os/SemDevicePowerInfo;->subScreenAutoBrightnessTime:[J

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5, v1, p2, p3, v0}, Landroid/os/BatteryStats;->getSubScreenAutoBrightnessTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v3

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, p2, p3, v0}, Landroid/os/BatteryStats;->getScreenHighBrightnessTime(JI)J

    move-result-wide v1

    div-long/2addr v1, v3

    iput-wide v1, p1, Landroid/os/SemDevicePowerInfo;->screenHighBrightnessTime:J

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {p0, p2, p3, v0}, Landroid/os/BatteryStats;->getSubScreenHighBrightnessTime(JI)J

    move-result-wide p2

    div-long/2addr p2, v3

    iput-wide p2, p1, Landroid/os/SemDevicePowerInfo;->subScreenHighBrightnessTime:J

    return-void
.end method

.method public final processSpeakerUsage(Landroid/os/SemDevicePowerInfo;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move-wide v7, v5

    move-wide v9, v7

    move v11, v4

    :goto_0
    const/16 v12, 0xf

    if-ge v11, v12, :cond_0

    iget-object v12, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v12, v11, v4}, Landroid/os/BatteryStats;->getSpeakerCallTime(II)J

    move-result-wide v12

    long-to-double v12, v12

    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14, v11, v4}, Landroid/os/BatteryStats;->getSpeakerMediaTime(II)J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v2, v2

    add-double/2addr v2, v12

    double-to-long v2, v2

    long-to-double v5, v5

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v16, v2

    int-to-double v2, v11

    mul-double/2addr v12, v2

    add-double/2addr v5, v12

    double-to-long v5, v5

    long-to-double v7, v7

    add-double/2addr v7, v14

    double-to-long v7, v7

    long-to-double v9, v9

    mul-double/2addr v14, v2

    add-double/2addr v9, v14

    double-to-long v9, v9

    move-wide/from16 v2, v16

    goto :goto_0

    :cond_0
    iput-wide v2, v1, Landroid/os/SemDevicePowerInfo;->spkCallTime:J

    iput-wide v5, v1, Landroid/os/SemDevicePowerInfo;->spkCallLevel:J

    iput-wide v7, v1, Landroid/os/SemDevicePowerInfo;->spkMediaTime:J

    iput-wide v9, v1, Landroid/os/SemDevicePowerInfo;->spkMediaLevel:J

    return-void
.end method

.method public final processWifiUsage(Landroid/os/SemDevicePowerInfo;J)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    iput-wide p2, p1, Landroid/os/SemDevicePowerInfo;->wifiOnTime:J

    return-void
.end method

.method public final updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Ljava/util/ArrayList;)V
    .locals 11

    move-object/from16 v6, p6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_1
    if-ltz v10, :cond_3

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UidBatteryConsumer;

    move-object v0, p0

    move-object/from16 v3, p6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processAppUsage(Landroid/os/BatteryStats$Uid;Landroid/os/UidBatteryConsumer;Landroid/os/SemDevicePowerInfo;J)Landroid/os/SemUidPowerInfo;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v1, p7

    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v2

    :goto_3
    const/16 v3, 0x13

    if-ge v0, v3, :cond_8

    if-eqz v0, :cond_7

    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/16 v3, 0xb

    if-eq v0, v3, :cond_5

    const/16 v3, 0x12

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->idlePower:D

    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->idleTime:J

    goto :goto_4

    :pswitch_1
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->aodPower:D

    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->aodTime:J

    goto :goto_4

    :pswitch_2
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->phonePower:D

    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->phoneOnTime:J

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->powersharePower:J

    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->powershareTime:J

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->wifiPower:D

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->radioPower:D

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->screenPower:D

    invoke-virtual {v2, v0}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v3

    iput-wide v3, v6, Landroid/os/SemDevicePowerInfo;->screenOnTime:J

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->processDeviceUsage(Landroid/os/BatteryUsageStats;Landroid/os/SemDevicePowerInfo;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateKernelWakelockInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 13

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v5, v0, v1, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v10

    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    if-eqz v7, :cond_1

    cmp-long v3, v10, v3

    if-lez v3, :cond_1

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/os/SemKernelWakelockInfo;

    int-to-long v8, v2

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemKernelWakelockInfo;

    iget-object v1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/SemKernelWakelockInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const-string p0, "SemBatteryUsageStatsProvider"

    const-string p1, "First update of KernelWakelock"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemKernelWakelockInfo;

    invoke-virtual {v1}, Landroid/os/SemKernelWakelockInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/SemKernelWakelockInfo;->getCount()J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v9

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SemKernelWakelockInfo;

    invoke-virtual {v1, v5}, Landroid/os/SemKernelWakelockInfo;->calculateDelta(Landroid/os/SemKernelWakelockInfo;)V

    invoke-virtual {v1}, Landroid/os/SemKernelWakelockInfo;->getCount()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_6

    invoke-virtual {v1}, Landroid/os/SemKernelWakelockInfo;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastKWakelockMap:Ljava/util/Map;

    new-instance v12, Landroid/os/SemKernelWakelockInfo;

    move-object v5, v12

    move-object v6, v2

    invoke-direct/range {v5 .. v10}, Landroid/os/SemKernelWakelockInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SemKernelWakelockInfo;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    :cond_a
    :goto_3
    return-void
.end method

.method public final updateScreenWakeInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getScreenWakeStats()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$LongCounter;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    if-eqz v0, :cond_1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/SemScreenWakeInfo;

    invoke-direct {v1, v0, v3, v4}, Landroid/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemScreenWakeInfo;

    iget-object v1, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    const-string p0, "SemBatteryUsageStatsProvider"

    const-string p1, "First update of ScreenWake"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemScreenWakeInfo;

    invoke-virtual {v3}, Landroid/os/SemScreenWakeInfo;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SemScreenWakeInfo;

    invoke-virtual {v3, v7}, Landroid/os/SemScreenWakeInfo;->calculateDelta(Landroid/os/SemScreenWakeInfo;)V

    invoke-virtual {v3}, Landroid/os/SemScreenWakeInfo;->getCount()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastScreenWakeMap:Ljava/util/Map;

    new-instance v8, Landroid/os/SemScreenWakeInfo;

    invoke-direct {v8, v4, v5, v6}, Landroid/os/SemScreenWakeInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public final updateUidGpsDuration(Landroid/os/BatteryStats$Uid;Landroid/os/SemUidPowerInfo;J)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p0

    const/16 p1, -0x2710

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid$Sensor;

    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Sensor;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Landroid/os/SemUidPowerInfo;->gpsTime:J

    iput-wide v0, p2, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    invoke-virtual {p1, p3, p4, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long/2addr v3, v0

    iput-wide v3, p2, Landroid/os/SemUidPowerInfo;->gpsTime:J

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    invoke-virtual {p0, p3, p4, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    div-long/2addr p0, v0

    iput-wide p0, p2, Landroid/os/SemUidPowerInfo;->actualGpsTime:J

    :cond_1
    return-void
.end method

.method public final updateWakeupReasonInfoToList(Landroid/os/BatteryStats;Ljava/util/ArrayList;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v0, v6, v9, v10, v7}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->computeWakeupReasonTime(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v15

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->makeWakeupReasonListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    if-lez v8, :cond_0

    cmp-long v3, v15, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/os/SemWakeupReasonInfo;

    int-to-long v13, v8

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemWakeupReasonInfo;

    iget-object v4, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/SemWakeupReasonInfo;

    invoke-virtual {v6}, Landroid/os/SemWakeupReasonInfo;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Landroid/os/SemWakeupReasonInfo;->getCount()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/os/SemWakeupReasonInfo;->getTime()J

    move-result-wide v11

    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-interface {v7, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/SemWakeupReasonInfo;

    invoke-virtual {v6, v7}, Landroid/os/SemWakeupReasonInfo;->calculateDelta(Landroid/os/SemWakeupReasonInfo;)V

    invoke-virtual {v6}, Landroid/os/SemWakeupReasonInfo;->getCount()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mLastWakeupMap:Ljava/util/Map;

    new-instance v15, Landroid/os/SemWakeupReasonInfo;

    move-object v7, v15

    move-object v8, v13

    invoke-direct/range {v7 .. v12}, Landroid/os/SemWakeupReasonInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final uptimeMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
