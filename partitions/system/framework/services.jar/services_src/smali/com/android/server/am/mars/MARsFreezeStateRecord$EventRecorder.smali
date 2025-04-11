.class public Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;
.super Ljava/lang/Object;
.source "MARsFreezeStateRecord.java"


# instance fields
.field public final mEventArraySelfLocked:Ljava/util/ArrayDeque;

.field public uidFrozenTime:J

.field public uidRunningTime:J

.field public final unfreezeCounts:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$maddEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->addEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompute(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;JJZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->compute(JJZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUidFrozenTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->getUidFrozenTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetUidRunningTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->getUidRunningTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetUnfreezeCounts(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->getUnfreezeCounts()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidRunningTime:J

    .line 333
    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidFrozenTime:J

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    .line 335
    invoke-static {}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->unfreezeCounts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->removeOutdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$maddEvent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "MARsFreezeStateRecord"

    const-string p2, "error at addEvent. App frozen event without uid running event"

    .line 367
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final calculateOverlapPeriod(JJJJ)J
    .locals 0

    cmp-long p0, p7, p1

    if-ltz p0, :cond_3

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, p5, p1

    if-gez p0, :cond_1

    cmp-long p0, p3, p7

    if-gez p0, :cond_1

    sub-long/2addr p3, p1

    return-wide p3

    :cond_1
    cmp-long p0, p1, p5

    if-gtz p0, :cond_2

    cmp-long p0, p7, p3

    if-gtz p0, :cond_2

    sub-long/2addr p7, p5

    return-wide p7

    .line 529
    :cond_2
    invoke-static {p3, p4, p7, p8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    sub-long/2addr p3, p0

    return-wide p3

    :cond_3
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final compute(JJZ)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->unfreezeCounts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->computeUidRunningTimeFor(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidRunningTime:J

    .line 397
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->computeFrozenTimeAndUnfreezeReasonsFor(JJZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidFrozenTime:J

    return-void
.end method

.method public final computeFrozenTimeAndUnfreezeReasonsFor(JJZ)J
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    .line 465
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->isArgumentsValid(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 468
    :cond_0
    iget-object v12, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v12

    .line 469
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->removeOutdated()V

    .line 473
    iget-object v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const-wide/16 v14, 0x0

    move-wide v1, v14

    move-wide/from16 v16, v1

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    .line 474
    invoke-static {v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    goto :goto_0

    .line 478
    :cond_2
    invoke-static {v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetfreezeEvents(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;

    .line 479
    invoke-static {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgetevent(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;->FREEZE:Lcom/android/server/am/mars/MARsFreezeStateRecord$Event;

    if-ne v3, v4, :cond_3

    .line 480
    invoke-static {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J

    move-result-wide v1

    goto :goto_1

    .line 483
    :cond_3
    invoke-static {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J

    move-result-wide v19

    cmp-long v3, v1, v14

    if-nez v3, :cond_4

    .line 485
    invoke-static {v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgettime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)J

    move-result-wide v1

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_4
    move-wide/from16 v21, v1

    move-object/from16 v1, p0

    move-wide/from16 v2, v19

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 487
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->countUnfreezeReason(JJJLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)V

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, v21

    move-wide/from16 v8, v19

    .line 490
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->calculateOverlapPeriod(JJJJ)J

    move-result-wide v1

    add-long v16, v16, v1

    move-wide v1, v14

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_7

    cmp-long v3, v1, v14

    if-eqz v3, :cond_6

    .line 499
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v8, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->calculateOverlapPeriod(JJJJ)J

    move-result-wide v0

    goto :goto_2

    :cond_6
    sub-long v0, p3, v10

    :goto_2
    add-long v16, v16, v0

    .line 504
    :cond_7
    monitor-exit v12

    return-wide v16

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public computeUidRunningTimeFor(JJ)J
    .locals 14

    move-object v0, p0

    .line 534
    iget-object v10, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v10

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->removeOutdated()V

    .line 537
    iget-object v1, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide/16 v1, 0x0

    move-wide v12, v1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    .line 538
    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningStartTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v6

    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v8

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    .line 539
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->calculateOverlapPeriod(JJJJ)J

    move-result-wide v1

    add-long/2addr v12, v1

    goto :goto_0

    .line 541
    :cond_0
    monitor-exit v10

    return-wide v12

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final countUnfreezeReason(JJJLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)V
    .locals 0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    cmp-long p1, p1, p5

    if-gtz p1, :cond_0

    .line 511
    invoke-static {p7}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;->-$$Nest$fgetreason(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord$FreezeEventRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->reasonTypeOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;->-$$Nest$fgettypeNum(Lcom/android/server/am/mars/MARsFreezeStateRecord$UnfreezeReasonType;)I

    move-result p1

    .line 512
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->unfreezeCounts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getUidFrozenTime()J
    .locals 2

    .line 383
    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidFrozenTime:J

    return-wide v0
.end method

.method public final getUidRunningTime()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->uidRunningTime:J

    return-wide v0
.end method

.method public final getUnfreezeCounts()Ljava/util/ArrayList;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->unfreezeCounts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final isArgumentsValid(JJ)Z
    .locals 4

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    cmp-long p0, v0, p1

    const/4 v0, 0x0

    if-lez p0, :cond_0

    return v0

    :cond_0
    cmp-long p0, p1, p3

    if-lez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onUidStart(J)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->removeOutdated()V

    .line 342
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;-><init>(JLcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord-IA;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidStop(IJ)V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->removeOutdated()V

    .line 349
    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    .line 350
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 351
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {p0, p2, p3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fputrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;J)V

    goto :goto_1

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    const-string p3, "MARsFreezeStateRecord"

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "something wrong at onUidStop uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is empty? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uidEndTime : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo p0, "null"

    goto :goto_0

    .line 356
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public printAllEvents()V
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    const-string v2, "MARsFreezeStateRecord"

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "running start time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningStartTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MARsFreezeStateRecord"

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "running end time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$mprintAllEvents(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)V

    goto :goto_0

    .line 379
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeOutdated()V
    .locals 6

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/32 v2, 0x5265c00

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$fgetrunningEndTime(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    iget-object p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder;->mEventArraySelfLocked:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;

    invoke-static {p0, v0, v1}, Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;->-$$Nest$mremoveOutdated(Lcom/android/server/am/mars/MARsFreezeStateRecord$EventRecorder$UidEventRecord;J)V

    :cond_1
    return-void
.end method
