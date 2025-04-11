.class public Lcom/android/server/power/stats/CpuPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mNumCpuClusters:I

.field public final mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v2, "cpu.active"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v3, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v1, v2, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v1, v0

    move v2, v1

    :goto_2
    iget v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-array v5, v3, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v5, v4, v1

    move v4, v0

    :goto_3
    if-ge v4, v3, :cond_2

    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p1, v1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v1

    aput-object v5, v6, v4

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    add-int/lit8 v7, v2, 0x1

    aput-object v5, v6, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 16

    move-object/from16 v0, p1

    sget-object v1, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    new-instance v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/power/stats/CpuPowerCalculator$Result;-><init>(Lcom/android/server/power/stats/CpuPowerCalculator$Result-IA;)V

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    const-wide/16 v3, 0x0

    move v12, v2

    move-wide v13, v3

    :goto_0
    if-ltz v12, :cond_4

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v2, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v15, v11}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v9

    :cond_2
    :goto_1
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v4

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v5, p7

    move-object v6, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/server/power/stats/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    add-double/2addr v13, v2

    :cond_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuEnergyConsumptionUC()J

    move-result-wide v1

    move-object/from16 v3, p7

    invoke-static {v1, v2, v3}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v3

    invoke-virtual {v0, v11}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    invoke-virtual {v4, v11, v13, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-static {v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v13

    :cond_5
    invoke-virtual {v0, v11, v13, v14, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public calculateActiveCpuPowerMah(J)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/server/power/stats/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V
    .locals 8

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    move-result-wide v3

    invoke-static {v3, v4, p3}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v7

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/server/power/stats/CpuPowerCalculator$Result;)V

    iget-wide v0, p4, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p4, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-object v1, p4, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    if-eq v7, v2, :cond_1

    const/4 p3, 0x2

    if-eq v7, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateEnergyConsumptionPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/server/power/stats/CpuPowerCalculator$Result;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final calculateEnergyConsumptionPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V
    .locals 6

    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v1, p3, v0

    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/server/power/stats/CpuPowerCalculator$Result;)V
    .locals 15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget-object v0, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    if-nez v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    :goto_0
    const/4 v9, 0x0

    move v10, v9

    :goto_1
    const/4 v0, 0x7

    if-ge v10, v0, :cond_3

    invoke-static {v10}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    invoke-virtual {v6, v0, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v12, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    aget-wide v13, v12, v11

    const-wide/16 v2, 0x0

    iget-object v5, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v0

    add-double/2addr v13, v0

    aput-wide v13, v12, v11

    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    array-length v0, v7

    :goto_3
    if-ge v9, v0, :cond_5

    aget-object v1, v7, v9

    iget v2, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_4

    move-object v10, p0

    move-object/from16 v12, p1

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    move-result-wide v2

    iget-object v4, v8, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    iget v5, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    aget-wide v4, v4, v5

    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v11, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v11

    add-double/2addr v4, v11

    const/4 v11, 0x1

    move-object/from16 v12, p1

    invoke-virtual {v12, v1, v4, v5, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v4, v1, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public calculatePerCpuClusterPowerMah(IJ)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public calculatePerCpuFreqPowerMah(IIJ)D
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/server/power/stats/CpuPowerCalculator$Result;)V
    .locals 20

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const/4 v5, 0x2

    move/from16 v6, p2

    if-eq v6, v5, :cond_0

    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v1}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_4

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v16

    add-long v11, v11, v16

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v16

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v18

    add-long v16, v16, v18

    invoke-virtual {v14, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    move-object/from16 p0, v0

    add-long v0, v16, v18

    if-eqz v10, :cond_2

    const-string v14, "*"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    long-to-double v0, v0

    cmpg-double v16, v8, v0

    if-gez v16, :cond_3

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_3

    :cond_2
    :goto_2
    long-to-double v0, v0

    :goto_3
    move-wide v8, v0

    move-object v10, v15

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    goto :goto_1

    :cond_4
    cmp-long v0, v11, v3

    if-lez v0, :cond_5

    move-wide v3, v11

    :cond_5
    iput-wide v3, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationMs:J

    iput-wide v11, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationFgMs:J

    iput-wide v5, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    iput-object v10, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    return-void
.end method

.method public calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D
    .locals 6

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .locals 8

    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateActiveCpuPowerMah(J)D

    move-result-wide p2

    const/4 v0, 0x0

    const-string v1, " actual # "

    const-string v2, "UID "

    const-string v3, "CpuPowerCalculator"

    if-eqz p4, :cond_1

    array-length v4, p4

    iget v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ne v4, v5, :cond_0

    move v4, v0

    :goto_0
    iget v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v5, v5, v4

    aget-wide v6, p4, v4

    invoke-virtual {v5, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    add-double/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p5, :cond_3

    array-length p4, p5

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v4, v4

    if-ne p4, v4, :cond_2

    :goto_1
    array-length p1, p5

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object p1, p1, v0

    aget-wide v1, p5, v0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v1

    add-double/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " CPU freq # mismatch: Power Profile # "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length p0, p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p5

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-wide p2
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
