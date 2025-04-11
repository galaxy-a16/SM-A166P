.class public final Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;
.super Ljava/lang/Object;
.source "DamonReclaimer.java"


# static fields
.field public static MAX_STEAL_COUNT:S = 0xas


# instance fields
.field public mDamonPGScan:J

.field public mDamonPGScanMaxReached:S

.field public mDamonPGSteal:J

.field public mDamonPGStealMaxReached:S

.field public mModulePath:Ljava/lang/String;

.field public mStartReason:Ljava/lang/String;

.field public mStartTime:J

.field public mStats:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;

.field public final synthetic this$0:Lcom/android/server/chimera/umr/DamonReclaimer;


# direct methods
.method public static bridge synthetic -$$Nest$fputmStartReason(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartReason:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStartTime(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartTime:J

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/umr/DamonReclaimer;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartReason:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J

    iput-wide v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J

    const/4 p1, 0x0

    iput-short p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGStealMaxReached:S

    iput-short p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScanMaxReached:S

    new-instance p1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;

    invoke-direct {p1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStats:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;

    iput-object p2, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mModulePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addValue(JJJJJ)V
    .locals 15

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p7

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd-yyyy HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStats:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StartTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    iget-wide v9, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartTime:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", StopTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", StartReason: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartReason:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", StopReason: Policy - :"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->modeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SystemStatus - : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->-$$Nest$smgetSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->-$$Nest$mgetSystemStatus(Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Reclaim: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes, Runtime: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, mNr_reclaim_tried_regions:  "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mBytes_reclaim_tried_regions: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mNr_reclaimed_regions: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;->-$$Nest$madd(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addValue:: illegal argument exception exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addValue:: Null pointer exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    if-lez v0, :cond_1

    :try_start_1
    iget-wide v11, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J

    sub-long v13, v9, v2

    cmp-long v0, v11, v13

    if-lez v0, :cond_1

    iget-short v0, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGStealMaxReached:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGStealMaxReached:S

    sget-short v11, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->MAX_STEAL_COUNT:S

    if-le v0, v11, :cond_0

    iput-short v8, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGStealMaxReached:S

    :cond_0
    iput-wide v6, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addValue:: ArithmeticException pg_steal "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :cond_1
    :goto_1
    cmp-long v0, v4, v6

    const-string v11, "addValue:: ArithmeticException pg_scan "

    if-lez v0, :cond_3

    :try_start_2
    iget-wide v12, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J

    sub-long/2addr v9, v4

    cmp-long v0, v12, v9

    if-lez v0, :cond_3

    iget-short v0, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScanMaxReached:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScanMaxReached:S

    sget-short v9, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->MAX_STEAL_COUNT:S

    if-le v0, v9, :cond_2

    iput-short v8, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScanMaxReached:S

    :cond_2
    iput-wide v6, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :cond_3
    :goto_2
    :try_start_3
    iget-wide v6, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J

    add-long/2addr v6, v2

    iput-wide v6, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J

    iget-wide v2, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public dumpReclaimStats(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  Damon reclaim Stats "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total PG_scan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScan:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PG_scan_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGScanMaxReached:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total PG_steal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGSteal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PG_steal_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mDamonPGStealMaxReached:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStats:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;

    invoke-static {p0, p1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;->-$$Nest$mdumpOrdered(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader$RotatingArrayList;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final fetchStats(Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->readStatsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting string to integer "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public final modeToString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->this$0:Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getMode()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Unhandled"

    goto :goto_0

    :cond_0
    const-string p0, "Proactive"

    goto :goto_0

    :cond_1
    const-string p0, "Suppressed"

    goto :goto_0

    :cond_2
    const-string p0, "Default"

    :goto_0
    return-object p0
.end method

.method public final readStatsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mModulePath:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while reading param "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public updateDamonStats()V
    .locals 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->mStartTime:J

    sub-long v7, v0, v2

    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->fetchStats(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaimed_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->fetchStats(Ljava/lang/String;)J

    move-result-wide v13

    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->bytes_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->fetchStats(Ljava/lang/String;)J

    move-result-wide v11

    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;->nr_reclaim_tried_regions:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStats;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->fetchStats(Ljava/lang/String;)J

    move-result-wide v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->addValue(JJJJJ)V

    return-void
.end method
