.class public Lcom/android/server/power/stats/BatteryChargeCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "BatteryChargeCalculator.java"


# instance fields
.field public final mBatteryRatedCapacity:D

.field public final mBatteryTypicalCapacity:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryTypicalCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 8

    const/4 p5, 0x0

    .line 57
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result p6

    .line 56
    invoke-virtual {p1, p6}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 59
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result p6

    div-int/lit16 p6, p6, 0x3e8

    if-gtz p6, :cond_0

    .line 61
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result p6

    div-int/lit16 p6, p6, 0x3e8

    if-gtz p6, :cond_0

    .line 63
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result p6

    :cond_0
    int-to-double v0, p6

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 69
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryRatedCapacity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryRatedCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 70
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryChargeCalculator;->mBatteryTypicalCapacity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTypicalCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 74
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result p0

    mul-int/2addr p0, p6

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 76
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result p0

    mul-int/2addr p0, p6

    int-to-double p6, p0

    div-double/2addr p6, v2

    .line 78
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result p0

    .line 77
    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    .line 79
    invoke-virtual {p0, v0, v1, p6, p7}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-eqz p0, :cond_1

    .line 85
    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 88
    :cond_1
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p3

    cmp-long p0, p3, v6

    if-eqz p0, :cond_2

    .line 90
    div-long/2addr p3, v4

    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 93
    :cond_2
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide p2

    div-long/2addr p2, v4

    const-wide/16 v2, 0x0

    cmp-long p0, p2, v2

    if-nez p0, :cond_3

    add-double/2addr v0, p6

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p2

    double-to-long p2, v0

    .line 99
    :cond_3
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    long-to-double p1, p2

    .line 101
    invoke-virtual {p0, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
