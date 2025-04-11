.class public Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;
.super Landroid/os/BatteryStats$ModemActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V
    .locals 1

    .line 4502
    invoke-direct {p0}, Landroid/os/BatteryStats$ModemActivityCounter;-><init>()V

    .line 4503
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4504
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4506
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    .line 4507
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4493
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->getIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4571
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getLcModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 0

    .line 4493
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->getLcModemActivityInfo()Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    move-result-object p0

    return-object p0
.end method

.method public getLcModemActivityInfo()Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;
    .locals 0

    .line 4581
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object p0
.end method

.method public bridge synthetic getNrModemActivityInfo()Landroid/os/BatteryStats$ModemTxRxCounter;
    .locals 0

    .line 4493
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->getNrModemActivityInfo()Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    move-result-object p0

    return-object p0
.end method

.method public getNrModemActivityInfo()Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;
    .locals 0

    .line 4576
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    return-object p0
.end method

.method public bridge synthetic getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4493
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4566
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 4519
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4520
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4522
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 4523
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    .line 4549
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    .line 4550
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    .line 4552
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->reset(Z)V

    .line 4553
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->reset(Z)V

    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 4532
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4533
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4535
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    .line 4536
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeSummaryToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 4541
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4542
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4544
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mNrModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4545
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemActivityCounterImpl;->mLcModemActivityInfo:Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
