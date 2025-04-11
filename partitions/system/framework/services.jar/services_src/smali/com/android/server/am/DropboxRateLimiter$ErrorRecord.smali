.class public Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public mSuccessiveRateLimitCycles:I

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;JI)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 181
    iput p4, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method


# virtual methods
.method public getAllowedEntries()I
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0
.end method

.method public getBufferDuration()J
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 v0, 0x124f80

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x927c0

    :goto_0
    return-wide v0
.end method

.method public getCount()I
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return p0
.end method

.method public getStartTime()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-wide v0
.end method

.method public hasExpired(J)Z
    .locals 4

    const-wide/16 v0, 0x3

    .line 230
    invoke-virtual {p0}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->getBufferDuration()J

    move-result-wide v2

    mul-long/2addr v2, v0

    .line 231
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    sub-long/2addr p1, v0

    cmp-long p0, p1, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public incrementCount()V
    .locals 1

    .line 194
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public incrementSuccessiveRateLimitCycles()V
    .locals 1

    .line 202
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method

.method public isRepeated()Z
    .locals 1

    .line 218
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCount(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-void
.end method

.method public setSuccessiveRateLimitCycles(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    return-void
.end method
