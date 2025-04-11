.class public Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# instance fields
.field public mCfAnimationDuration:I

.field public mCfAnimationEndTime:J

.field public mCfAnimationStartTime:J

.field public mCfPrepareDuration:I

.field public mCfPrepareEndTime:J

.field public mCfPrepareStartTime:J

.field public mDisplayDuration:I

.field public mDisplayEndTime:J

.field public mDisplayStartTime:J

.field public mDone:Z

.field public mGoToSleepDiff:I

.field public mGoToSleepDuration:I

.field public mGoToSleepEndTime:J

.field public mGoToSleepStartTime:J

.field public mGoToSleepTimeStr:Ljava/lang/String;

.field public mOrder:I

.field public mSaved:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->clearAll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    iget-object v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iget-wide v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayEndTime:J

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayEndTime:J

    iget v0, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iget-boolean p1, p1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    return-void
.end method


# virtual methods
.method public calcCfAnimationDuration()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    return-void
.end method

.method public calcCfPrepareDuration()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    return-void
.end method

.method public calcDisplayDuration()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    return-void
.end method

.method public calcGoToSleepDuration()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepEndTime:J

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    return-void
.end method

.method public clearAll()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    iput-wide v1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayEndTime:J

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mSaved:Z

    return-void
.end method

.method public isStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public noteCfAnimationEnd()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationEndTime:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->calcCfAnimationDuration()V

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->noteGoToSleepEnd()V

    :cond_0
    return-void
.end method

.method public noteCfAnimationStart()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationStartTime:J

    return-void
.end method

.method public noteCfPrepareEnd()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareEndTime:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->calcCfPrepareDuration()V

    return-void
.end method

.method public noteCfPrepareStart()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    return-void
.end method

.method public noteDisplayEnd()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayEndTime:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->calcDisplayDuration()V

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->noteGoToSleepEnd()V

    :cond_0
    return-void
.end method

.method public noteDisplayStart()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayStartTime:J

    return-void
.end method

.method public noteGoToSleepDiff(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    return-void
.end method

.method public noteGoToSleepEnd()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDone:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepEndTime:J

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->calcGoToSleepDuration()V

    return-void
.end method

.method public noteGoToSleepStart(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepStartTime:J

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepTimeStr:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[OFF][%3d][%s][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mOrder:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mGoToSleepDiff:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfAnimationDuration:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mDisplayDuration:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[OFF][%3d][T:%4d]  [Caller:%2d] [Cfp:%3d] [Cfa:%2d] [Panel:%3d]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
