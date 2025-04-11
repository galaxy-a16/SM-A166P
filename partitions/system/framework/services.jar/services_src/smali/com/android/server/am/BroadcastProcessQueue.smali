.class public Lcom/android/server/am/BroadcastProcessQueue;
.super Ljava/lang/Object;
.source "BroadcastProcessQueue.java"


# instance fields
.field public app:Lcom/android/server/am/ProcessRecord;

.field public final constants:Lcom/android/server/am/BroadcastConstants;

.field public lastCpuDelayTime:J

.field public lastProcessState:I

.field public mActive:Lcom/android/server/am/BroadcastRecord;

.field public mActiveAssumedDeliveryCountSinceIdle:I

.field public mActiveCountConsecutiveNormal:I

.field public mActiveCountConsecutiveUrgent:I

.field public mActiveCountSinceIdle:I

.field public mActiveIndex:I

.field public mActiveViaColdStart:Z

.field public mActiveWasStopped:Z

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCountAlarm:I

.field public mCountDeferred:I

.field public mCountEnqueued:I

.field public mCountForeground:I

.field public mCountForegroundDeferred:I

.field public mCountInstrumented:I

.field public mCountInteractive:I

.field public mCountManifest:I

.field public mCountOrdered:I

.field public mCountPrioritizeEarliestRequests:I

.field public mCountPrioritized:I

.field public mCountPrioritizedDeferred:I

.field public mCountResultTo:I

.field public mForcedDelayedDurationMs:J

.field public mLastDeferredStates:Z

.field public final mPending:Ljava/util/ArrayDeque;

.field public final mPendingOffload:Ljava/util/ArrayDeque;

.field public final mPendingUrgent:Ljava/util/ArrayDeque;

.field public mProcessFreezable:Z

.field public mProcessInstrumented:Z

.field public mProcessPersistent:Z

.field public mRunnableAt:J

.field public mRunnableAtInvalidated:Z

.field public mRunnableAtReason:I

.field public mUidForeground:Z

.field public final processName:Ljava/lang/String;

.field public processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

.field public runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

.field public runningOomAdjusted:Z

