.class Lcom/android/server/tare/Agent$TrendCalculator;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mCtpThreshold:J

.field public mCurBalance:J

.field public mLowerThreshold:J

.field public mMaxDeltaPerSecToCtpThreshold:J

.field public mMaxDeltaPerSecToLowerThreshold:J

.field public mMaxDeltaPerSecToUpperThreshold:J

.field public mRemainingConsumableCredits:J

.field public mUpperThreshold:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .locals 11

    .line 944
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    .line 945
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_0

    cmp-long v4, v0, v5

    if-gez v4, :cond_0

    .line 946
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    goto :goto_0

    .line 947
    :cond_0
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_1

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    .line 948
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 950
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v2

    .line 951
    iget-wide v7, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    iget-wide v9, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    cmp-long p1, v7, v9

    if-ltz p1, :cond_2

    cmp-long p1, v0, v5

    if-gez p1, :cond_2

    .line 952
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    :cond_2
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 841
    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$TrendCalculator;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method public getTimeToCrossLowerThresholdMs()J
    .locals 8

    .line 905
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 913
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v0

    goto :goto_0

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    .line 915
    :goto_0
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 916
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    iget-wide v6, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    sub-long/2addr v2, v6

    div-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_2
    const-wide/16 v0, 0x3e8

    mul-long/2addr v4, v0

    return-wide v4
.end method

.method public getTimeToCrossUpperThresholdMs()J
    .locals 6

    .line 933
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 937
    :cond_0
    iget-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public reset(JJLandroid/util/ArraySet;)V
    .locals 7

    .line 871
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    .line 872
    iput-wide p3, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    const-wide/16 p1, 0x0

    .line 873
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToLowerThreshold:J

    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToUpperThreshold:J

    .line 874
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mMaxDeltaPerSecToCtpThreshold:J

    const-wide/high16 p3, -0x8000000000000000L

    .line 875
    iput-wide p3, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    const-wide v0, 0x7fffffffffffffffL

    .line 876
    iput-wide v0, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    .line 877
    iput-wide p1, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    if-eqz p5, :cond_4

    const/4 p1, 0x0

    .line 879
    :goto_0
    invoke-virtual {p5}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 880
    invoke-virtual {p5, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 881
    invoke-static {p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v2

    .line 882
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCurBalance:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 883
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_1
    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mLowerThreshold:J

    goto :goto_3

    .line 886
    :cond_1
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    cmp-long v6, v4, p3

    if-nez v6, :cond_2

    goto :goto_2

    .line 887
    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mUpperThreshold:J

    .line 889
    :goto_3
    invoke-static {p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v2

    .line 890
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mRemainingConsumableCredits:J

    cmp-long p2, v2, v4

    if-gtz p2, :cond_3

    .line 891
    iget-wide v4, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/tare/Agent$TrendCalculator;->mCtpThreshold:J

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
