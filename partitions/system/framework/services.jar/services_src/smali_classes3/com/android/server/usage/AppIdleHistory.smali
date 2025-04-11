.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"


# instance fields
.field public mElapsedDuration:J

.field public mElapsedSnapshot:J

.field public mIdleHistory:Landroid/util/SparseArray;

.field public mScreenOn:Z

.field public mScreenOnDuration:J

.field public mScreenOnSnapshot:J

.field public final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 205
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 206
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 207
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    return-void
.end method


# virtual methods
.method public clearLastUsedTimestamps(Ljava/lang/String;I)V
    .locals 6

    .line 692
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 693
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/32 p1, -0x80000000

    .line 696
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 697
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 698
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_0
    return-void
.end method

.method public clearUsage(Ljava/lang/String;I)V
    .locals 0

    .line 604
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 605
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .locals 5

    const-string p0, " expiryTimes="

    .line 1020
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_3

    .line 1022
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "("

    .line 1026
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 1029
    iget-object v1, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1030
    iget-object v2, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    if-eqz v0, :cond_1

    const-string v4, ","

    .line 1032
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p3, v2

    .line 1035
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ")"

    .line 1037
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "<none>"

    .line 1023
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const-string v0, "User "

    .line 950
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " App Standby States:"

    .line 952
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 954
    iget-object v0, v6, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/util/ArrayMap;

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 957
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v14

    .line 958
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    if-nez v9, :cond_0

    return-void

    .line 960
    :cond_0
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 962
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 963
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 964
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    move-object/from16 v1, p3

    if-nez v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move/from16 v19, v4

    move/from16 v20, v5

    move v1, v8

    move-object/from16 v18, v9

    goto/16 :goto_2

    .line 967
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 971
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " used="

    .line 972
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 973
    iget-wide v0, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v3

    move-object/from16 v18, v9

    move-object v9, v2

    move-wide v2, v14

    move/from16 v19, v4

    move/from16 v20, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v0, " usedByUser="

    .line 974
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v0, " usedScr="

    .line 977
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 978
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    const-string v0, " lastPred="

    .line 979
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 981
    invoke-virtual {v6, v7, v8, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    const-string v0, " lastJob="

    .line 982
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 983
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v0, v14, v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastInformedBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 985
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, " lastRestrictAttempt="

    .line 986
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 987
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v0, v14, v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastRestrictReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 990
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 992
    :cond_2
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const-string v0, " nextEstimatedLaunchTime="

    .line 993
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 994
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    sub-long/2addr v0, v10

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 996
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p2

    invoke-virtual {v6, v9, v1, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "y"

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "n"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v5, v20, 0x1

    move v8, v1

    move-object/from16 v9, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 999
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "totalElapsedTime="

    .line 1000
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "totalScreenOnTime="

    .line 1003
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .locals 3

    .line 942
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 944
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 945
    aget v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .locals 6

    .line 558
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 560
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x32

    goto :goto_0

    .line 561
    :cond_0
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_0
    return p0
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .locals 5

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 566
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 569
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v4, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_1

    :cond_0
    const/16 v4, 0xa

    :goto_1
    invoke-direct {v2, v3, v4}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 569
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .locals 6

    .line 576
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 578
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 579
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 6

    .line 421
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 423
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    return-object p0
.end method

.method public getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .locals 6

    .line 676
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p4

    .line 677
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_1

    .line 679
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public getElapsedTime(J)J
    .locals 2

    .line 583
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;IJ)J
    .locals 6

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 519
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-wide p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-wide p0

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 0

    const/4 p0, 0x0

    .line 846
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    .line 848
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 0

    const/4 p0, 0x0

    .line 840
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p3

    .line 842
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 0

    .line 392
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    if-nez p0, :cond_0

    if-eqz p5, :cond_0

    .line 394
    new-instance p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-wide/32 p3, -0x80000000

    .line 395
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 396
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 397
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 398
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const/16 p3, 0x32

    .line 399
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p3, 0x100

    .line 400
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 p3, -0x1

    .line 401
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const-wide/high16 p3, -0x8000000000000000L

    .line 402
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 403
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public getScreenOnTime(J)J
    .locals 4

    .line 228
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 229
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_0

    .line 230
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_0
    return-wide v0
.end method

.method public getScreenOnTimeFile()Ljava/io/File;
    .locals 2

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v1, "screen_on_time"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .locals 6

    .line 633
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 634
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 637
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_3

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v0, v2

    .line 643
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr p2, p0

    .line 650
    array-length p0, p5

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 651
    aget-wide v2, p5, p0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    aget-wide v2, p6, p0

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .locals 6

    .line 536
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 538
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 540
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr p2, p0

    return-wide p2

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J
    .locals 6

    .line 547
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 550
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long/2addr p2, p0

    return-wide p2

    :cond_1
    :goto_0
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getUserFile(I)Ljava/io/File;
    .locals 4

    .line 687
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "app_idle_stats.xml"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserHistory(I)Landroid/util/ArrayMap;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    :cond_0
    return-object v0
.end method

.method public final insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    return-void

    .line 833
    :cond_0
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_1

    .line 834
    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 836
    :cond_1
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .locals 6

    .line 413
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 415
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 416
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p1, 0x28

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .locals 6

    const/16 v0, 0x102

    const p0, 0xff00

    and-int v4, p4, p0

    and-int/lit16 v5, p4, 0xff

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 664
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    return-void
.end method

.method public noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .locals 6

    .line 502
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 504
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 505
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 506
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p4, v0

    if-gez p0, :cond_0

    const-string p0, "<uninitialized>"

    .line 1012
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-long/2addr p2, p4

    .line 1014
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method public final readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 714
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 715
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 716
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 717
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 720
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v9, :cond_1

    .line 726
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 808
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v5, v6

    goto/16 :goto_9

    .line 729
    :cond_1
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_2

    .line 808
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_2
    :try_start_4
    const-string/jumbo v0, "version"

    const/4 v10, 0x0

    .line 732
    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 733
    :cond_3
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_c

    if-ne v0, v9, :cond_3

    .line 735
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "package"

    .line 736
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "name"

    .line 737
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 738
    new-instance v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v12}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-string v0, "elapsedIdleTime"

    .line 740
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-string v0, "lastUsedByUserElapsedTime"

    .line 741
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-string/jumbo v0, "screenIdleTime"

    .line 745
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    const-string v0, "lastPredictedTime"

    const-wide/16 v13, 0x0

    .line 746
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-string v0, "appLimitBucket"

    .line 748
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    goto :goto_2

    .line 752
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const-string v0, "bucketReason"

    .line 754
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "lastJobRunTime"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v15, v6

    const-wide/high16 v5, -0x8000000000000000L

    .line 755
    :try_start_5
    invoke-virtual {v1, v7, v9, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const/16 v5, 0x100

    .line 757
    iput v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v5, 0x10

    if-eqz v0, :cond_5

    .line 761
    :try_start_6
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    const-string v6, "Unable to read bucketing reason"

    .line 763
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 767
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-string v0, "lastRestrictionAttemptReason"

    const/4 v8, 0x0

    .line 768
    invoke-interface {v7, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_6

    .line 773
    :try_start_8
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_9
    const-string v5, "Unable to read last restrict reason"

    .line 775
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    .line 778
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    const/4 v0, -0x1

    .line 780
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    move-object/from16 v5, p2

    .line 781
    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    if-lt v10, v8, :cond_8

    .line 784
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 785
    :cond_7
    :goto_5
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "expiryTimes"

    .line 786
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 787
    invoke-virtual {v1, v7, v12}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V

    goto :goto_5

    :cond_8
    const-string v0, "activeTimeoutTime"

    .line 791
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v0, "workingSetTimeoutTime"

    .line 793
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v8, v13

    if-nez v0, :cond_9

    cmp-long v0, v5, v13

    if-eqz v0, :cond_b

    :cond_9
    const/16 v11, 0xa

    .line 796
    invoke-virtual {v1, v12, v11, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    const/16 v0, 0x14

    .line 798
    invoke-virtual {v1, v12, v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_a
    move-object v15, v6

    :cond_b
    :goto_6
    move-object v6, v15

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_c
    move-object v15, v6

    .line 808
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v15, v6

    :goto_7
    move-object v5, v15

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v15, v6

    :goto_8
    move-object v5, v15

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    .line 806
    :goto_9
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 808
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_a
    return-void

    :catchall_4
    move-exception v0

    :goto_b
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 809
    throw v0
.end method

.method public final readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .locals 5

    .line 814
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 815
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "item"

    .line 816
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "bucket"

    const/4 v2, -0x1

    .line 817
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "AppIdleHistory"

    const-string v2, "Error reading the buckets expiry times"

    .line 819
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "expiry"

    const-wide/16 v3, 0x0

    .line 822
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 823
    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final readScreenOnTime()V
    .locals 4

    .line 241
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 246
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    :catch_0
    :goto_0
    return-void
.end method

.method public final removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .locals 2

    .line 343
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_2

    .line 347
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_1

    .line 348
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 5

    or-int/lit16 p5, p5, 0x300

    .line 299
    invoke-static {p5}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v0

    .line 301
    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v1

    const/16 v4, 0x200

    if-eq v3, v4, :cond_0

    move p5, v1

    move p4, v2

    goto :goto_0

    :cond_0
    cmp-long v1, p8, p6

    if-lez v1, :cond_2

    .line 311
    invoke-virtual {p0, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    .line 312
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v1, :cond_1

    .line 313
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 315
    :cond_1
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 316
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 317
    invoke-static {p8, p9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p8

    .line 316
    invoke-virtual {v3, p4, p8, p9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 318
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    invoke-virtual {p0, p1, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    :cond_2
    :goto_0
    const-wide/16 p8, 0x0

    cmp-long p8, p6, p8

    if-eqz p8, :cond_4

    .line 323
    iget-wide p8, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v1, p6, v1

    add-long/2addr p8, v1

    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    if-eqz v0, :cond_3

    .line 326
    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 328
    :cond_3
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide p6

    iput-wide p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 331
    :cond_4
    iget p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt p6, p4, :cond_6

    if-le p6, p4, :cond_5

    .line 333
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 334
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    .line 336
    :cond_5
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :cond_6
    return-object p1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .locals 10

    move-object v6, p0

    move v7, p2

    .line 372
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p5

    .line 373
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    move-wide/from16 v8, p7

    .line 375
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 429
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .locals 6

    .line 434
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 437
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 438
    :goto_0
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 439
    iput p6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 441
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p3

    const v2, 0xff00

    and-int/2addr v2, p6

    const/16 v3, 0x500

    if-ne v2, v3, :cond_1

    .line 444
    iput-wide p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 445
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    :cond_1
    if-eqz p7, :cond_2

    .line 447
    iget-object p3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p3, :cond_2

    .line 448
    invoke-virtual {p3}, Landroid/util/SparseLongArray;->clear()V

    :cond_2
    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    :cond_3
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJJ)V
    .locals 6

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 473
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 474
    iput-wide p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .locals 9

    if-eqz p3, :cond_0

    const/16 p3, 0x28

    const/16 v0, 0x400

    goto :goto_0

    :cond_0
    const/16 p3, 0xa

    const/16 v0, 0x303

    :goto_0
    move v7, v0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p4

    move v6, p3

    .line 598
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return p3
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .locals 6

    .line 485
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 487
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p1

    .line 488
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    return-void
.end method

.method public shouldInformListeners(Ljava/lang/String;IJI)Z
    .locals 6

    .line 610
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 611
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 613
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq p1, p5, :cond_0

    .line 614
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDisplay(ZJ)V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 214
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p1, :cond_1

    .line 216
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_0

    .line 218
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 219
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 220
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    :goto_0
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .locals 0

    .line 462
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 463
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method

.method public userFileExists(I)Z
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public writeAppIdleDurations()V
    .locals 6

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 275
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 276
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public writeAppIdleTimes(IJ)V
    .locals 20

    const-string v0, "item"

    const-string v1, "expiryTimes"

    const-string/jumbo v2, "package"

    const-string/jumbo v3, "packages"

    const-string v4, "AppIdleHistory"

    .line 860
    new-instance v5, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 862
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 863
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 865
    new-instance v9, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 866
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 867
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    .line 868
    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 870
    invoke-virtual {v9, v6, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    .line 871
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v8, p0

    move-wide/from16 v10, p2

    .line 873
    invoke-virtual {v8, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 874
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v8

    .line 875
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_7

    .line 877
    :try_start_2
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v15, :cond_0

    :try_start_3
    const-string v15, "Skipping App Idle write for unexpected null package"

    .line 880
    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v16, v7

    move-object/from16 p2, v8

    move-object v7, v9

    move-wide/from16 v17, v10

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v6, v7

    goto/16 :goto_6

    .line 883
    :cond_0
    :try_start_4
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 884
    invoke-virtual {v9, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 p2, v8

    const-string/jumbo v8, "name"

    .line 885
    invoke-virtual {v9, v6, v8, v15}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "elapsedIdleTime"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v16, v7

    .line 886
    :try_start_5
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 887
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 886
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "lastUsedByUserElapsedTime"

    .line 888
    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 889
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 888
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenIdleTime"

    move-object v7, v9

    .line 890
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 891
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 890
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "lastPredictedTime"

    move-wide/from16 v17, v10

    .line 892
    iget-wide v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 893
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 892
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "appLimitBucket"

    .line 894
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 895
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 894
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "bucketReason"

    .line 896
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 897
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 896
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    const-string v6, "lastJobRunTime"

    .line 899
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    :cond_1
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_2

    const-string v6, "lastRestrictionAttemptElapsedTime"

    .line 904
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 903
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v6, "lastRestrictionAttemptReason"

    .line 906
    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 907
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 906
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v6, v8, v10

    if-lez v6, :cond_3

    const-string/jumbo v6, "nextEstimatedAppLaunchTime"

    .line 910
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 909
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    :cond_3
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    .line 913
    invoke-virtual {v7, v6, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_5

    .line 916
    iget-object v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    cmp-long v11, v9, v17

    if-gez v11, :cond_4

    move/from16 v19, v6

    goto :goto_2

    .line 921
    :cond_4
    iget-object v11, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v11

    const/4 v15, 0x0

    .line 922
    invoke-virtual {v7, v15, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v15, "bucket"

    .line 923
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v19, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v15, v11}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "expiry"

    .line 924
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v11, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    invoke-virtual {v7, v6, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 927
    invoke-virtual {v7, v6, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    const/4 v6, 0x0

    .line 929
    invoke-virtual {v7, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move-object v9, v7

    move-object/from16 v7, v16

    move-wide/from16 v10, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    :goto_4
    move-object/from16 v6, v16

    goto :goto_6

    :cond_7
    move-object/from16 v16, v7

    move-object v7, v9

    move-object v1, v6

    .line 932
    :try_start_6
    invoke-virtual {v7, v1, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    invoke-virtual {v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v1, v16

    .line 934
    :try_start_7
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v7

    :goto_5
    move-object v6, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v6

    .line 936
    :goto_6
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing app idle file for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method

.method public writeAppIdleTimes(J)V
    .locals 3

    .line 852
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 854
    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final writeScreenOnTime()V
    .locals 6

    const-string v0, "\n"

    .line 256
    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 259
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 260
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 264
    :catch_1
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void
.end method
