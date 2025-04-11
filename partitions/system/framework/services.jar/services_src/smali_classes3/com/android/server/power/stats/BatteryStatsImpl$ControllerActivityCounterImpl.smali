.class public Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final mClock:Lcom/android/internal/os/Clock;

.field public mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mNumTxStates:I

.field public final mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public mProcessState:I

.field public mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

.field public final mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

.field public final mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

.field public mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method public static bridge synthetic -$$Nest$mgetOrCreateIdleTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->setState(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V
    .locals 0

    .line 4137
    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    .line 4138
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4139
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 4140
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    .line 4141
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4142
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4143
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 4144
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method


# virtual methods
.method public final createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 9

    .line 4337
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 4338
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJLcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    .line 4340
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    invoke-static {p0}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result p0

    invoke-static {v0, p0, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    const-wide/16 v1, 0x0

    .line 4342
    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public detach()V
    .locals 1

    .line 4249
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4250
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4251
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4252
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4253
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 4254
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 4255
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->detach()V

    return-void
.end method

.method public getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4264
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4265
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getMonitoredRailChargeConsumedMaMs()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getMonitoredRailChargeConsumedMaMs()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4360
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public final getOrCreateIdleTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4271
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4272
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4274
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getOrCreateRxTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 1

    .line 4308
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4309
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4311
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public final getOrCreateTxTimeCounters()[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 3

    .line 4327
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 4328
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-array v0, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    .line 4329
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    if-ge v0, v1, :cond_0

    .line 4330
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4333
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    return-object p0
.end method

.method public bridge synthetic getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getPowerCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4351
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4301
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4302
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getScanTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getScanTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4283
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public bridge synthetic getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4123
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method public getSleepTimeCounter()Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    .line 4292
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method public getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .locals 0

    .line 4320
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez p0, :cond_0

    .line 4321
    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER_ARRAY()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 4148
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4149
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4150
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4151
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4152
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    .line 4154
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4155
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public final readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 2

    .line 4185
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4186
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4187
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p0, 0x5

    .line 4186
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 7

    .line 4203
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    .line 4208
    :goto_0
    new-array v2, v0, [Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 4210
    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 4212
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x5

    .line 4210
    invoke-static {p1, p2, v6, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;IJ)Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4214
    aput-object v4, v2, v3

    goto :goto_2

    :cond_1
    move p3, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public reset(ZJ)V
    .locals 1

    .line 4239
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4240
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4241
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4242
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4243
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 4244
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    .line 4245
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    return-void
.end method

.method public final setState(IJ)V
    .locals 3

    .line 4364
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    .line 4365
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_0

    .line 4366
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4368
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_1

    .line 4369
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 4371
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 4372
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 4373
    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 4164
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4165
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4166
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4167
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4168
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4169
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4170
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public final writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 4194
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4195
    invoke-static {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4197
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return-void
.end method

.method public final writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4228
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4229
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4230
    array-length v0, p2

    :goto_0
    if-ge p0, v0, :cond_1

    aget-object v1, p2, p0

    .line 4231
    invoke-static {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4234
    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 4175
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4176
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4177
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4178
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4179
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/server/power/stats/BatteryStatsImpl$TimeMultiStateCounter;)V

    .line 4180
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p2, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 4181
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
