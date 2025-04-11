.class public Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# instance fields
.field public mInDischarge:Z

.field public mLastAddedDurationUs:J

.field public mLastAddedTimeUs:J

.field public final mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 0

    .line 3109
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 3110
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 3111
    invoke-virtual {p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    return-void
.end method


# virtual methods
.method public abortLastDuration(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const/4 v0, 0x1

    .line 3184
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    return-void
.end method

.method public addDuration(JJ)V
    .locals 3

    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    const/4 v2, 0x1

    .line 3173
    invoke-virtual {p0, p3, p4, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3174
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    mul-long/2addr p1, v0

    .line 3175
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    .line 3176
    iget-boolean p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz p3, :cond_0

    .line 3177
    iget-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3178
    iget p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    :cond_0
    return-void
.end method

.method public computeCurrentCountLocked()I
    .locals 0

    .line 3189
    iget p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    return p0
.end method

.method public final computeOverage(J)J
    .locals 4

    .line 3147
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3148
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public computeRunTimeLocked(JJ)J
    .locals 0

    .line 3194
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-lez p3, :cond_0

    .line 3196
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    return-wide p1

    .line 3198
    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    return-wide p0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    .line 3141
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mLastAddedTime="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mLastAddedDuration="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 4

    const/4 v0, 0x0

    .line 3130
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    const/4 v0, 0x1

    .line 3131
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3133
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 3134
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 3136
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1

    const/4 v0, 0x0

    .line 3123
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3124
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    .line 3125
    invoke-super/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    return-void
.end method

.method public final recomputeLastDuration(JZ)V
    .locals 6

    .line 3154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->computeOverage(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 3159
    iget-boolean v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v4, :cond_0

    .line 3160
    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    :cond_0
    if-eqz p3, :cond_1

    .line 3163
    iput-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    goto :goto_0

    .line 3165
    :cond_1
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    .line 3166
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    :cond_2
    :goto_0
    return-void
.end method

.method public reset(ZJ)Z
    .locals 3

    const/4 v0, 0x1

    .line 3203
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    .line 3204
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    cmp-long v1, v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    move v2, v0

    .line 3205
    :cond_1
    invoke-super {p0, v2, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->reset(ZJ)Z

    xor-int/lit8 p0, v1, 0x1

    return p0
.end method
