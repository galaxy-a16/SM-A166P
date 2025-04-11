.class public Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mCurrentReportedCount:I

.field public mCurrentReportedTotalTimeUs:J

.field public mTimeBaseRunning:Z

.field public mTrackingReportedValues:Z

.field public mUnpluggedReportedCount:I

.field public mUnpluggedReportedTotalTimeUs:J

.field public mUpdateVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 1

    const/4 v0, 0x0

    .line 2942
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 2943
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2944
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x0

    .line 2931
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2932
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 2933
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2934
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 2935
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2936
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    move v0, p3

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2937
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method


# virtual methods
.method public add(JIJ)V
    .locals 8

    .line 3017
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    add-long v3, v0, p1

    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    add-int v5, p1, p3

    move-object v2, p0

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->update(JIJ)V

    return-void
.end method

.method public computeCurrentCountLocked()I
    .locals 2

    .line 3054
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_0

    .line 3055
    iget v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public computeRunTimeLocked(JJ)J
    .locals 2

    .line 3048
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p3, :cond_0

    .line 3049
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    sub-long/2addr p3, v0

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    :goto_0
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public endSample(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2959
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2960
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    .line 2961
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    const/4 p1, 0x0

    .line 2962
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2963
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    return-void
.end method

.method public getUpdateVersion()I
    .locals 0

    .line 2971
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 3039
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mCurrentReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mUnpluggedReportedCount="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurrentReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 0

    .line 3023
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 3024
    iget-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz p1, :cond_0

    .line 3025
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 3026
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    :cond_0
    const/4 p1, 0x1

    .line 3028
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 0

    .line 3033
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    const/4 p1, 0x0

    .line 3034
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    return-void
.end method

.method public reset(ZJ)Z
    .locals 0

    .line 3070
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    const/4 p1, 0x0

    .line 3071
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    const-wide/16 p2, 0x0

    .line 3072
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 3073
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    const/4 p0, 0x1

    return p0
.end method

.method public setUpdateVersion(I)V
    .locals 0

    .line 2967
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return-void
.end method

.method public update(JIJ)V
    .locals 2

    .line 2987
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-nez v0, :cond_0

    .line 2989
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2990
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    :cond_0
    const/4 v0, 0x1

    .line 2993
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2995
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    if-ge p3, v0, :cond_2

    .line 2996
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->endSample(J)V

    .line 2999
    :cond_2
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 3000
    iput p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    return-void
.end method
