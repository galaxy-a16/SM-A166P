.class public Lcom/android/server/am/ForegroundServiceTypeLoggerModule;
.super Ljava/lang/Object;
.source "ForegroundServiceTypeLoggerModule.java"


# instance fields
.field public final mUids:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final convertFgsTypeToApiTypes(I)Landroid/util/IntArray;
    .locals 4

    .line 418
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 425
    invoke-virtual {p0, v2}, Landroid/util/IntArray;->add(I)V

    .line 426
    invoke-virtual {p0, v3}, Landroid/util/IntArray;->add(I)V

    const/16 v0, 0x9

    .line 427
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    .line 431
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x4

    if-ne v0, v2, :cond_3

    const/4 v0, 0x5

    .line 435
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    .line 436
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_3
    and-int/lit16 v0, p1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_4

    const/4 v0, 0x6

    .line 440
    invoke-virtual {p0, v0}, Landroid/util/IntArray;->add(I)V

    :cond_4
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_5

    const/4 p1, 0x7

    .line 444
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_5
    return-object p0
.end method

.method public final hasValidActiveFgs(II)Z
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-eqz p0, :cond_0

    .line 452
    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V
    .locals 38

    move-object/from16 v0, p1

    move/from16 v1, p4

    .line 464
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    sub-long v2, v2, p5

    .line 465
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    sub-long v4, p5, v4

    move-object/from16 v6, p0

    .line 466
    iget-object v6, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-eqz v6, :cond_1

    .line 468
    iget-object v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 469
    iget-object v2, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v2, p5

    .line 471
    :cond_0
    iget-object v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 472
    iget-object v4, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p5, v4

    :cond_1
    move-wide/from16 v34, v2

    move-wide/from16 v36, v4

    .line 476
    filled-new-array/range {p4 .. p4}, [I

    move-result-object v28

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p5, v1, v2

    .line 479
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    iget-boolean v10, v0, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->mAllowStartForeground:I

    iget v12, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    .line 488
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    if-eqz v3, :cond_2

    .line 489
    iget v3, v3, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    move v15, v3

    goto :goto_0

    :cond_2
    const/4 v15, -0x1

    :goto_0
    iget-boolean v3, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v5, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    const/16 v18, 0x0

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    .line 494
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerUtils;->hashComponentNameForAtom(Ljava/lang/String;)I

    move-result v20

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    iget v4, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const/16 v23, 0x0

    iget-boolean v14, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    .line 499
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    if-eqz v0, :cond_3

    iget-object v6, v0, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v6, v6, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    move/from16 v25, v6

    goto :goto_1

    :cond_3
    const/16 v25, -0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 500
    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v0, v0, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v26, v0

    goto :goto_2

    :cond_4
    const/16 v26, 0x0

    :goto_2
    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v0, 0x3c

    move v6, v0

    move v0, v9

    move/from16 v9, p2

    move/from16 v24, v14

    const/4 v14, 0x0

    move/from16 v16, v3

    move/from16 v17, v5

    move/from16 v19, v0

    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v27, p3

    move-object/from16 v29, v1

    .line 479
    invoke-static/range {v6 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJ)V

    return-void
.end method

.method public logFgsApiEventWithNoFgs(IIIJ)V
    .locals 34

    move/from16 v0, p3

    move-object/from16 v1, p0

    .line 522
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-eqz v1, :cond_0

    .line 524
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p4, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide/from16 v32, v1

    .line 529
    filled-new-array/range {p3 .. p3}, [I

    move-result-object v24

    const/4 v0, 0x1

    new-array v0, v0, [J

    move-object/from16 v25, v0

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    const/16 v2, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    move/from16 v3, p1

    move/from16 v9, p1

    move/from16 v23, p2

    .line 532
    invoke-static/range {v2 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJ)V

    return-void
.end method

.method public logForegroundServiceApiEventBegin(IIILjava/lang/String;)J
    .locals 13

    move-object v7, p0

    move v8, p1

    move v9, p2

    .line 267
    new-instance v10, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v10

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    .line 269
    iget-object v0, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState-IA;)V

    .line 272
    iget-object v1, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 280
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 281
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 284
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 286
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 290
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 291
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 292
    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    :cond_3
    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 297
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    iget-wide v0, v10, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v0

    .line 305
    :cond_4
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    .line 308
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 311
    :cond_5
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 312
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 317
    iget-wide v11, v10, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    .line 318
    iget-object v0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 319
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    const/4 v2, 0x4

    const/4 v3, 0x1

    move-object v0, p0

    move v4, p1

    move-wide v5, v11

    .line 320
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_0

    .line 327
    :cond_6
    iget-wide v0, v10, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide v0
.end method

.method public logForegroundServiceApiEventEnd(III)J
    .locals 11

    .line 341
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v0, :cond_0

    const-string p0, "ForegroundServiceTypeLoggerModule"

    const-string p1, "API event end called before start!"

    .line 343
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    return-wide p0

    .line 346
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 349
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 353
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 352
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->hasValidActiveFgs(II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 357
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v5, 0x3

    move-object v3, p0

    move v4, p2

    move v6, p1

    move-wide v7, v9

    .line 363
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEventWithNoFgs(IIIJ)V

    .line 366
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-wide v9

    .line 374
    :cond_2
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_3

    .line 376
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 378
    :cond_3
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_4

    .line 379
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 380
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    .line 387
    :cond_4
    new-instance p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    const-string v4, ""

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(IILjava/lang/String;IJ)V

    .line 389
    iget-object p2, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    iget-wide p0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    return-wide p0
.end method

.method public logForegroundServiceApiStateChanged(IIII)V
    .locals 9

    .line 398
    iget-object p3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    .line 399
    iget-object p3, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 408
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    const/4 v2, 0x4

    move-object v0, p0

    move v3, p4

    move v4, p1

    move-wide v5, v7

    .line 409
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public logForegroundServiceStart(IILcom/android/server/am/ServiceRecord;)V
    .locals 11

    .line 136
    iget-object p2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez p2, :cond_0

    .line 138
    new-instance p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>(Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState-IA;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    :cond_0
    iget p1, p3, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object p1

    .line 146
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 147
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1}, Landroid/util/LongArray;-><init>()V

    .line 148
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 149
    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 150
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_1

    .line 152
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    .line 154
    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    :cond_1
    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 158
    invoke-virtual {p3}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v7, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    .line 168
    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V

    .line 171
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    .line 172
    iget-wide v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-virtual {v1, v7, v8}, Landroid/util/LongArray;->add(J)V

    const/4 v7, 0x1

    .line 174
    iput-boolean v7, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mIsAssociatedWithFgs:Z

    .line 175
    iput-object p3, v6, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mAssociatedFgsRecord:Lcom/android/server/am/ServiceRecord;

    .line 179
    iget-object v6, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_4

    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 188
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 189
    invoke-virtual {v1, v3}, Landroid/util/LongArray;->get(I)J

    move-result-wide v9

    move-object v4, p0

    move-object v5, p3

    .line 185
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p2

    .line 202
    iget v1, v8, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-virtual {v7, v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v1

    .line 203
    iget-object v2, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const-string v3, " in package "

    const-string v4, "ForegroundServiceTypeLoggerModule"

    if-nez v2, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FGS stop call being logged with no start call for UID for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v5

    const/4 v6, 0x0

    move v11, v6

    :goto_0
    if-ge v11, v5, :cond_5

    .line 213
    invoke-virtual {v1, v11}, Landroid/util/IntArray;->get(I)I

    move-result v12

    .line 214
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_1

    .line 216
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Logger should be tracking FGS types correctly for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_1
    iget-object v14, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    if-eqz v14, :cond_2

    .line 226
    iget-object v15, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    .line 227
    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-nez v13, :cond_2

    .line 228
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-wide v13, v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 234
    :cond_2
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    .line 235
    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_3

    .line 237
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find appropriate running FGS for FGS stop for UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 245
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    .line 247
    iget-object v13, v2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 250
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v11, v6

    .line 252
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x2

    .line 255
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 253
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
