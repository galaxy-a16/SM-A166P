.class final Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# static fields
.field public static final mRandom:Ljava/util/Random;


# instance fields
.field public mAnonMemFreedKBs:J

.field public mCpuTimeMillis:F

.field public mDeltaAnonRssKBs:J

.field public mOomAdj:I

.field public mOomAdjReason:I

.field public mOrigAnonRss:J

.field public mProcState:I

.field public mProcessName:Ljava/lang/String;

.field public final mRssAfterCompaction:[J

.field public mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

.field public final mUid:I

.field public mZramConsumedKBs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1910
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([JLcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJIIII)V
    .locals 3

    move-object v0, p0

    .line 1927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 1928
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    move-object v1, p2

    .line 1929
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-object v1, p3

    .line 1930
    iput-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcessName:Ljava/lang/String;

    move/from16 v1, p17

    .line 1931
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mUid:I

    move-wide v1, p4

    .line 1932
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    move-wide v1, p6

    .line 1933
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    move-wide v1, p8

    .line 1934
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    move-wide v1, p12

    long-to-float v1, v1

    .line 1935
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    move-wide v1, p10

    .line 1936
    iput-wide v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    move/from16 v1, p14

    .line 1937
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    move/from16 v1, p15

    .line 1938
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    move/from16 v1, p16

    .line 1939
    iput v1, v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mSourceType:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->getCompactEfficiency()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->getCompactCost()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    .line 1957
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1954
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCompactCost()D
    .locals 4

    .line 1946
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCompactEfficiency()D
    .locals 4

    .line 1942
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mAnonMemFreedKBs:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getRssAfterCompaction()[J
    .locals 0

    .line 1950
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRssAfterCompaction:[J

    return-object p0
.end method

.method public sendStat()V
    .locals 13

    .line 1961
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v1, 0x1eb

    .line 1962
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mUid:I

    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mProcState:I

    iget v4, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdj:I

    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mDeltaAnonRssKBs:J

    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mZramConsumedKBs:J

    iget v9, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mCpuTimeMillis:F

    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOrigAnonRss:J

    iget v12, p0, Lcom/android/server/am/CachedAppOptimizer$SingleCompactionStats;->mOomAdjReason:I

    invoke-static/range {v1 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJJFJI)V

    :cond_0
    return-void
.end method
