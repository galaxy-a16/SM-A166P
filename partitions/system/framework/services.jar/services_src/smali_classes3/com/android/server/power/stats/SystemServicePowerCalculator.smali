.class public Lcom/android/server/power/stats/SystemServicePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "SystemServicePowerCalculator.java"


# instance fields
.field public final mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

.field public final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/CpuPowerCalculator;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v0, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    add-int/lit8 v7, v3, 0x1

    new-instance v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v8, v6, v3

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object p3

    const/16 p4, 0x3e8

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/BatteryStats$Uid;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    move-result-wide p5

    invoke-static {p5, p6, p7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result p7

    const/4 v0, 0x2

    if-ne p7, v0, :cond_1

    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/android/server/power/stats/SystemServicePowerCalculator;->calculatePowerUsingEnergyConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D

    move-result-wide p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide p2

    :goto_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UidBatteryConsumer$Builder;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->getTotalPower()D

    move-result-wide p5

    invoke-static {p2, p3, p5, p6}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    const/16 p5, 0x11

    neg-double v0, p2

    invoke-virtual {p4, p5, v0, v1, p7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p5

    const/4 p6, 0x1

    sub-int/2addr p5, p6

    :goto_1
    const/4 v0, 0x7

    if-ltz p5, :cond_4

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    if-eq v1, p4, :cond_3

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getProportionalSystemServiceUsage()D

    move-result-wide v2

    mul-double/2addr v2, p2

    invoke-virtual {v1, v0, v2, v3, p7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_3
    add-int/lit8 p5, p5, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1, p6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculatePowerUsingEnergyConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/server/power/stats/CpuPowerCalculator;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmpl-double p2, p0, v2

    if-lez p2, :cond_0

    invoke-static {p3, p4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide p2

    mul-double/2addr p2, v0

    div-double/2addr p2, p0

    return-wide p2

    :cond_0
    return-wide v2
.end method

.method public final calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D
    .locals 9

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getSystemServiceTimeAtCpuSpeeds()[J

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v2, v2

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/power/stats/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v4, v4, v3

    aget-wide v5, p1, v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
