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

    .line 4651
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4652
    new-instance p1, Landroid/os/BatteryStats$HistoryStepDetails;

    invoke-direct {p1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public addCpuStats(IIIIIIII)V
    .locals 4

    .line 4800
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    .line 4801
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    .line 4802
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    .line 4803
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    int-to-long p3, p4

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    .line 4804
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    int-to-long p3, p5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    .line 4805
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    int-to-long p3, p6

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    .line 4806
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    int-to-long p3, p7

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    .line 4807
    iget-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    int-to-long p3, p8

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 4817
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const-wide/16 v0, 0x0

    .line 4818
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 4819
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 4820
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 4821
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 4822
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 4823
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 4824
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 4825
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    return-void
.end method

.method public finishAddingCpuLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 4811
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const/4 v0, 0x0

    .line 4812
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    return-void
.end method

.method public getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;
    .locals 10

    .line 4685
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4686
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    .line 4689
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mrequestImmediateCpuUpdate(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    .line 4691
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPlatformIdleStateCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4692
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPlatformIdleStateCallback(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;

    move-result-object v1

    .line 4693
    invoke-interface {v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;->getSubsystemLowPowerStats()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 4701
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4704
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4706
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 4707
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 4708
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4710
    :cond_1
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 4711
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 4712
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 4713
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 4714
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 4715
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 4716
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 4717
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    const/4 p0, 0x0

    return-object p0

    .line 4730
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 4731
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 4732
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 4733
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 4735
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 4737
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 4738
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 4740
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iget-wide v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    const/4 v2, -0x1

    .line 4741
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 4742
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 4743
    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    iput v1, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 4744
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 4746
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 4747
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    iget-wide v5, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    sub-long v5, v3, v5

    long-to-int v5, v5

    .line 4749
    iget-wide v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iget-wide v8, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    sub-long v8, v6, v8

    long-to-int v8, v8

    add-int v9, v5, v8

    .line 4752
    iput-wide v3, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 4753
    iput-wide v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    .line 4754
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    add-int/2addr v4, v6

    if-gt v9, v4, :cond_3

    goto :goto_2

    .line 4757
    :cond_3
    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    add-int v7, v4, v6

    if-gt v9, v7, :cond_4

    .line 4758
    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 4759
    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 4760
    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    goto :goto_2

    .line 4762
    :cond_4
    iget v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iput v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 4763
    iput v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 4764
    iput v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 4765
    iget v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    add-int v7, v4, v6

    if-gt v9, v7, :cond_5

    .line 4766
    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 4767
    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 4768
    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    goto :goto_2

    .line 4770
    :cond_5
    iget v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iput v7, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 4771
    iput v4, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 4772
    iput v6, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 4773
    iget v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    iput v2, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 4774
    iput v5, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 4775
    iput v8, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4779
    :cond_6
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 4780
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 4781
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 4782
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 4783
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 4784
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 4785
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 4786
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    .line 4787
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    return-object p0
.end method
