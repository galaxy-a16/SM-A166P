.class public Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# instance fields
.field public final mObservers:Ljava/util/Collection;

.field public mPastRealtimeUs:J

.field public mPastUptimeUs:J

.field public mRealtimeStartUs:J

.field public mRealtimeUs:J

.field public mRunning:Z

.field public mUnpluggedRealtimeUs:J

.field public mUnpluggedUptimeUs:J

.field public mUptimeStartUs:J

.field public mUptimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2080
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2076
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 2084
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public computeRealtime(JI)J
    .locals 2

    .line 2126
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public computeUptime(JI)J
    .locals 2

    .line 2122
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public getRealtime(J)J
    .locals 4

    .line 2138
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2139
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 2140
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getUptime(J)J
    .locals 4

    .line 2130
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2131
    iget-boolean v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 2132
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public init(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2096
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 2097
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2098
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2099
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2100
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2101
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2103
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 2154
    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    return p0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 2193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 2194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    return-void
.end method

.method public remove(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V
    .locals 0

    .line 2088
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset(JJ)V
    .locals 1

    .line 2107
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    .line 2108
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2109
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    goto :goto_0

    .line 2111
    :cond_0
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2112
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2115
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2117
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    :goto_0
    return-void
.end method

.method public setRunning(ZJJ)Z
    .locals 10

    .line 2158
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v0, p1, :cond_2

    .line 2159
    iput-boolean p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz p1, :cond_0

    .line 2161
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 2162
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 2163
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 2164
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 2168
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2169
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v2, p4

    move-wide v4, p1

    move-wide v6, v8

    invoke-interface/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    goto :goto_0

    .line 2174
    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 2175
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 2176
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide p1

    .line 2177
    invoke-virtual {p0, p4, p5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 2181
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2182
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;

    move-wide v3, p4

    move-wide v5, p1

    move-wide v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 1

    const/4 v0, 0x0

    .line 2198
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2199
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
