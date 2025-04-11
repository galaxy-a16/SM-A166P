.class public Lcom/android/server/power/stats/ScreenPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "ScreenPowerCalculator.java"


# instance fields
.field public final mHasDisplayPowerReporting:Z

.field public final mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.full.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mHasDisplayPowerReporting:Z

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    new-instance v13, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration-IA;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnEnergyConsumptionUC()J

    move-result-wide v7

    move-object/from16 v0, p7

    invoke-static {v7, v8, v0}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v15

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v15

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateTotalDurationAndPower(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    iget-boolean v1, v9, Lcom/android/server/power/stats/ScreenPowerCalculator;->mHasDisplayPowerReporting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$Uid;->getDisplayTime(I)J

    move-result-wide v11

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$Uid;->getDisplayPowerDrain(I)J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v9, v9, v16

    invoke-virtual {v8, v3, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v8, v3, v9, v10, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-double/2addr v4, v9

    add-long/2addr v6, v11

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v10, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v15, v1, :cond_2

    invoke-virtual {v9, v0, v13, v11, v12}, Lcom/android/server/power/stats/ScreenPowerCalculator;->smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;J)V

    iget-wide v4, v13, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v6, v13, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 p5, v13

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;

    invoke-direct {v1, v14}, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration-IA;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_1
    if-ltz v8, :cond_4

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v14

    invoke-virtual {v9, v1, v14, v11, v12}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateAppUsingEnergyConsumption(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    iget-wide v11, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v10, v3, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    move-object/from16 p5, v13

    iget-wide v12, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v11, v3, v12, v13, v15}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v10

    if-nez v10, :cond_3

    iget-wide v10, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v4, v10

    iget-wide v10, v1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v6, v10

    :cond_3
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v11, p3

    move-object/from16 v13, p5

    goto :goto_1

    :cond_4
    move-object/from16 p5, v13

    move-object/from16 v0, p1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v1

    move-object/from16 v8, p5

    iget-wide v9, v8, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-virtual {v1, v3, v9, v10, v15}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v8, v8, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5, v15}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateAppUsingEnergyConsumption(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .locals 2

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getScreenOnEnergyConsumptionUC()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-gez p0, :cond_0

    const-string p0, "ScreenPowerCalculator"

    const-string p2, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method public final calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final calculateTotalDurationAndPower(Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V
    .locals 2

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mHasDisplayPowerReporting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, p6}, Landroid/os/BatteryStats;->getDisplayPowerDrainCount(I)J

    move-result-wide p7

    long-to-double p7, p7

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p7, v0

    iput-wide p7, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    goto :goto_0

    :cond_0
    const/4 p6, 0x2

    if-eq p2, p6, :cond_1

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/power/stats/ScreenPowerCalculator;->calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    goto :goto_0

    :cond_1
    invoke-static {p7, p8}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    :goto_0
    return-void
.end method

.method public final calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_1

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iget-object v13, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v13, v13, v8

    invoke-virtual {v13, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v9

    add-double/2addr v5, v9

    move v9, v7

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_0

    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v13

    div-long/2addr v13, v11

    iget-object v10, v0, Lcom/android/server/power/stats/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v10, v10, v8

    invoke-virtual {v10, v13, v14}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v13

    int-to-float v10, v9

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v10, v15

    float-to-double v11, v10

    mul-double/2addr v13, v11

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v13, v10

    add-double/2addr v5, v13

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v11, 0x3e8

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-wide v5
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1, v1, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;J)V
    .locals 15

    move-object/from16 v0, p1

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    move-object v10, p0

    move-wide/from16 v11, p3

    invoke-virtual {p0, v9, v11, v12}, Lcom/android/server/power/stats/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v1, v9, v13, v14}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v8}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v8

    if-nez v8, :cond_0

    add-long/2addr v6, v13

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_2

    move-object/from16 v2, p2

    iget-wide v8, v2, Lcom/android/server/power/stats/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v11

    invoke-virtual {v1, v11, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v11

    long-to-double v13, v11

    mul-double/2addr v13, v8

    long-to-double v4, v6

    div-double/2addr v13, v4

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v11, v12}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5, v4, v13, v14, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    return-void
.end method
