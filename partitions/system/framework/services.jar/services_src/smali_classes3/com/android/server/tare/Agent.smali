.class public Lcom/android/server/tare/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public final mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

.field public final mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public final mLock:Ljava/lang/Object;

.field public final mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

.field public final mScribe:Lcom/android/server/tare/Scribe;

.field public final mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

.field public final mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActionAffordabilityNotes(Lcom/android/server/tare/Agent;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tare/Agent;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/Agent;)Lcom/android/server/tare/InternalResourceService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tare/Agent;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misAffordableLocked(Lcom/android/server/tare/Agent;JJJ)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAnythingChangedLocked(Lcom/android/server/tare/Agent;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleBalanceCheckLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Agent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    .line 72
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Scribe;Lcom/android/server/tare/Analyst;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 97
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 147
    new-instance v0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    .line 957
    new-instance v0, Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-direct {v0}, Lcom/android/server/tare/Agent$TrendCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    .line 1076
    new-instance v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    .line 118
    invoke-virtual {p1}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tare/Agent;->mLock:Ljava/lang/Object;

    .line 119
    iput-object p1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 120
    iput-object p2, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 121
    iput-object p3, p0, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 122
    new-instance p2, Lcom/android/server/tare/Agent$AgentHandler;

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/android/server/tare/Agent$AgentHandler;-><init>(Lcom/android/server/tare/Agent;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    .line 123
    const-class p2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppStandbyInternal;

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 124
    new-instance p2, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    .line 125
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->get()Lcom/android/server/tare/TareHandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p1, p3, v1}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;-><init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue-IA;)V

    iput-object p2, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    return-void
.end method


