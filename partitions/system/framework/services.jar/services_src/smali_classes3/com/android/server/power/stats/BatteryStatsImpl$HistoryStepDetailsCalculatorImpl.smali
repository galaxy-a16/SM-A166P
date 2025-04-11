.class public Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;


# instance fields
.field public mCurStepCpuSystemTimeMs:J

.field public mCurStepCpuUserTimeMs:J

.field public mCurStepStatIOWaitTimeMs:J

.field public mCurStepStatIdleTimeMs:J

.field public mCurStepStatIrqTimeMs:J

.field public mCurStepStatSoftIrqTimeMs:J

.field public mCurStepStatSystemTimeMs:J

.field public mCurStepStatUserTimeMs:J

.field public final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public mHasHistoryStepDetails:Z

.field public mLastStepCpuSystemTimeMs:J

.field public mLastStepCpuUserTimeMs:J

.field public mLastStepStatIOWaitTimeMs:J

.field public mLastStepStatIdleTimeMs:J

.field public mLastStepStatIrqTimeMs:J

.field public mLastStepStatSoftIrqTimeMs:J

.field public mLastStepStatSystemTimeMs:J

.field public mLastStepStatUserTimeMs:J

.field public mUpdateRequested:Z

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {p1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public addCpuStats(IIIIIIII)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    int-to-long p3, p5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    int-to-long p3, p6

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    int-to-long p3, p7

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    int-to-long p3, p8

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public finishAddingCpuLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    return-void
.end method

.method public getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mrequestImmediateCpuUpdate(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPlatformIdleStateCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPlatformIdleStateCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;->getSubsystemLowPowerStats()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iget-wide v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    sub-long v5, v3, v5

    long-to-int v5, v5

    iget-wide v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iget-wide v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    sub-long v8, v6, v8

    long-to-int v8, v8

    add-int v9, v5, v8

    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    iput-wide v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v4, v6

    if-gt v9, v4, :cond_3

    goto :goto_2

    :cond_3
    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int v7, v4, v6

    if-gt v9, v7, :cond_4

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_2

    :cond_4
    iget v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int v7, v4, v6

    if-gt v9, v7, :cond_5

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_2

    :cond_5
    iget v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    return-object p0
.end method
