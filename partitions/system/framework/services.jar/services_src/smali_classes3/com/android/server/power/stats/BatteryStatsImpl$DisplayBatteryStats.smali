.class public Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public screenBrightnessBin:I

.field public screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenState:I

.field public screenStateAtLastEnergyMeasurement:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    const/4 v2, 0x5

    new-array v3, v2, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenStateAtLastEnergyMeasurement:I

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v9, v3

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    rsub-int/lit8 v7, v1, -0x64

    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move v0, v1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopAllRunningTimers(J)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