# virtual methods
.method public distributeBasicIncomeLocked(I)V
    .locals 23

    move-object/from16 v6, p0

    .line 735
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Landroid/util/SparseArrayMap;

    move-result-object v7

    .line 737
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v19

    .line 738
    invoke-virtual {v7}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_3

    .line 739
    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 741
    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_2

    .line 742
    invoke-virtual {v7, v5, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/InstalledPackageInfo;

    .line 743
    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Lcom/android/server/tare/InstalledPackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 746
    :cond_0
    iget-object v2, v0, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    .line 747
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    .line 748
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v0

    move/from16 v15, p1

    int-to-double v8, v15

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 751
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v10

    sub-long/2addr v0, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_1

    .line 753
    new-instance v22, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v13, 0x0

    const/4 v14, 0x0

    long-to-double v0, v0

    mul-double/2addr v8, v0

    double-to-long v0, v8

    const-wide/16 v17, 0x0

    move-object/from16 v8, v22

    move-wide/from16 v9, v19

    move-wide/from16 v11, v19

    move-wide v15, v0

    invoke-direct/range {v8 .. v18}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v9, v3

    move-object/from16 v3, v21

    move v10, v4

    move-object/from16 v4, v22

    move v11, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_3

    :cond_1
    :goto_2
    move v9, v3

    move v10, v4

    move v11, v5

    :goto_3
    add-int/lit8 v3, v9, -0x1

    move v4, v10

    move v5, v11

    goto :goto_1

    :cond_2
    move v11, v5

    add-int/lit8 v5, v11, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1297
    iget-object v2, v0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1299
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Ongoing events:"

    .line 1300
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1304
    iget-object v4, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v7, 0x0

    :goto_0
    if-ltz v4, :cond_7

    .line 1305
    iget-object v8, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 1306
    iget-object v9, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v9

    sub-int/2addr v9, v5

    :goto_1
    if-ltz v9, :cond_6

    .line 1307
    iget-object v10, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1308
    iget-object v11, v0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 1309
    invoke-virtual {v11, v8, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArrayMap;

    .line 1313
    invoke-virtual {v11}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v12

    sub-int/2addr v12, v5

    const/4 v13, 0x0

    :goto_2
    if-ltz v12, :cond_4

    .line 1314
    invoke-virtual {v11, v12}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v14

    .line 1315
    invoke-virtual {v11, v14}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v14

    sub-int/2addr v14, v5

    :goto_3
    if-ltz v14, :cond_3

    if-nez v13, :cond_0

    .line 1318
    invoke-static {v8, v10}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v13, v5

    .line 1323
    :cond_0
    invoke-virtual {v11, v12, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 1325
    iget v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-static {v15}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    if-eqz v15, :cond_1

    const-string v15, "("

    .line 1327
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    iget-object v15, v7, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ")"

    .line 1329
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v15, " runtime="

    .line 1331
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    iget-wide v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v5, v2, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v5, " delta/sec="

    .line 1333
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v5, v5, v16

    if-eqz v5, :cond_2

    const-string v5, " ctp/sec="

    .line 1337
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v7}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v5, " refCount="

    .line 1340
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    iget v5, v7, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1342
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, -0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_4
    if-eqz v13, :cond_5

    .line 1347
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_5
    add-int/lit8 v9, v9, -0x1

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_8

    const-string v0, "N/A"

    .line 1352
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;
    .locals 2

    .line 483
    iget-wide v0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x3e8

    .line 484
    div-long/2addr p3, v0

    .line 485
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getDeltaPerSec()J

    move-result-wide v0

    mul-long/2addr v0, p3

    .line 486
    iget-object p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-nez p0, :cond_0

    .line 487
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 488
    invoke-virtual {p1}, Lcom/android/server/tare/Agent$OngoingEvent;->getCtpPerSec()J

    move-result-wide p1

    mul-long/2addr p3, p1

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0

    .line 490
    :cond_0
    iget p0, p1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    invoke-virtual {p2, p0, p5, p6}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide p2

    .line 491
    new-instance p0, Lcom/android/server/tare/EconomicPolicy$Cost;

    iget-object p1, p1, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    iget-wide p4, p1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr p4, p2

    .line 493
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 p3, 0x0

    .line 492
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/tare/EconomicPolicy$Cost;-><init>(JJ)V

    return-object p0
.end method

.method public getBalanceLocked(ILjava/lang/String;)J
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v7

    .line 155
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 156
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArrayMap;

    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 159
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 160
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->reset(Lcom/android/server/tare/Ledger;JJ)V

    .line 161
    iget-object p2, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-virtual {p1, p2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mTotalDeltaCalculator:Lcom/android/server/tare/Agent$TotalDeltaCalculator;

    invoke-static {p0}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->-$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J

    move-result-wide p0

    add-long/2addr v7, p0

    :cond_0
    return-wide v7
.end method

.method public grantBirthrightLocked(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 799
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 800
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 801
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits as soon as it was installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 806
    :cond_0
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 808
    new-instance v15, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 810
    invoke-virtual {v4, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-object v4, v15

    move-wide v5, v7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 808
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public grantBirthrightsLocked()V
    .locals 4

    .line 764
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 765
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 766
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    .line 767
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 768
    invoke-virtual {p0, v3}, Lcom/android/server/tare/Agent;->grantBirthrightsLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public grantBirthrightsLocked(I)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 774
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v7}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    .line 775
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/4 v0, 0x0

    move v5, v0

    .line 777
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 778
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/InstalledPackageInfo;

    .line 779
    invoke-virtual {v6, v0}, Lcom/android/server/tare/Agent;->shouldGiveCredits(Lcom/android/server/tare/InstalledPackageInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    move v10, v5

    goto :goto_2

    .line 782
    :cond_0
    iget-object v2, v0, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    .line 783
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 784
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_1

    .line 786
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits before economy was set up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 790
    :cond_1
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 792
    invoke-virtual {v0, v7, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide/from16 v10, v20

    move-wide/from16 v12, v20

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v10, v5

    move v5, v9

    .line 790
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :goto_2
    add-int/lit8 v5, v10, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final isAffordableLocked(JJJ)Z
    .locals 0

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    .line 169
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide p0

    cmp-long p0, p0, p5

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public noteInstantaneousEventLocked(ILjava/lang/String;ILjava/lang/String;)V
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    .line 176
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v12

    .line 182
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 183
    iget-object v1, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 185
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v2

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_1

    .line 209
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported event type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v1

    .line 191
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v9, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v14, v9

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v9, v4

    move-wide v10, v12

    move-wide/from16 v16, v14

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-wide/from16 v18, v1

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 200
    invoke-virtual {v3, v0, v12, v13}, Lcom/android/server/tare/Ledger;->get24HourSum(IJ)J

    move-result-wide v4

    .line 201
    iget-wide v9, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    sub-long/2addr v9, v4

    iget-wide v1, v1, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    .line 202
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v4, 0x0

    .line 201
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 203
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const-wide/16 v18, 0x0

    move-object v9, v4

    move-wide v10, v12

    move/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 211
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;J)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 217
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/tare/Agent;->noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public final noteOngoingEventLocked(ILjava/lang/String;ILjava/lang/String;JZ)V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 230
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 233
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    invoke-virtual {v0, p3, p4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    .line 237
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v2

    .line 238
    invoke-static {p3}, Lcom/android/server/tare/EconomicPolicy;->getEventType(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_2

    .line 265
    sget-object p3, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unsupported event type: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v2, p3, p1, p2}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v6

    if-nez v1, :cond_3

    .line 245
    new-instance v7, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v1, v7

    move v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V

    invoke-virtual {v0, p3, p4, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_3
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    goto :goto_0

    .line 253
    :cond_4
    invoke-virtual {v2, p3}, Lcom/android/server/tare/CompleteEconomicPolicy;->getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;

    move-result-object v7

    if-eqz v7, :cond_6

    if-nez v1, :cond_5

    .line 256
    new-instance v1, Lcom/android/server/tare/Agent$OngoingEvent;

    move-object v2, v1

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/tare/Agent$OngoingEvent;-><init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V

    invoke-virtual {v0, p3, p4, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    :cond_5
    iget p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 p3, p3, 0x1

    iput p3, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    :cond_6
    :goto_0
    if-eqz p7, :cond_7

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final onAnythingChangedLocked(Z)V
    .locals 25

    move-object/from16 v7, p0

    .line 368
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 369
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 370
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v12

    .line 372
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v14, v0

    :goto_0
    if-ltz v14, :cond_3

    .line 373
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v15

    .line 375
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    sub-int/2addr v0, v13

    move v5, v0

    :goto_1
    if-ltz v5, :cond_2

    .line 377
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v14, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 379
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 380
    invoke-virtual {v0, v14, v5}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/SparseArrayMap;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move v1, v15

    move-object v2, v6

    move-object v13, v3

    move-wide v3, v8

    move/from16 v17, v5

    move-wide/from16 v18, v8

    move-object v8, v6

    move-wide v5, v10

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 384
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v13, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_0
    move/from16 v17, v5

    move-wide/from16 v18, v8

    move-object v8, v6

    .line 386
    :goto_2
    invoke-virtual {v7, v15, v8}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_3

    :cond_1
    move/from16 v17, v5

    move-wide/from16 v18, v8

    :goto_3
    add-int/lit8 v5, v17, -0x1

    move-wide/from16 v8, v18

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v8

    add-int/lit8 v14, v14, -0x1

    const/4 v13, 0x1

    goto :goto_0

    .line 390
    :cond_3
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    :goto_4
    if-ltz v9, :cond_9

    .line 391
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v13

    .line 393
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    sub-int/2addr v0, v8

    move v14, v0

    :goto_5
    if-ltz v14, :cond_8

    .line 395
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9, v14}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 397
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 398
    invoke-virtual {v0, v9, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_7

    .line 401
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 402
    invoke-virtual {v7, v13, v15}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v16

    .line 403
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v13, v15, v10, v11}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;J)Z

    move-result v18

    const/16 v19, 0x0

    move/from16 v3, v19

    :goto_6
    if-ge v3, v6, :cond_7

    .line 405
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 406
    invoke-virtual {v4, v12, v13, v15}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    if-nez v18, :cond_5

    .line 409
    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v20

    .line 410
    invoke-static {v4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v24, v3

    move-object/from16 p1, v4

    move-wide/from16 v3, v20

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-wide/from16 v5, v22

    .line 408
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_7

    :cond_4
    move/from16 v0, v19

    goto :goto_8

    :cond_5
    move/from16 v24, v3

    move-object/from16 p1, v4

    move-object/from16 v20, v5

    move/from16 v21, v6

    :goto_7
    move v0, v8

    .line 411
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_6

    move-object/from16 v1, p1

    .line 412
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 413
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v13, v15, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_6
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v5, v20

    move/from16 v6, v21

    goto :goto_6

    :cond_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_4

    :cond_9
    return-void
.end method

.method public onAppExemptedLocked(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 815
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 816
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    sub-long v14, v3, v5

    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-gtz v3, :cond_0

    return-void

    .line 821
    :cond_0
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 822
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 824
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v7, v4

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public onAppRestrictedLocked(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 695
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/tare/Agent;->reclaimAllAssetsLocked(ILjava/lang/String;I)V

    return-void
.end method

.method public onAppStatesChangedLocked(ILandroid/util/ArraySet;)V
    .locals 25

    move-object/from16 v7, p0

    move/from16 v8, p1

    .line 285
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v9

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 287
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v13

    const/4 v15, 0x0

    .line 289
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v15, v0, :cond_5

    move-object/from16 v5, p2

    .line 290
    invoke-virtual {v5, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 291
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v6, v11, v12}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;J)Z

    move-result v16

    .line 292
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 293
    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/SparseArrayMap;

    if-eqz v3, :cond_4

    .line 295
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move/from16 v1, p1

    move-object v2, v6

    move-object v14, v3

    move-wide v3, v9

    move-wide/from16 v17, v9

    move-object v9, v6

    move-wide v5, v11

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 296
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v14, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 297
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 298
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/util/ArraySet;

    if-eqz v10, :cond_3

    .line 300
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 301
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 302
    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v19

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v14, :cond_3

    .line 304
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 305
    invoke-virtual {v6, v13, v8, v9}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    if-nez v16, :cond_1

    .line 308
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    .line 309
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move/from16 v23, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v21

    .line 307
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    move/from16 v23, v5

    move-object/from16 v24, v6

    :goto_2
    const/4 v0, 0x1

    .line 310
    :goto_3
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_2

    move-object/from16 v1, v24

    .line 311
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 312
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_2
    add-int/lit8 v5, v23, 0x1

    goto :goto_1

    .line 316
    :cond_3
    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    goto :goto_4

    :cond_4
    move-wide/from16 v17, v9

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v9, v17

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public onAppUnexemptedLocked(ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 652
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 653
    iget-object v5, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    return-void

    .line 659
    :cond_0
    iget-object v7, v0, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 660
    invoke-interface {v7, v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v9, v7, v9

    if-gez v9, :cond_1

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    :cond_1
    const-wide/32 v9, 0xa4cb800

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_2
    const-wide/32 v9, 0xf731400

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto :goto_0

    :cond_3
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    :goto_0
    sub-long/2addr v3, v5

    long-to-double v3, v3

    mul-double/2addr v3, v7

    double-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_5

    .line 677
    sget-boolean v5, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 678
    sget-object v5, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reclaiming bonus wealth! Taking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 678
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_4
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 683
    iget-object v5, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v5

    .line 684
    new-instance v6, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v12, 0x4

    const/4 v13, 0x0

    neg-long v14, v3

    const-wide/16 v16, 0x0

    move-object v7, v6

    move-wide v8, v10

    invoke-direct/range {v7 .. v17}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    :cond_5
    return-void
.end method

.method public onAppUnrestrictedLocked(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 703
    iget-object v3, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v3

    .line 704
    invoke-virtual {v3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 705
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had credits while it was restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 710
    :cond_0
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 712
    new-instance v15, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v9, 0x6

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 714
    invoke-virtual {v4, v1, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    move-object v4, v15

    move-wide v5, v7

    invoke-direct/range {v4 .. v14}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 712
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public onCreditSupplyChanged()V
    .locals 1

    .line 730
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDeviceStateChangedLocked()V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/android/server/tare/Agent;->onPricingChangedLocked()V

    return-void
.end method

.method public onPackageRemovedLocked(ILjava/lang/String;)V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/Scribe;->discardLedgerLocked(ILjava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public onPricingChangedLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/server/tare/Agent;->onAnythingChangedLocked(Z)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 838
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    return-void
.end method

.method public onVipStatusChangedLocked(ILjava/lang/String;)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 323
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 325
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v10

    .line 327
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v5, v6}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;J)Z

    move-result v11

    .line 328
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 329
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/SparseArrayMap;

    if-eqz v12, :cond_0

    .line 331
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->-$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V

    .line 332
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mOngoingEventUpdater:Lcom/android/server/tare/Agent$OngoingEventUpdater;

    invoke-virtual {v12, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 334
    :cond_0
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 335
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_4

    .line 337
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    .line 338
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 339
    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v14

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    if-ge v5, v13, :cond_4

    .line 341
    invoke-virtual {v12, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    .line 342
    invoke-virtual {v6, v10, v8, v9}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    if-nez v11, :cond_2

    .line 345
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide v1, v14

    move/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v5, v17

    .line 344
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v0, v16

    goto :goto_2

    :cond_2
    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_1
    const/4 v0, 0x1

    .line 346
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_3

    move-object/from16 v1, v20

    .line 347
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 348
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_3
    add-int/lit8 v5, v19, 0x1

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    return-void
.end method

.method public onVipStatusChangedLocked(Landroid/util/SparseSetArray;)V
    .locals 4

    .line 357
    invoke-virtual {p1}, Landroid/util/SparseSetArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 358
    invoke-virtual {p1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    .line 360
    invoke-virtual {p1, v0}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_0

    .line 361
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/tare/Agent;->onVipStatusChangedLocked(ILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reclaimAllAssetsLocked(ILjava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 564
    iget-object v1, v0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v4

    .line 565
    invoke-virtual {v4}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_0

    return-void

    .line 569
    :cond_0
    sget-boolean v1, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 570
    sget-object v1, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reclaiming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " because of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 570
    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 576
    new-instance v7, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v14, 0x0

    neg-long v5, v5

    const-wide/16 v17, 0x0

    move-object v8, v7

    move-wide v9, v11

    move/from16 v13, p3

    move-wide v15, v5

    invoke-direct/range {v8 .. v18}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    return-void
.end method

.method public reclaimUnusedAssetsLocked(DJZ)V
    .locals 25

    move-object/from16 v6, p0

    .line 600
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v7

    .line 601
    iget-object v0, v6, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0}, Lcom/android/server/tare/Scribe;->getLedgersLocked()Landroid/util/SparseArrayMap;

    move-result-object v8

    .line 602
    invoke-static {}, Lcom/android/server/tare/TareUtils;->getCurrentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x0

    move/from16 v5, v22

    .line 603
    :goto_0
    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 604
    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    move/from16 v3, v22

    .line 605
    :goto_1
    invoke-virtual {v8, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 606
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/server/tare/Ledger;

    .line 607
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v0

    const-wide/16 v9, 0x0

    cmp-long v2, v0, v9

    if-gtz v2, :cond_0

    goto/16 :goto_3

    .line 611
    :cond_0
    invoke-virtual {v8, v5, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 614
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 615
    invoke-interface {v11, v2, v4}, Lcom/android/server/usage/AppStandbyInternal;->getTimeSinceLastUsedByUser(Ljava/lang/String;I)J

    move-result-wide v11

    cmp-long v11, v11, p3

    if-ltz v11, :cond_4

    if-nez p5, :cond_1

    .line 620
    invoke-virtual {v7, v4, v2}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMinSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v11

    goto :goto_2

    .line 622
    :cond_1
    iget-object v11, v6, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v11, v4, v2}, Lcom/android/server/tare/InternalResourceService;->getMinBalanceLocked(ILjava/lang/String;)J

    move-result-wide v11

    :goto_2
    long-to-double v13, v0

    mul-double v13, v13, p1

    double-to-long v13, v13

    sub-long v15, v0, v13

    cmp-long v15, v15, v11

    if-gez v15, :cond_2

    sub-long v13, v0, v11

    :cond_2
    cmp-long v0, v13, v9

    if-lez v0, :cond_4

    .line 629
    sget-boolean v0, Lcom/android/server/tare/Agent;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 630
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reclaiming unused wealth! Taking "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {v13, v14}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-static {v4, v2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_3
    new-instance v24, Lcom/android/server/tare/Ledger$Transaction;

    const/4 v0, 0x2

    const/4 v15, 0x0

    neg-long v12, v13

    const-wide/16 v18, 0x0

    move-object/from16 v9, v24

    move-wide/from16 v10, v20

    move-wide/from16 v16, v12

    move-wide/from16 v12, v20

    move v14, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v10, v3

    move-object/from16 v3, v23

    move v11, v4

    move-object/from16 v4, v24

    move v12, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v3

    move v11, v4

    move v12, v5

    :goto_4
    add-int/lit8 v3, v10, 0x1

    move v4, v11

    move v5, v12

    goto/16 :goto_1

    :cond_5
    move v12, v5

    add-int/lit8 v5, v12, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V
    .locals 35

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    .line 501
    sget-boolean v1, Lcom/android/server/tare/Agent;->DEBUG:Z

    const-wide/16 v10, 0x0

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to adjust system balance for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_1
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 515
    new-instance v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v14, v0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iget-wide v2, v0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget v4, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-object v5, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-wide/16 v20, 0x0

    iget-wide v10, v0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    move-object v13, v1

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-wide/from16 v22, v10

    invoke-direct/range {v13 .. v23}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object v0, v1

    .line 519
    :cond_2
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 520
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v2

    .line 521
    invoke-virtual {v1, v8, v9}, Lcom/android/server/tare/CompleteEconomicPolicy;->getMaxSatiatedBalance(ILjava/lang/String;)J

    move-result-wide v4

    .line 522
    iget-wide v10, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-wide/16 v13, 0x0

    cmp-long v1, v10, v13

    if-lez v1, :cond_4

    add-long/2addr v10, v2

    cmp-long v1, v10, v4

    if-lez v1, :cond_4

    sub-long/2addr v4, v2

    .line 526
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    .line 527
    sget-object v1, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would result in becoming too rich. Decreasing transaction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    .line 528
    invoke-static {v3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v3, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    sub-long v3, v3, v31

    .line 531
    invoke-static {v3, v4}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v1, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v2, v0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iget-wide v4, v0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iget v6, v0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iget-object v10, v0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    iget-wide v13, v0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    move/from16 v29, v6

    move-object/from16 v30, v10

    move-wide/from16 v33, v13

    invoke-direct/range {v24 .. v34}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object/from16 v0, p3

    move-object v10, v1

    goto :goto_1

    :cond_4
    move-object v10, v0

    move-object/from16 v0, p3

    .line 536
    :goto_1
    invoke-virtual {v0, v10}, Lcom/android/server/tare/Ledger;->recordTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 537
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    iget-wide v2, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/tare/Scribe;->adjustRemainingConsumableCakesLocked(J)V

    .line 538
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v10}, Lcom/android/server/tare/Analyst;->noteTransaction(Lcom/android/server/tare/Ledger$Transaction;)V

    .line 539
    iget-wide v1, v10, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x0

    if-eqz v1, :cond_8

    if-eqz p5, :cond_8

    .line 540
    iget-object v1, v7, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 541
    invoke-virtual {v1, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/util/ArraySet;

    if-eqz v13, :cond_8

    .line 543
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v14

    move v5, v11

    .line 544
    :goto_2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 545
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    if-nez v12, :cond_6

    .line 548
    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v3

    invoke-static {v6}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide v1, v14

    move/from16 v18, v5

    move-object/from16 p3, v6

    move-wide/from16 v5, v16

    .line 547
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move/from16 v18, v5

    move-object/from16 p3, v6

    :goto_3
    const/4 v0, 0x1

    .line 549
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->isCurrentlyAffordable()Z

    move-result v1

    if-eq v1, v0, :cond_7

    move-object/from16 v1, p3

    .line 550
    invoke-static {v1, v0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 551
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    :cond_7
    add-int/lit8 v5, v18, 0x1

    goto :goto_2

    .line 556
    :cond_8
    iget-wide v0, v10, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 557
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->maybePerformQuantitativeEasingLocked()V

    :cond_9
    return-void
.end method

.method public registerAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 10

    .line 1105
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1106
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1109
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1112
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1114
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1115
    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3}, Lcom/android/server/tare/InternalResourceService;->getEnabledMode()I

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_1

    .line 1119
    invoke-static {v2, p4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    return-void

    .line 1122
    :cond_1
    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result p3

    .line 1123
    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V

    if-nez p3, :cond_3

    .line 1125
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v4

    .line 1126
    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v6

    invoke-static {v2}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$mgetStockLimitHonoringCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J

    move-result-wide v8

    move-object v3, p0

    .line 1125
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/tare/Agent;->isAffordableLocked(JJJ)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 1124
    :cond_3
    :goto_0
    invoke-static {v2, p4}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->-$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V

    .line 1127
    iget-object p3, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p3, p1, p2, v2}, Lcom/android/server/tare/InternalResourceService;->postAffordabilityChanged(ILjava/lang/String;Lcom/android/server/tare/Agent$ActionAffordabilityNote;)V

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final scheduleBalanceCheckLocked(ILjava/lang/String;)V
    .locals 8

    .line 962
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 963
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArrayMap;

    if-eqz v0, :cond_4

    .line 964
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isVip(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 969
    :cond_0
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->getBalanceLocked(ILjava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    .line 970
    invoke-virtual {v1}, Lcom/android/server/tare/Scribe;->getRemainingConsumableCakesLocked()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 971
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/util/ArraySet;

    .line 969
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tare/Agent$TrendCalculator;->reset(JJLandroid/util/ArraySet;)V

    .line 972
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 973
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v0}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossLowerThresholdMs()J

    move-result-wide v0

    .line 974
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mTrendCalculator:Lcom/android/server/tare/Agent$TrendCalculator;

    invoke-virtual {v2}, Lcom/android/server/tare/Agent$TrendCalculator;->getTimeToCrossUpperThresholdMs()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 979
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void

    :cond_1
    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 985
    :cond_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 987
    :cond_3
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    .line 988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 987
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void

    .line 966
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final shouldGiveCredits(Lcom/android/server/tare/InstalledPackageInfo;)Z
    .locals 4

    .line 720
    iget-boolean v0, p1, Lcom/android/server/tare/InstalledPackageInfo;->hasCode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 723
    :cond_0
    iget v0, p1, Lcom/android/server/tare/InstalledPackageInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 725
    iget-object v2, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object v3, p1, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iget-object p1, p1, Lcom/android/server/tare/InstalledPackageInfo;->packageName:Ljava/lang/String;

    .line 726
    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/InternalResourceService;->isPackageRestricted(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJ)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 424
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/tare/Agent;->stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V

    return-void
.end method

.method public final stopOngoingActionLocked(ILjava/lang/String;ILjava/lang/String;JJZZ)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v13, p4

    .line 437
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mScribe:Lcom/android/server/tare/Scribe;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/tare/Scribe;->getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;

    move-result-object v21

    .line 444
    iget-object v0, v7, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    .line 445
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/util/SparseArrayMap;

    if-nez v14, :cond_1

    .line 449
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ongoing transactions for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 452
    :cond_1
    invoke-virtual {v14, v15, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tare/Agent$OngoingEvent;

    if-nez v1, :cond_3

    .line 456
    sget-object v0, Lcom/android/server/tare/Agent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nonexistent ongoing transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static/range {p3 .. p3}, Lcom/android/server/tare/EconomicPolicy;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static/range {p1 .. p2}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_3
    iget v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    if-gtz v0, :cond_4

    .line 463
    iget-wide v2, v1, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    sub-long v2, p5, v2

    sub-long v11, p7, v2

    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    .line 466
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/tare/Agent;->getActualDeltaLocked(Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v0

    .line 467
    new-instance v4, Lcom/android/server/tare/Ledger$Transaction;

    iget-wide v1, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget-wide v5, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    move-object v10, v4

    move-object v3, v13

    move-object v0, v14

    move-wide/from16 v13, p7

    move v7, v15

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    invoke-direct/range {v10 .. v20}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    move-object v6, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v3

    move-object/from16 v3, v21

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tare/Agent;->recordTransactionLocked(ILjava/lang/String;Lcom/android/server/tare/Ledger;Lcom/android/server/tare/Ledger$Transaction;Z)V

    .line 472
    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p9, :cond_5

    .line 475
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public tearDownLocked()V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mCurrentOngoingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 994
    iget-object p0, p0, Lcom/android/server/tare/Agent;->mBalanceThresholdAlarmQueue:Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    return-void
.end method

.method public unregisterAffordabilityChangeListenerLocked(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/tare/Agent;->mActionAffordabilityNotes:Landroid/util/SparseArrayMap;

    .line 1138
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/android/server/tare/Agent;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getCompleteEconomicPolicyLocked()Lcom/android/server/tare/CompleteEconomicPolicy;

    move-result-object v1

    .line 1141
    new-instance v2, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    invoke-direct {v2, p4, p3, v1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;-><init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V

    .line 1143
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent;->scheduleBalanceCheckLocked(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
