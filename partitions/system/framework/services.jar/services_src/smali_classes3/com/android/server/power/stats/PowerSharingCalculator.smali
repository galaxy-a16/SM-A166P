.class public Lcom/android/server/power/stats/PowerSharingCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "PowerSharingCalculator.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 2

    const/4 p0, 0x0

    invoke-virtual {p2, p3, p4, p0}, Landroid/os/BatteryStats;->getTxPowerSharingTime(JI)J

    move-result-wide p3

    const-wide/16 p5, 0x3e8

    div-long/2addr p3, p5

    invoke-virtual {p2, p0}, Landroid/os/BatteryStats;->getTxSharingDischargeAmount(I)J

    move-result-wide p5

    long-to-double p5, p5

    const-wide/16 v0, 0x0

    cmpl-double p2, p5, v0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p0

    const/4 p1, 0x1

    const/16 p2, 0x12

    invoke-virtual {p0, p2, p5, p6, p1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p0

    check-cast p0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_0
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0x12

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
