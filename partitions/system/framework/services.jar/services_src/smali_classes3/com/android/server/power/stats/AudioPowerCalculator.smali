.class public Lcom/android/server/power/stats/AudioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "AudioPowerCalculator.java"


# instance fields
.field public final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 6

    new-instance p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration-IA;)V

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object p5

    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result p6

    const/4 p7, 0x1

    sub-int/2addr p6, p7

    :goto_0
    if-ltz p6, :cond_0

    invoke-virtual {p5, p6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/AudioPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    add-int/lit8 p6, p6, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p3, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 p5, 0x4

    invoke-virtual {p0, p5, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p3, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {p0, p5, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1, p7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    iget-wide p3, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {p0, p5, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p1, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {p0, p5, p1, p2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public final calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4, p5, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide p3

    iget-object p0, p0, Lcom/android/server/power/stats/AudioPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    const/4 p0, 0x4

    invoke-virtual {p1, p0, p3, p4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p5

    check-cast p5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p5, p0, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result p0

    if-nez p0, :cond_0

    iget-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr p0, p3

    iput-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr p0, v0

    iput-wide p0, p2, Lcom/android/server/power/stats/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    :cond_0
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
