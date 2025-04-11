.class public Lcom/android/server/power/stats/WakelockPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "WakelockPowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "cpu.idle"

    .line 42
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 26

    move-object/from16 v0, p1

    .line 53
    new-instance v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration-IA;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v7

    .line 61
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    const-wide/16 v3, 0x0

    const-wide/16 v16, 0x0

    move-object v14, v1

    move v8, v2

    move-wide v9, v3

    move-wide v11, v9

    move-wide/from16 v4, v16

    move-wide/from16 v18, v4

    :goto_0
    const/16 v6, 0xc

    if-ltz v8, :cond_2

    .line 62
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    .line 63
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v13, v3

    move-object/from16 v3, v20

    move-wide/from16 v22, v9

    move-wide v9, v4

    move-wide/from16 v4, p3

    move v0, v6

    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V

    .line 65
    iget-wide v1, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v2, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 66
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 67
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-wide v0, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-long v4, v9, v0

    .line 69
    iget-wide v0, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v11, v0

    goto :goto_1

    :cond_0
    move-wide v4, v9

    .line 72
    :goto_1
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-wide v0, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 75
    iget-wide v9, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    move-wide/from16 v18, v0

    move-object v14, v13

    goto :goto_2

    :cond_1
    move-wide/from16 v9, v22

    :goto_2
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move v0, v6

    move-wide/from16 v22, v9

    move-wide v9, v4

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v20, v9

    move-wide/from16 v9, v22

    move-wide/from16 v24, v11

    move-wide/from16 v11, v18

    move-object v0, v14

    move-wide/from16 v13, v20

    .line 82
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V

    .line 84
    iget-wide v1, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v0, :cond_3

    .line 86
    iget-wide v3, v15, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    .line 88
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    goto :goto_3

    :cond_3
    const/16 v5, 0xc

    :goto_3
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    .line 91
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v3

    cmp-long v0, v3, v16

    if-gez v0, :cond_4

    move-wide/from16 v3, v16

    :cond_4
    const/4 v0, 0x0

    move v6, v5

    move-object/from16 v5, p1

    .line 95
    invoke-virtual {v5, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v6, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v11, v24

    add-double/2addr v1, v11

    .line 99
    invoke-virtual {v0, v6, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v0, 0x1

    .line 101
    invoke-virtual {v5, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    move-wide/from16 v4, v20

    .line 103
    invoke-virtual {v0, v6, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 105
    invoke-virtual {v0, v6, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V
    .locals 7

    .line 113
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 116
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 120
    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long/2addr v1, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x3e8

    .line 125
    div-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 128
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V
    .locals 7

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 138
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v1

    sub-long v1, v1, p12

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    move-object v5, p0

    .line 141
    iget-object v3, v5, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-long v1, p10, v1

    .line 146
    iput-wide v1, v0, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-double v1, p8, v3

    .line 147
    iput-wide v1, v0, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    goto :goto_0

    .line 149
    :cond_0
    iput-wide v3, v0, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    const-wide/16 v1, 0x0

    .line 150
    iput-wide v1, v0, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    :goto_0
    return-void
.end method

.method public final calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J
    .locals 0

    .line 160
    invoke-virtual {p1, p4, p5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide p4

    const/4 p0, 0x0

    .line 162
    invoke-virtual {p1, p2, p3, p0}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide p0

    sub-long/2addr p4, p0

    const-wide/16 p0, 0x3e8

    .line 163
    div-long/2addr p4, p0

    return-wide p4
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xc

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
