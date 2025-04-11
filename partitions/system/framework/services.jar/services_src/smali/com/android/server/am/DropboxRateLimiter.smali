.class public Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;

.field public mLastMapCleanUp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;-><init>(Lcom/android/server/am/DropboxRateLimiter$DefaultClock-IA;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter$Clock;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    .line 56
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    return-void
.end method


# virtual methods
.method public errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .locals 4

    .line 118
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->hasExpired(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    .line 127
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result v1

    int-to-long v1, v1

    const-string/jumbo v3, "stability_errors.value_dropbox_buffer_expired_count"

    .line 125
    invoke-static {v3, v1, v2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    .line 128
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    :cond_2
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    return-void
.end method

.method public final recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    const-string p0, "DropboxRateLimiter"

    const-string v0, "Rate limiter reset."

    .line 141
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .locals 9

    .line 68
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$Clock;

    invoke-interface {v0}, Lcom/android/server/am/DropboxRateLimiter$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 69
    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 71
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    .line 73
    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;JI)V

    .line 76
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DropboxRateLimiter;->errorKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getStartTime()J

    move-result-wide p1

    sub-long p1, v0, p1

    .line 81
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    .line 82
    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result v6

    .line 83
    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setStartTime(J)V

    .line 84
    invoke-virtual {v3, v4}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setCount(I)V

    if-lez v6, :cond_1

    .line 90
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v0

    const-wide/16 v7, 0x2

    mul-long/2addr v0, v7

    cmp-long p1, p1, v0

    if-gez p1, :cond_1

    .line 91
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementSuccessiveRateLimitCycles()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->setSuccessiveRateLimitCycles(I)V

    .line 96
    :goto_0
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 99
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->incrementCount()V

    .line 100
    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getCount()I

    move-result p1

    invoke-virtual {v3}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getAllowedEntries()I

    move-result p2

    if-le p1, p2, :cond_3

    .line 101
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-virtual {p0, v3}, Lcom/android/server/am/DropboxRateLimiter;->recentlyDroppedCount(Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;)I

    move-result p2

    invoke-direct {p1, p0, v4, p2}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    monitor-exit v2

    return-object p1

    .line 103
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p1, p0, v5, v5}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V

    return-object p1

    :catchall_0
    move-exception p0

    .line 103
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
