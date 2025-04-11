.class public Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# static fields
.field public static final LOAD_AVERAGE_FORMAT:[I

.field public static final PROCESS_FULL_STATS_FORMAT:[I

.field public static final PROCESS_STATS_FORMAT:[I

.field public static final SYSTEM_CPU_FORMAT:[I

.field public static final sLoadComparator:Ljava/util/Comparator;


# instance fields
.field public mBaseIdleTime:J

.field public mBaseIoWaitTime:J

.field public mBaseIrqTime:J

.field public mBaseSoftIrqTime:J

.field public mBaseSystemTime:J

.field public mBaseUserTime:J

.field public mBuffer:[B

.field public mCurPids:[I

.field public mCurThreadPids:[I

.field public mCurrentSampleRealTime:J

.field public mCurrentSampleTime:J

.field public mFirst:Z

.field public final mIncludeThreads:Z

.field public mLastSampleRealTime:J

.field public mLastSampleTime:J

.field public mLoad1:F

.field public mLoad15:F

.field public mLoad5:F

.field public final mLoadAverageData:[F

.field public final mProcStats:Ljava/util/ArrayList;

.field public final mProcessFullStatsData:[J

.field public final mProcessFullStatsStringData:[Ljava/lang/String;

.field public final mProcessStatsData:[J

.field public mRelIdleTime:I

.field public mRelIoWaitTime:I

.field public mRelIrqTime:I

.field public mRelSoftIrqTime:I

.field public mRelSystemTime:I

.field public mRelUserTime:I

.field public final mSinglePidStatsData:[J

.field public final mSystemCpuData:[J

.field public final mWorkingProcs:Ljava/util/ArrayList;

.field public final mWorkingProcsMap:Landroid/util/SparseArray;

.field public mWorkingProcsSorted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/application/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iput-boolean p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    return-void
.end method


# virtual methods
.method public final buildWorkingProcs()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v6, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v7, v6, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    :cond_4
    return-void
.end method

.method public final collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 37

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v8, p5

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v9

    move v11, v0

    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_1
    const-string v1, ": "

    const-string v2, "ProcessStats"

    if-ge v13, v11, :cond_15

    aget v3, v9, v13

    if-gez v3, :cond_1

    goto/16 :goto_f

    :cond_1
    if-ge v0, v12, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-object v15, v5

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    const-string v5, " majfaults="

    const-string v14, " minfaults="

    const-string v4, " stime="

    const-string v10, " utime="

    move/from16 v16, v11

    const-string v11, " pid="

    move-object/from16 v17, v9

    const-string v9, "Load"

    const/16 v18, 0x3

    const/16 v19, 0x2

    move-object/from16 v20, v4

    const-string v4, " pid "

    const-string/jumbo v21, "process"

    const-string/jumbo v22, "thread"

    if-eqz v15, :cond_b

    move-object/from16 v23, v5

    iget v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v5, v3, :cond_a

    const/4 v5, 0x0

    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    add-int/lit8 v24, v0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_3

    move-object/from16 v5, v21

    goto :goto_3

    :cond_3
    move-object/from16 v5, v22

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    iget-object v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    move-wide/from16 v21, v4

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    move/from16 v25, v12

    move/from16 v26, v13

    const/4 v2, 0x1

    aget-wide v12, v0, v2

    aget-wide v1, v0, v19

    move-object/from16 v27, v9

    aget-wide v8, v0, v18

    move-wide/from16 v28, v4

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v0, v1, v4

    if-nez v0, :cond_5

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iget-boolean v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v1, :cond_9

    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto/16 :goto_6

    :cond_5
    iget-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    :cond_6
    if-gez v7, :cond_7

    iget-object v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v6, v15, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/16 v18, 0x0

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v30, v12

    move-wide v12, v1

    move-object v1, v4

    move v2, v3

    move/from16 v3, v18

    move-object/from16 v36, v20

    move-wide/from16 v32, v21

    move-wide/from16 v34, v28

    move-object/from16 v4, v19

    move-object/from16 v7, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_4

    :cond_7
    move-wide/from16 v30, v12

    move-object/from16 v36, v20

    move-wide/from16 v32, v21

    move-object/from16 v7, v23

    move-wide/from16 v34, v28

    move-wide v12, v1

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    move-wide/from16 v10, v32

    sub-long v0, v10, v0

    iput-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    iput-wide v10, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput-wide v12, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iput-wide v8, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iget-wide v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    sub-long v12, v4, v0

    long-to-int v0, v12

    iput v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-wide v2, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    iput-wide v4, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    const/4 v0, 0x1

    iput-boolean v0, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v25, v12

    move/from16 v26, v13

    :cond_9
    :goto_6
    move/from16 v9, p2

    move/from16 v0, v24

    move/from16 v12, v25

    move/from16 v13, v26

    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_e

    :cond_a
    move-object v8, v9

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v5, v20

    move-object/from16 v7, v23

    goto :goto_8

    :cond_b
    move-object v7, v5

    move-object v8, v9

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v5, v20

    :goto_8
    if-eqz v15, :cond_e

    iget v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-le v9, v3, :cond_c

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v9, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v5, v15, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    move-object/from16 v7, p5

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v25, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p2

    if-gez v9, :cond_d

    move-object/from16 v8, v21

    goto :goto_9

    :cond_d
    move-object/from16 v8, v22

    :goto_9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v13, v26, -0x1

    goto :goto_7

    :cond_e
    :goto_a
    move/from16 v9, p2

    move-object v12, v7

    move-object/from16 v7, p5

    new-instance v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget-boolean v15, v6, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    invoke-direct {v13, v3, v9, v15}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(IIZ)V

    invoke-virtual {v7, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v15, v0, 0x1

    add-int/lit8 v20, v25, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v5

    const-string v5, "New "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v9, :cond_f

    move-object/from16 v5, v21

    goto :goto_b

    :cond_f
    move-object/from16 v5, v22

    :goto_b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    iget-object v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    move/from16 v21, v15

    const/4 v15, 0x0

    invoke-static {v4, v5, v0, v1, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object/from16 v27, v8

    aget-wide v7, v1, v4

    iput-wide v7, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    aget-wide v4, v1, v19

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    aget-wide v4, v1, v18

    iput-wide v4, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    const/4 v0, 0x4

    aget-wide v0, v1, v0

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    goto :goto_c

    :cond_10
    move-object/from16 v27, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<unknown>"

    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    iput-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    :goto_c
    if-gez v9, :cond_12

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-virtual {v6, v13, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    iget-object v5, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    iget-object v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v7

    move-object/from16 v7, v36

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_d

    :cond_11
    move-object/from16 v7, v36

    goto :goto_d

    :cond_12
    move-object/from16 v7, v36

    iget-boolean v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_13

    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    :cond_13
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-nez p3, :cond_14

    iget-boolean v0, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_14

    iput-boolean v3, v13, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    :cond_14
    move/from16 v12, v20

    move/from16 v0, v21

    move/from16 v13, v26

    :goto_e
    add-int/2addr v13, v3

    move-object/from16 v8, p5

    move v7, v9

    move/from16 v11, v16

    move-object/from16 v9, v17

    goto/16 :goto_1

    :cond_15
    :goto_f
    move-object/from16 v17, v9

    move/from16 v25, v12

    const/4 v3, 0x1

    move/from16 v12, v25

    :goto_10
    if-ge v0, v12, :cond_16

    move-object/from16 v4, p5

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    iput v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_16
    return-object v17
.end method

.method public final countWorkingStats()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getLastIdleTime()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    return p0
.end method

.method public final getLastIrqTime()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    return p0
.end method

.method public final getLastSystemTime()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    return p0
.end method

.method public final getLastUserTime()I
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    return p0
.end method

.method public final getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "app_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v0, p2

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    :cond_3
    iget-object p2, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    :cond_5
    return-void
.end method

.method public final getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    aget-byte v5, v5, v4

    if-ne v5, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-direct {p1, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    :catch_2
    move-object v2, v1

    :catch_3
    if-eqz v2, :cond_4

    goto :goto_3

    :catch_4
    move-object v2, v1

    :catch_5
    if-eqz v2, :cond_4

    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_6
    :cond_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public update()V
    .locals 22

    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ProcessStats"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const-string v2, "/proc/stat"

    const/4 v8, 0x0

    invoke-static {v2, v1, v8, v0, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    aget-wide v1, v0, v11

    aget-wide v3, v0, v10

    add-long/2addr v1, v3

    aget-wide v3, v0, v9

    const/4 v5, 0x3

    aget-wide v12, v0, v5

    const/4 v14, 0x4

    aget-wide v8, v0, v14

    const/16 v16, 0x5

    aget-wide v14, v0, v16

    const/16 v17, 0x6

    aget-wide v10, v0, v17

    move-wide/from16 v18, v12

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v12, v1, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v12, v3, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    sub-long v12, v8, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v12, v14, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v12, v10, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    iget-wide v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v12, v18, v12

    long-to-int v12, v12

    iput v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Total U:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    aget-wide v5, v0, v13

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " N:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v7

    const/4 v5, 0x1

    aget-wide v6, v0, v5

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " S:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v20, v10

    const/4 v6, 0x2

    aget-wide v10, v0, v6

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " I:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    aget-wide v10, v0, v7

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " W:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-wide v10, v0, v7

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Q:"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v16

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " O:"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v17

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Load"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rel U:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p0

    iget v12, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    iput-wide v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    iput-wide v8, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    iput-wide v14, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    move-wide/from16 v0, v18

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    goto :goto_0

    :cond_0
    move-object v11, v6

    move-object v13, v7

    :goto_0
    const-string v1, "/proc"

    const/4 v2, -0x1

    iget-boolean v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    iget-object v4, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v5, v11, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    iget v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    :cond_1
    iput v2, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    iput v1, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v11, v2, v1, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onLoadChanged(FFF)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v11, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    return-void
.end method
