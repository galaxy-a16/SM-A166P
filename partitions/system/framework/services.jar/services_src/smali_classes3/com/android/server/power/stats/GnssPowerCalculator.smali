.class public Lcom/android/server/power/stats/GnssPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "GnssPowerCalculator.java"


# instance fields
.field public final mAveragePowerGnssOn:D

.field public final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5

    .line 35
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    const-string v0, "gps.on"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const/4 v0, 0x2

    new-array v1, v0, [D

    .line 37
    iput-object v1, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const-string v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const/4 v2, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-wide/from16 v11, p3

    .line 54
    invoke-virtual {v13, v14, v11, v12, v2}, Lcom/android/server/power/stats/GnssPowerCalculator;->getAverageGnssPower(Landroid/os/BatteryStats;JI)D

    move-result-wide v15

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    const-wide/16 v4, 0x0

    move v7, v3

    move-wide v5, v4

    :goto_0
    if-ltz v7, :cond_1

    .line 59
    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/os/UidBatteryConsumer$Builder;

    .line 61
    invoke-virtual/range {v17 .. v17}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getGnssEnergyConsumptionUC()J

    move-result-wide v3

    .line 62
    invoke-static {v3, v4, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v8

    .line 63
    invoke-virtual/range {v17 .. v17}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v18

    move-wide/from16 v19, v3

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-wide/from16 v21, v5

    move-object/from16 v5, v18

    move v6, v8

    move/from16 v18, v7

    move-wide/from16 v7, p3

    move-object/from16 v23, v9

    move-wide v9, v15

    move-wide/from16 v11, v19

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/power/stats/GnssPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D

    move-result-wide v3

    .line 65
    invoke-virtual/range {v17 .. v17}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v5

    if-nez v5, :cond_0

    move-wide/from16 v5, v21

    add-double/2addr v5, v3

    goto :goto_1

    :cond_0
    move-wide/from16 v5, v21

    :goto_1
    add-int/lit8 v7, v18, -0x1

    move-wide/from16 v11, p3

    move-object/from16 v9, v23

    const/4 v10, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getGnssEnergyConsumptionUC()J

    move-result-wide v3

    .line 71
    invoke-static {v3, v4, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    .line 74
    invoke-static {v3, v4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide v3, v5

    .line 78
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    const/16 v7, 0xa

    .line 80
    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v7, v5, v6, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, p2, p4, p5, v0}, Lcom/android/server/power/stats/GnssPowerCalculator;->computeDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide p4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    .line 97
    invoke-virtual {p0, p4, p5, p6, p7}, Lcom/android/server/power/stats/GnssPowerCalculator;->computePower(JD)D

    move-result-wide p6

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p8, p9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p6

    :goto_0
    const/16 p0, 0xa

    .line 100
    invoke-virtual {p1, p0, p4, p5}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/UidBatteryConsumer$Builder;

    .line 101
    invoke-virtual {p1, p0, p6, p7, p3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-wide p6
.end method

.method public final computeDuration(Landroid/os/BatteryStats$Uid;JI)J
    .locals 0

    .line 106
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p0

    const/16 p1, -0x2710

    .line 107
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats$Uid$Sensor;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final computePower(JD)D
    .locals 0

    .line 0
    long-to-double p0, p1

    mul-double/2addr p0, p3

    const-wide p2, 0x414b774000000000L    # 3600000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public final getAverageGnssPower(Landroid/os/BatteryStats;JI)D
    .locals 16

    move-object/from16 v0, p0

    .line 121
    iget-wide v1, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move-wide v6, v1

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v5, v10, :cond_1

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    move/from16 v13, p4

    .line 129
    invoke-virtual {v10, v5, v11, v12, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v14

    add-long/2addr v6, v14

    .line 131
    iget-object v3, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    aget-wide v3, v3, v5

    long-to-double v14, v14

    mul-double/2addr v3, v14

    add-double/2addr v8, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v6, v1

    if-eqz v0, :cond_2

    long-to-double v0, v6

    div-double v3, v8, v0

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    return-wide v3
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