.field public runningTraceTrackName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$8ugC8sJhHj5Gba5k3DYDnXJTMco(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$clearDeferredStates$2(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qc0BKPpsLMc-T1N3w-2UVzbVhx8(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$updateDeferredStates$1(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_KGFkhr9mzT0boF2pC-SgL71e7U(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->lambda$updateDeferredStates$0(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 137
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 144
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    const-wide v0, 0x7fffffffffffffffL

    .line 211
    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 236
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    .line 237
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    .line 238
    iput p3, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    return-void
.end method

.method public static insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 6

    if-nez p0, :cond_0

    return-object p1

    .line 1348
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_4

    .line 1352
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-lez v3, :cond_3

    .line 1353
    iput-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1354
    iget-object v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1356
    iput-object p1, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1358
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    .line 1359
    iput-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_1
    if-ne v2, p0, :cond_2

    move-object p0, p1

    :cond_2
    return-object p0

    .line 1364
    :cond_3
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    .line 1366
    :cond_4
    iput-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1367
    iput-object p1, v3, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method

.method public static isQueueEmpty(Ljava/util/ArrayDeque;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 841
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic lambda$clearDeferredStates$2(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$updateDeferredStates$0(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1270
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$updateDeferredStates$1(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1122
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "PERCEPTIBLE_APP"

    return-object p0

    :pswitch_2
    const-string p0, "TOP_PROCESS"

    return-object p0

    :pswitch_3
    const-string p0, "CORE_UID"

    return-object p0

    :pswitch_4
    const-string p0, "FOREGROUND"

    return-object p0

    :pswitch_5
    const-string p0, "CONTAINS_MANIFEST"

    return-object p0

    :pswitch_6
    const-string p0, "CONTAINS_INSTRUMENTED"

    return-object p0

    :pswitch_7
    const-string p0, "CONTAINS_RESULT_TO"

    return-object p0

    :pswitch_8
    const-string p0, "CONTAINS_INTERACTIVE"

    return-object p0

    :pswitch_9
    const-string p0, "CONTAINS_PRIORITIZED"

    return-object p0

    :pswitch_a
    const-string p0, "CONTAINS_ALARM"

    return-object p0

    :pswitch_b
    const-string p0, "CONTAINS_ORDERED"

    return-object p0

    :pswitch_c
    const-string p0, "CONTAINS_FOREGROUND"

    return-object p0

    :pswitch_d
    const-string p0, "INFINITE_DEFER"

    return-object p0

    :pswitch_e
    const-string p0, "FORCE_DELAYED"

    return-object p0

    :pswitch_f
    const-string p0, "PERSISTENT"

    return-object p0

    :pswitch_10
    const-string p0, "INSTRUMENTED"

    return-object p0

    :pswitch_11
    const-string p0, "BLOCKED"

    return-object p0

    :pswitch_12
    const-string p0, "MAX_PENDING"

    return-object p0

    :pswitch_13
    const-string p0, "NORMAL"

    return-object p0

    :pswitch_14
    const-string p0, "CACHED"

    return-object p0

    :pswitch_15
    const-string p0, "EMPTY"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 1382
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1384
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_1

    .line 1385
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1387
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_2

    .line 1388
    iput-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    :cond_2
    const/4 v0, 0x0

    .line 1390
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1391
    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    return-object p0
.end method


# virtual methods
.method public addPrioritizeEarliestRequest()Z
    .locals 2

    .line 856
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    add-int/2addr v0, v1

    .line 857
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 858
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_0
    add-int/2addr v0, v1

    .line 861
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 p0, 0x0

    return p0
.end method

.method public assertHealthLocked()V
    .locals 2

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "mRunnableAtInvalidated"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1310
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    .line 1311
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked(Ljava/util/ArrayDeque;)V

    return-void
.end method

.method public final assertHealthLocked(Ljava/util/ArrayDeque;)V
    .locals 5

    .line 1315
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 1317
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1318
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1319
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1320
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1321
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1323
    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1324
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isDeferUntilActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1325
    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1329
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string/jumbo v0, "waitingTime"

    .line 1330
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 2

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1282
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    .line 1283
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_0
    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .locals 2

    .line 1413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describeStateLocked(J)Ljava/lang/String;
    .locals 3

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "runnable at "

    .line 1419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "not runnable"

    .line 1422
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, " because "

    .line 1424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "e:"

    .line 1489
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " d:"

    .line 1490
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " f:"

    .line 1491
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " fd:"

    .line 1492
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " o:"

    .line 1493
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " a:"

    .line 1494
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " p:"

    .line 1495
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " pd:"

    .line 1496
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " int:"

    .line 1497
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " rt:"

    .line 1498
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " ins:"

    .line 1499
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " m:"

    .line 1500
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " csi:"

    .line 1502
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " adcsi:"

    .line 1503
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " ccu:"

    .line 1504
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v0, " ccn:"

    .line 1505
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1506
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(JLandroid/util/IndentingPrintWriter;)V
    .locals 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1431
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1433
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    .line 1434
    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1438
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1439
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpProcessState(Landroid/util/IndentingPrintWriter;)V

    .line 1440
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->dumpBroadcastCounts(Landroid/util/IndentingPrintWriter;)V

    .line 1442
    iget-object v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz v6, :cond_1

    const-string v2, "ACTIVE"

    .line 1443
    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1446
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    const-string v4, "URGENT"

    .line 1447
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v3, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_0

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1450
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    const/4 v4, 0x0

    .line 1451
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v3, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_1

    .line 1453
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1454
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    const-string v4, "OFFLOAD"

    .line 1455
    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object v3, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BroadcastProcessQueue;->dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_2

    .line 1457
    :cond_4
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1458
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final dumpProcessState(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1464
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v1, :cond_0

    const-string v1, "FG"

    .line 1465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 1468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "FRZ"

    .line 1469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v1, :cond_4

    .line 1472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "INSTR"

    .line 1473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v1, :cond_6

    .line 1476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "PER"

    .line 1477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string/jumbo v1, "state:"

    .line 1480
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1482
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "runningOomAdjusted:"

    .line 1483
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_8
    return-void
.end method

.method public final dumpRecord(Ljava/lang/String;JLandroid/util/IndentingPrintWriter;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1512
    iget-wide v0, p5, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 p0, 0x20

    .line 1513
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1514
    invoke-virtual {p5}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    .line 1515
    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1516
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v0, v0, p6

    .line 1517
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, " at "

    .line 1519
    invoke-virtual {p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p5, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v0, v0, p6

    invoke-static {v0, v1, p2, p3, p4}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1523
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1524
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1526
    :cond_1
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 1527
    instance-of p1, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_2

    .line 1528
    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    const-string p1, " for registered "

    .line 1529
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1530
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 1532
    :cond_2
    check-cast p0, Landroid/content/pm/ResolveInfo;

    const-string p1, " for manifest "

    .line 1533
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1534
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    :goto_0
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1537
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget p0, p0, p6

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3

    const-string p1, "    blocked until "

    .line 1539
    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, ", currently at "

    .line 1541
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1542
    iget p0, p5, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, " of "

    .line 1543
    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    iget-object p0, p5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_3
    return-void
.end method

.method public enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;
    .locals 2

    .line 273
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isReplacePending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 284
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 285
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 296
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 297
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    if-nez p0, :cond_1

    .line 298
    invoke-interface {p3, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 412
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final forEachMatchingBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .locals 5

    .line 422
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 423
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 425
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 426
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 427
    invoke-interface {p2, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;->test(Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 428
    invoke-interface {p3, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    if-eqz p4, :cond_1

    .line 430
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 431
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    goto :goto_1

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public forceDelayBroadcastDelivery(J)Z
    .locals 2

    .line 771
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 772
    iput-wide p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 773
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActive()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 744
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    return-object p0
.end method

.method public getActiveAssumedDeliveryCountSinceIdle()I
    .locals 0

    .line 574
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    return p0
.end method

.method public getActiveCountSinceIdle()I
    .locals 0

    .line 566
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    return p0
.end method

.method public getActiveIndex()I
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    return p0
.end method

.method public getActiveViaColdStart()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return p0
.end method

.method public getActiveWasStopped()Z
    .locals 0

    .line 590
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getPreferredSchedulingGroupLocked()I
    .locals 3

    .line 547
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    .line 549
    :cond_0
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/4 v2, 0x2

    if-le v0, v1, :cond_1

    return v2

    .line 553
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;
    .locals 1

    .line 242
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    return-object p0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isOffload()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    return-object p0

    .line 247
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public getRunnableAt()J
    .locals 2

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1028
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    return-wide v0
.end method

.method public getRunnableAtReason()I
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1037
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return p0
.end method

.method public invalidateRunnableAt()V
    .locals 1

    const/4 v0, 0x1

    .line 1041
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    return-void
.end method

.method public isActive()Z
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBeyondBarrierLocked(J)Z
    .locals 8

    .line 950
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 951
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 952
    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 955
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-wide v6, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v0, :cond_3

    .line 957
    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v0, v6, p1

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v5

    :goto_3
    if-eqz v1, :cond_5

    .line 959
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v1, v6, p1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v5

    :goto_5
    if-eqz v2, :cond_7

    .line 961
    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v6, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p1, v6, p1

    if-lez p1, :cond_6

    goto :goto_6

    :cond_6
    move p1, v4

    goto :goto_7

    :cond_7
    :goto_6
    move p1, v5

    :goto_7
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-nez p1, :cond_9

    .line 965
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    move v4, v5

    :cond_a
    return v4
.end method

.method public isDeferredUntilActive()Z
    .locals 1

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1010
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDispatched(Landroid/content/Intent;)Z
    .locals 6

    .line 973
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 974
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 975
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v3

    .line 976
    iget-object v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result v4

    .line 977
    iget-object v5, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    move-result p1

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez p1, :cond_3

    .line 980
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public final isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z
    .locals 1

    .line 989
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 990
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 991
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    if-nez p1, :cond_1

    return v0

    .line 995
    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastRecord;

    .line 996
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdle()Z
    .locals 1

    .line 942
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingManifest()Z
    .locals 0

    .line 910
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingOrdered()Z
    .locals 0

    .line 918
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingResultTo()Z
    .locals 0

    .line 926
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingUrgent()Z
    .locals 0

    .line 933
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessWarm()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunnable()Z
    .locals 4

    .line 1004
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1005
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeActiveIdle()V
    .locals 1

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x0

    .line 623
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 624
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 625
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 626
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public makeActiveNextPending()V
    .locals 4

    .line 606
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removeNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 607
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 608
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    .line 609
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountSinceIdle:I

    .line 610
    iget v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    .line 611
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveAssumedDeliveryCountSinceIdle:I

    const/4 v1, 0x0

    .line 612
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    .line 613
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    .line 614
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 615
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2

    .line 677
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    .line 678
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 679
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 680
    :cond_0
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 682
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 683
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 684
    :cond_2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 686
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 688
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_5

    .line 689
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 691
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_6

    .line 692
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 694
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_9

    .line 695
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    .line 696
    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 698
    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 700
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_a

    .line 701
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 703
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_b

    .line 704
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 706
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_c

    .line 707
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 709
    :cond_c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_d

    .line 710
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 712
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public final onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2

    .line 634
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v0

    .line 636
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    .line 637
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 638
    :cond_0
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    .line 640
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 641
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 642
    :cond_2
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    .line 644
    :cond_3
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    .line 646
    :cond_4
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_5

    .line 647
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    .line 649
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_6

    .line 650
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    .line 652
    :cond_6
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_9

    .line 653
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    .line 654
    :cond_7
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    .line 656
    :cond_8
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    .line 658
    :cond_9
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_a

    .line 659
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    .line 661
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_b

    .line 662
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    .line 664
    :cond_b
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    if-eqz v0, :cond_c

    .line 665
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    .line 667
    :cond_c
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_d

    .line 668
    iget p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    .line 670
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return-void
.end method

.method public peekNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 1

    .line 895
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 896
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public peekNextBroadcastRecord()Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 901
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object p0

    .line 902
    invoke-static {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public queueForNextBroadcast()Ljava/util/ArrayDeque;
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_NORMAL_DISPATCHES:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    iget v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    iget-object v3, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v3, v3, Lcom/android/server/am/BroadcastConstants;->MAX_CONSECUTIVE_URGENT_DISPATCHES:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;

    move-result-object p0

    return-object p0
.end method

.method public final queueForNextBroadcast(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;II)Ljava/util/ArrayDeque;
    .locals 7

    .line 814
    invoke-static {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 818
    :cond_0
    invoke-static {p2}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 828
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 829
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 830
    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 831
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 832
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz p0, :cond_3

    if-lt p3, p4, :cond_2

    goto :goto_0

    :cond_2
    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v4

    :goto_1
    if-eqz p0, :cond_4

    .line 834
    iget-wide p3, v1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v5, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, p3, v5

    if-gtz p0, :cond_4

    .line 836
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result p0

    if-nez p0, :cond_4

    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    move-object p1, p2

    :cond_5
    return-object p1
.end method

.method public reEnqueueActiveBroadcast()V
    .locals 4

    .line 312
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v1

    .line 315
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 316
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 317
    iput v1, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final removeNextBroadcast()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .line 785
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->queueForNextBroadcast()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_0

    .line 787
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    goto :goto_0

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 789
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 790
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    goto :goto_0

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    if-ne v0, v1, :cond_2

    .line 792
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveUrgent:I

    .line 793
    iput v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveCountConsecutiveNormal:I

    .line 795
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isQueueEmpty(Ljava/util/ArrayDeque;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public removePrioritizeEarliestRequest()Z
    .locals 2

    .line 879
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    if-nez v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    return v1

    :cond_0
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 884
    iput v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    :cond_1
    return v1
.end method

.method public final replaceBroadcast(Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 1

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->getQueueForBroadcast(Lcom/android/server/am/BroadcastRecord;)Ljava/util/ArrayDeque;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;->replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;

    move-result-object p0

    return-object p0
.end method

.method public final replaceBroadcastInQueue(Ljava/util/ArrayDeque;Lcom/android/server/am/BroadcastRecord;I)Lcom/android/server/am/BroadcastRecord;
    .locals 7

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 350
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 353
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 354
    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 355
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 356
    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v5, v6, :cond_0

    iget v5, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v6, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_0

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 358
    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    invoke-static {v0, v4}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->allReceiversPending()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 361
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->isMatchingRecord(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 364
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 365
    invoke-virtual {p2, v2}, Lcom/android/server/am/BroadcastRecord;->copyEnqueueTimeFrom(Lcom/android/server/am/BroadcastRecord;)V

    .line 366
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastDequeued(Lcom/android/server/am/BroadcastRecord;I)V

    .line 367
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastProcessQueue;->onBroadcastEnqueued(Lcom/android/server/am/BroadcastRecord;I)V

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setActiveViaColdStart(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveViaColdStart:Z

    return-void
.end method

.method public setActiveWasStopped(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActiveWasStopped:Z

    return-void
.end method

.method public setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 1

    .line 456
    iput-object p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 460
    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p2

    or-int/2addr p2, v0

    .line 465
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 466
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p3

    or-int/2addr p2, p3

    .line 467
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p2

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setUidForeground(Z)Z

    move-result p1

    or-int/2addr p1, v0

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessFreezable(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessInstrumented(Z)Z

    move-result p2

    or-int/2addr p1, p2

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessPersistent(Z)Z

    move-result p0

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final setProcessFreezable(Z)Z
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    if-eq v0, p1, :cond_0

    .line 500
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessInstrumented(Z)Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eq v0, p1, :cond_0

    .line 516
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    .line 517
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setProcessPersistent(Z)Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eq v0, p1, :cond_0

    .line 531
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setUidForeground(Z)Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eq v0, p1, :cond_0

    .line 485
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeDeferred()Z
    .locals 2

    .line 1291
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 1292
    :cond_0
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "?"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 1407
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    .line 1409
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastProcessQueue{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    .line 1400
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method

.method public traceActiveBegin()V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 732
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheduled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 731
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceActiveEnd()V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 737
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 736
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessEnd()V
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 727
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v1, 0x40

    .line 726
    invoke-static {v1, v2, v0, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public traceProcessRunningBegin()V
    .locals 4

    .line 721
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 721
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public traceProcessStartingBegin()V
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    const-wide/16 v2, 0x40

    .line 716
    invoke-static {v2, v3, v0, v1, p0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V
    .locals 2

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->shouldBeDeferred()Z

    move-result v0

    .line 1266
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    if-eq v1, v0, :cond_1

    .line 1267
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mLastDeferredStates:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1269
    new-instance p2, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    goto :goto_0

    .line 1273
    :cond_0
    new-instance p1, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateRunnableAt()V
    .locals 11

    .line 1130
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->peekNextBroadcast()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    if-eqz v1, :cond_18

    .line 1135
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 1136
    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1137
    iget-wide v4, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 1139
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->isBlocked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1140
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x4

    .line 1141
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    return-void

    .line 1145
    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    add-long/2addr v6, v4

    .line 1146
    iput-wide v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x7

    .line 1147
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1148
    :cond_2
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForeground:I

    iget v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountForegroundDeferred:I

    const/16 v8, 0xa

    if-le v6, v7, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1150
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1151
    :cond_3
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInteractive:I

    if-lez v6, :cond_4

    .line 1152
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xe

    .line 1153
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1154
    :cond_4
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountInstrumented:I

    if-lez v6, :cond_5

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x10

    .line 1156
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1157
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessInstrumented:Z

    if-eqz v6, :cond_6

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x5

    .line 1159
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1160
    :cond_6
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mUidForeground:Z

    if-eqz v6, :cond_7

    .line 1161
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x12

    .line 1162
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1163
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getSetProcState()I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 1166
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_FOREGROUND_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x14

    .line 1167
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1168
    :cond_8
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessPersistent:Z

    if-eqz v6, :cond_9

    .line 1169
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_PERSISTENT_PROC_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x6

    .line 1170
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1171
    :cond_9
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1172
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x13

    .line 1173
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1174
    :cond_a
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountOrdered:I

    if-lez v6, :cond_b

    .line 1175
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xb

    .line 1176
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1177
    :cond_b
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountAlarm:I

    if-lez v6, :cond_c

    .line 1178
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0xc

    .line 1179
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1180
    :cond_c
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritized:I

    iget v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizedDeferred:I

    const/16 v10, 0xd

    if-le v6, v9, :cond_d

    .line 1181
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1182
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1183
    :cond_d
    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountManifest:I

    if-lez v6, :cond_e

    .line 1184
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x11

    .line 1185
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto/16 :goto_1

    .line 1186
    :cond_e
    iget-boolean v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mProcessFreezable:Z

    const/16 v9, 0xf

    if-eqz v6, :cond_15

    .line 1187
    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    const/4 v7, 0x1

    if-nez v6, :cond_10

    .line 1188
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastRecord;->isMARsTargetReceiver(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_0

    .line 1213
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1214
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1190
    :cond_10
    :goto_0
    iget v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountDeferred:I

    iget v6, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountEnqueued:I

    if-ne v1, v6, :cond_11

    .line 1191
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x8

    .line 1192
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1197
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1198
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_URGENT_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1199
    iput v8, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1200
    :cond_12
    iget-boolean v1, v0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_13

    .line 1201
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1202
    iput v10, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1203
    :cond_13
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_14

    .line 1204
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1205
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1207
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_CACHED_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1208
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1216
    :cond_15
    iget v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mCountResultTo:I

    if-lez v0, :cond_16

    .line 1219
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1220
    iput v9, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1223
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_17

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getSetAdj()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_17

    .line 1225
    iput-wide v4, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/16 v0, 0x15

    .line 1226
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_1

    .line 1230
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v0, v0, Lcom/android/server/am/BroadcastConstants;->DELAY_NORMAL_MILLIS:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1231
    iput v7, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    .line 1236
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 1237
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastProcessQueue;->constants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->MAX_PENDING_BROADCASTS:I

    if-lt v0, v1, :cond_19

    .line 1238
    iget-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    const/4 v0, 0x3

    .line 1239
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    goto :goto_2

    .line 1251
    :cond_18
    iput-wide v2, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAt:J

    .line 1252
    iput v0, p0, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtReason:I

    :cond_19
    :goto_2
    return-void
.end method
