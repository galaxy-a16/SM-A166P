.class public Lcom/android/server/power/stats/IdlePowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "IdlePowerCalculator.java"


# instance fields
.field public final mAveragePowerCpuIdleMahPerUs:D

.field public final mAveragePowerCpuSuspendMahPerUs:D

.field public mDurationMs:J

.field public mPowerMah:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    const-string v0, "cpu.suspend"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x41ead27480000000L    # 3.6E9

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    const-string v0, "cpu.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/IdlePowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V

    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 p4, 0x0

    cmpl-double p2, p2, p4

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object p1

    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const/16 p4, 0x10

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p1

    check-cast p1, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_0
    return-void
.end method

.method public final calculatePowerAndDuration(Landroid/os/BatteryStats;JJI)V
    .locals 4

    invoke-virtual {p1, p2, p3, p6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p4, p5, p6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide p4

    long-to-double v0, p2

    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuSuspendMahPerUs:D

    mul-double/2addr v0, v2

    long-to-double p4, p4

    iget-wide v2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mAveragePowerCpuIdleMahPerUs:D

    mul-double/2addr p4, v2

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mPowerMah:D

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    iput-wide p2, p0, Lcom/android/server/power/stats/IdlePowerCalculator;->mDurationMs:J

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    const/16 p0, 0x10

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
