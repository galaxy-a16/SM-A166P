.class public Lcom/android/server/power/stats/BluetoothPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mHasBluetoothPowerController:Z

.field public final mIdleMa:D

.field public final mRxMa:D

.field public final mTxMa:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    .line 36
    sput-object v0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8

    .line 58
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    const-string v0, "bluetooth.controller.idle"

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    const-string v2, "bluetooth.controller.rx"

    .line 60
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    const-string v4, "bluetooth.controller.tx"

    .line 61
    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    const-wide/16 v6, 0x0

    cmpl-double p1, v0, v6

    if-eqz p1, :cond_0

    cmpl-double p1, v2, v6

    if-eqz p1, :cond_0

    cmpl-double p1, v4, v6

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p7

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 77
    :cond_0
    sget-object v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 78
    new-instance v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration-IA;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    :goto_0
    const/4 v13, 0x2

    if-ltz v5, :cond_3

    .line 83
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 84
    sget-object v7, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v7, :cond_2

    .line 85
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v6, v13}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 87
    iput-object v2, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 88
    array-length v7, v2

    new-array v7, v7, [D

    iput-object v7, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, p0

    .line 93
    :goto_2
    invoke-virtual {p0, v6, v11, v1}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    move-object v7, p0

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v8

    .line 97
    invoke-static {v8, v9, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v2

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    const/4 v4, 0x0

    .line 101
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v1

    move-object v3, p0

    move v5, v2

    move-wide v6, v8

    move-object v8, v10

    move v9, v1

    move-object v10, v11

    .line 100
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 104
    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v5, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 113
    invoke-virtual {v1, v13, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v5, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 116
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 115
    invoke-virtual {v1, v13, v3, v4, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 119
    invoke-virtual {p1, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 121
    invoke-virtual {v0, v13, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v3, v11, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 123
    invoke-virtual {v0, v13, v3, v4, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V
    .locals 9

    .line 131
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v4

    .line 132
    invoke-static {v4, v5, p3}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 135
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    .line 136
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v7

    move-object v1, p0

    move v3, v0

    move-object v8, p2

    .line 135
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 138
    iget-wide v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 p0, 0x2

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v2, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 140
    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 144
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result p0

    if-nez p0, :cond_0

    .line 145
    iget-wide v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v3, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 146
    iget-wide v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    iget-wide v3, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 149
    :cond_0
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 150
    :goto_0
    iget-object p3, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v1, p3

    if-ge p0, v1, :cond_2

    .line 151
    aget-object p3, p3, p0

    .line 152
    iget v1, p3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    iget-object v1, p2, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    aget-wide v1, v1, p0

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez p5, :cond_1

    const-wide/16 v4, 0x0

    .line 169
    iput-wide v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 170
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 171
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 178
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 179
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 180
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    .line 181
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 182
    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    add-long v15, v13, v9

    add-long v2, v15, v11

    .line 184
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v2, 0x2

    move/from16 v3, p2

    if-ne v3, v2, :cond_3

    .line 187
    invoke-static/range {p3 .. p4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v0, :cond_8

    .line 188
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_8

    .line 189
    :goto_0
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    if-ge v7, v3, :cond_8

    .line 190
    aget-object v2, v2, v7

    .line 191
    iget v2, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 197
    :cond_2
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 198
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v4

    aput-wide v4, v3, v7

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-nez p6, :cond_5

    .line 204
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v15

    const-wide/16 v7, 0x0

    cmpl-double v15, v2, v7

    if-eqz v15, :cond_5

    .line 207
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 208
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_4

    .line 211
    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v2, p0

    .line 217
    iget-boolean v3, v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    if-eqz v3, :cond_7

    move-object/from16 v8, p0

    .line 218
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 220
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v3, :cond_8

    const/4 v7, 0x0

    .line 221
    :goto_2
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v0

    if-ge v7, v3, :cond_8

    .line 222
    aget-object v0, v0, v7

    .line 223
    iget v0, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v0, :cond_6

    goto :goto_3

    .line 229
    :cond_6
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 231
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v10

    .line 232
    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v12

    .line 233
    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v14

    move-object/from16 v9, p0

    .line 230
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v8

    aput-wide v8, v3, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const-wide/16 v2, 0x0

    .line 237
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 238
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v0, :cond_8

    .line 239
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_8
    return-void
.end method

.method public calculatePowerMah(JJJ)D
    .locals 2

    long-to-double p5, p5

    .line 247
    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr p5, v0

    long-to-double p1, p1

    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr p1, v0

    add-double/2addr p5, p1

    long-to-double p1, p3

    iget-wide p3, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr p1, p3

    add-double/2addr p5, p1

    const-wide p0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p5, p0

    return-wide p5
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
