.class public Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;
.super Landroid/os/BatteryStats$ModemTxRxCounter;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V
    .locals 3

    invoke-direct {p0}, Landroid/os/BatteryStats$ModemTxRxCounter;-><init>()V

    new-array v0, p2, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    new-instance p2, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method


# virtual methods
.method public bridge synthetic getRxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->getRxByteCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getRxByteCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->getRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getTxByteCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->getTxByteCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getTxByteCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->getTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void

    :cond_1
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "inconsistent tx state lengths"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-interface {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-interface {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->reset(Z)Z

    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mTxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ModemTxRxCounterImpl;->mRxByte:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
