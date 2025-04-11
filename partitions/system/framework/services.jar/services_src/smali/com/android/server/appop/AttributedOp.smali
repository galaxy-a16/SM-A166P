.class public final Lcom/android/server/appop/AttributedOp;
.super Ljava/lang/Object;
.source "AttributedOp.java"


# instance fields
.field public mAccessEvents:Landroid/util/LongSparseArray;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public mInProgressEvents:Landroid/util/ArrayMap;

.field public mPausedInProgressEvents:Landroid/util/ArrayMap;

.field public mRejectEvents:Landroid/util/LongSparseArray;

.field public final parent:Lcom/android/server/appop/AppOpsService$Op;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 88
    iput-object p2, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    return-void
.end method


# virtual methods
.method public accessed(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 22

    move-object/from16 v10, p0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 105
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AttributedOp;->accessed(JJILjava/lang/String;Ljava/lang/String;II)V

    .line 108
    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v13, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v15, v10, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-virtual/range {v11 .. v21}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 112
    iget-object v0, v10, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v1, v10, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v5, p3

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public accessed(JJILjava/lang/String;Ljava/lang/String;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p5

    .line 131
    invoke-static/range {p8 .. p9}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v2

    .line 133
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    .line 134
    new-instance v4, Landroid/util/LongSparseArray;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 139
    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;->acquire(ILjava/lang/String;Ljava/lang/String;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v9, v1

    .line 143
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2

    .line 145
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v4, v1

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 9

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    .line 538
    :cond_1
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    .line 540
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    .line 541
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 542
    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v4, :cond_2

    .line 544
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_3

    .line 545
    :cond_2
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public add(Lcom/android/server/appop/AttributedOp;)V
    .locals 5

    .line 562
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 566
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " app-ops, running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppOps"

    .line 566
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 571
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 573
    invoke-virtual {v3}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 574
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    iget-object v1, p1, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 579
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    iget-object p1, p1, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/appop/AttributedOp;->add(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    return-void
.end method

.method public createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;
    .locals 15

    .line 614
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 619
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 626
    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 628
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    new-instance v14, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 629
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v9

    .line 630
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v11

    sub-long v11, v1, v11

    .line 631
    invoke-virtual {v5}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 628
    invoke-virtual {v0, v6, v7, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/appop/AttributedOp;->deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 637
    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result p0

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public createPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 378
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method public final deepClone(Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 604
    :cond_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    .line 605
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p0}, Landroid/util/LongSparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 607
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    new-instance v4, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$NoteOpEvent;

    invoke-direct {v4, v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(Landroid/app/AppOpsManager$NoteOpEvent;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final finishOrPause(Landroid/os/IBinder;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-gez v3, :cond_1

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AttributedOp;->finishPossiblyPaused(Landroid/os/IBinder;Z)V

    return-void

    .line 294
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 296
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    sub-int/2addr v5, v4

    iput v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 299
    :cond_2
    iget v5, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz v5, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    if-nez v2, :cond_4

    .line 301
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->finish()V

    .line 302
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 305
    :cond_4
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-nez v3, :cond_5

    .line 306
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 309
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 310
    new-instance v3, Landroid/app/AppOpsManager$OpEventProxyInfo;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    move-object v11, v3

    goto :goto_1

    :cond_6
    move-object v11, v4

    .line 313
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartElapsedTime()J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 314
    new-instance v3, Landroid/app/AppOpsManager$NoteOpEvent;

    .line 315
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getStartTime()J

    move-result-wide v7

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 317
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v7

    invoke-static {v6, v7}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 320
    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v6, v5, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v5, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v7, v5, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v8, v5, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v9, v5, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 321
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v11

    .line 322
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v12

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v15

    .line 323
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v17

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v18

    .line 320
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/appop/HistoricalRegistry;->increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    if-nez v2, :cond_7

    .line 326
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {v2, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 327
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 328
    iput-object v4, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p2, :cond_7

    .line 331
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v2}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    .line 332
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v5, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v8, 0x0

    .line 334
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10

    .line 332
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_7
    return-void
.end method

.method public final finishPossiblyPaused(Landroid/os/IBinder;Z)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    const-string v1, "AppOps"

    if-nez v0, :cond_0

    const-string p0, "No ops running or paused"

    .line 345
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    const-string p0, "No op running or paused for the client"

    .line 351
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_2

    return-void

    .line 359
    :cond_2
    iget-object p2, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 360
    iget v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-nez v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 363
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    invoke-virtual {p1, p2}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 364
    iget-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 365
    iput-object p1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_3
    return-void
.end method

.method public finished(Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final finished(Landroid/os/IBinder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    return-void
.end method

.method public hasAnyTime()Z
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz p0, :cond_2

    .line 592
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPaused()Z
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClientDeath(Landroid/os/IBinder;)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    monitor-exit v0

    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 457
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 459
    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 462
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;)V

    .line 463
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUidStateChanged(I)V
    .locals 21

    move-object/from16 v11, p0

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 476
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 478
    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 480
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 481
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v15, 0x0

    move-object v10, v0

    move v9, v15

    :goto_1
    if-ge v9, v13, :cond_6

    .line 483
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v0, :cond_4

    .line 485
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v1

    move/from16 v8, p1

    if-eq v1, v8, :cond_4

    .line 489
    :try_start_0
    iget v7, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    const/4 v6, 0x1

    .line 490
    iput v6, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 491
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    .line 493
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v11, v2, v15}, Lcom/android/server/appop/AttributedOp;->finished(Landroid/os/IBinder;Z)V

    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v3

    .line 499
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 500
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v16

    const/16 v17, 0x0

    .line 501
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v18

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v19
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, p1

    move/from16 v20, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move v8, v12

    move v15, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v19

    .line 498
    :try_start_1
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    goto :goto_2

    :cond_2
    move/from16 v20, v6

    move/from16 v16, v7

    move v15, v9

    move-object/from16 v18, v10

    .line 503
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 504
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v6

    const/4 v7, 0x0

    .line 505
    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v9

    invoke-virtual {v0}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v5, p1

    move v8, v12

    .line 503
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    :goto_2
    if-eqz v12, :cond_3

    .line 508
    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_3

    :cond_3
    iget-object v0, v11, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v10, v0

    .line 509
    :try_start_2
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v0, :cond_5

    .line 511
    iget v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v7, v16, -0x1

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_0
    move v15, v9

    move-object/from16 v18, v10

    goto :goto_4

    :cond_4
    move v15, v9

    move-object/from16 v18, v10

    :catch_1
    move-object/from16 v10, v18

    :catch_2
    :cond_5
    :goto_4
    add-int/lit8 v9, v15, 0x1

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public pause()V
    .locals 12

    .line 386
    invoke-virtual {p0}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 391
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_1
    const/4 v0, 0x0

    .line 394
    :goto_0
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 396
    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 399
    iget-object v4, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v3, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v7, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v9, 0x0

    .line 401
    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v11

    .line 399
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public rejected(II)V
    .locals 8

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/appop/AttributedOp;->rejected(JII)V

    .line 161
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v2, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public rejected(JII)V
    .locals 8

    .line 175
    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide p3

    .line 177
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v1, :cond_1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 184
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService;->mOpEventProxyInfoPool:Lcom/android/server/appop/AttributedOp$OpEventProxyInfoPool;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/AppOpsManager$NoteOpEvent;->reinit(JJLandroid/app/AppOpsManager$OpEventProxyInfo;Landroid/util/Pools$Pool;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/android/server/appop/AttributedOp;->mRejectEvents:Landroid/util/LongSparseArray;

    new-instance v6, Landroid/app/AppOpsManager$NoteOpEvent;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {p0, p3, p4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 36

    move-object/from16 v0, p0

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 415
    :cond_0
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 416
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 418
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 419
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 421
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 422
    :goto_1
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 423
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 424
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getClientId()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartElapsedTime(J)V

    .line 426
    invoke-virtual {v13, v14, v15}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->setStartTime(J)V

    .line 427
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v7, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 428
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v9

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v10

    .line 429
    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v12

    invoke-virtual {v13}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v16

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v14

    move-object/from16 v17, v13

    move/from16 v13, v16

    .line 427
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    if-eqz v1, :cond_3

    .line 431
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/16 v23, 0x1

    .line 432
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v24

    .line 433
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v25

    move-object/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    .line 431
    invoke-virtual/range {v18 .. v25}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    .line 437
    :cond_3
    iget-object v3, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v5, v4, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v6, v4, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    .line 438
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getFlags()I

    move-result v31

    const/16 v32, 0x0

    const/16 v33, 0x2

    .line 439
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionFlags()I

    move-result v34

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getAttributionChainId()I

    move-result v35

    move-object/from16 v26, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v4

    move-object/from16 v30, v7

    .line 437
    invoke-virtual/range {v26 .. v35}, Lcom/android/server/appop/AppOpsService;->scheduleOpStartedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 441
    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    return-void
.end method

.method public started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 207
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/appop/AttributedOp;->started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V

    return-void
.end method

.method public final started(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZII)V
    .locals 11

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 217
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/appop/AttributedOp;->startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V

    return-void
.end method

.method public final startedOrPaused(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIZZII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p5

    if-eqz p7, :cond_0

    .line 228
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$Op;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p8, :cond_0

    .line 229
    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v1, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v1, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v1, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->scheduleOpActiveChangedIfNeededLocked(IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_0
    const/4 v13, 0x1

    if-eqz p8, :cond_1

    .line 233
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    .line 234
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    if-nez p8, :cond_2

    .line 235
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 236
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v13}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :cond_2
    :goto_0
    if-eqz p8, :cond_3

    .line 239
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    :goto_1
    move-object v12, v1

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 242
    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-nez v1, :cond_5

    .line 244
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mInProgressStartOpEventPool:Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    new-instance v2, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;-><init>()V

    .line 246
    invoke-static {v2, v0, v15}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v8

    move-wide/from16 v2, v16

    move-object/from16 v6, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v0, v12

    move/from16 v12, p5

    move/from16 v18, v13

    move/from16 v13, p6

    move/from16 v14, p9

    move/from16 v15, p10

    .line 244
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEventPool;->acquire(JJLandroid/os/IBinder;Ljava/lang/String;Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;IIII)Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    move-result-object v1

    move-object/from16 v2, p1

    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    goto :goto_2

    :cond_5
    move/from16 v18, v13

    .line 251
    invoke-virtual {v1}, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->getUidState()I

    move-result v0

    move/from16 v12, p5

    if-eq v12, v0, :cond_4

    move-object/from16 v0, p0

    .line 252
    invoke-virtual {v0, v12}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    .line 256
    :goto_2
    iget v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    if-eqz p8, :cond_7

    .line 259
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mHistoricalRegistry:Lcom/android/server/appop/HistoricalRegistry;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, v16

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/appop/HistoricalRegistry;->incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;IIJII)V

    .line 263
    iget-object v1, v0, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v0, Lcom/android/server/appop/AttributedOp;->parent:Lcom/android/server/appop/AppOpsService$Op;

    iget v3, v2, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v4, v2, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    iget-object v5, v2, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/android/server/appop/AttributedOp;->tag:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object/from16 v7, p4

    goto :goto_3

    :cond_6
    move-object v7, v0

    :goto_3
    move-object v0, v1

    move v1, v3

    move v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService;->writePermissionAccessInformation(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
