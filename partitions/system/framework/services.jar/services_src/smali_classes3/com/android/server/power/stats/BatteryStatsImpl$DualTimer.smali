.class public Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 6

    .line 3881
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 3882
    new-instance p4, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 3920
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 3921
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    return-void
.end method

.method public bridge synthetic getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 3852
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object p0

    return-object p0
.end method

.method public getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
    .locals 0

    .line 3888
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object p0
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 0

    .line 3938
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3939
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public reset(ZJ)Z
    .locals 2

    .line 3913
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    .line 3914
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public startRunningLocked(J)V
    .locals 0

    .line 3893
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 3894
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 0

    .line 3905
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 3906
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 0

    .line 3899
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 3900
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 0

    .line 3932
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3933
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    return-void
.end method
