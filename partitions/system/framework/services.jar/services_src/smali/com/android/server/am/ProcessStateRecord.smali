.class public final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# instance fields
.field public mAdjSeq:I

.field public mAdjSource:Ljava/lang/Object;

.field public mAdjSourceProcState:I

.field public mAdjTarget:Ljava/lang/Object;

.field public mAdjType:Ljava/lang/String;

.field public mAdjTypeCode:I

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundRestricted:Z

.field public mCacheOomRankerRss:J

.field public mCacheOomRankerRssTimeMs:J

.field public mCacheOomRankerUseCount:I

.field public mCached:Z

.field public mCachedAdj:I

.field public mCachedCompatChanges:[I

.field public mCachedForegroundActivities:Z

.field public mCachedHasActivities:I

.field public mCachedHasRecentTasks:I

.field public mCachedHasVisibleActivities:I

.field public mCachedIsHeavyWeight:I

.field public mCachedIsHomeProcess:I

.field public mCachedIsPreviousProcess:I

.field public mCachedIsReceivingBroadcast:I

.field public mCachedProcState:I

.field public mCachedSchedGroup:I

.field public mCompletedAdjSeq:I

.field public mContainsCycle:Z

.field public mCurAdj:I

.field public mCurBoundByNonBgRestrictedApp:Z

.field public mCurCapability:I

.field public mCurProcState:I

.field public mCurRawAdj:I

.field public mCurRawProcState:I

.field public mCurSchedGroup:I

.field public mEmpty:Z

.field public mFgInteractionTime:J

.field public mForcingToImportant:Ljava/lang/Object;

.field public mHasForegroundActivities:Z

.field public mHasOverlayUi:Z

.field public mHasShownUi:Z

.field public mHasStartedServices:Z

.field public mHasTopUi:Z

.field public mHasTopUiRequester:I

.field public mInteractionEventTime:J

.field public mLastCanKillOnBgRestrictedAndIdleTime:J

.field public mLastInvisibleTime:J

.field public mLastStateTime:J

.field public mLastTopTime:J

.field public mMaxAdj:I

.field public mNoKillOnBgRestrictedAndIdle:Z

.field public mNotCachedSinceIdle:Z

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public mProcStateChanged:Z

.field public mReachable:Z

.field public mRepForegroundActivities:Z

.field public mRepProcState:I

.field public mReportedInteraction:Z

.field public mRunningRemoteAnimation:Z

.field public mSavedPriority:I

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mServiceB:Z

.field public mServiceHighRam:Z

.field public mSetAdj:I

.field public mSetBoundByNonBgRestrictedApp:Z

.field public mSetCached:Z

.field public mSetCapability:I

.field public mSetNoKillOnBgRestrictedAndIdle:Z

.field public mSetProcState:I

.field public mSetRawAdj:I

.field public mSetSchedGroup:I

.field public mSlowAbnormal:Z

.field public mSystemNoUi:Z

.field public mVerifiedAdj:I

.field public mWhenUnimportant:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    .line 62
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    const/16 v0, -0x2710

    .line 68
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 74
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 80
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 86
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 92
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    const/4 v1, 0x0

    .line 99
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 105
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 111
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 117
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    const/16 v2, 0x14

    .line 123
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 129
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 135
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 141
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 311
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 317
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 323
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    const/4 v2, -0x1

    .line 428
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 430
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 432
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 434
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 436
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 438
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 440
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 446
    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 453
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 455
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v0, 0x13

    .line 457
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 459
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 750
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    .line 468
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 469
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 470
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .locals 12

    move-object v0, p0

    move-object v11, p1

    .line 1137
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    return-void

    .line 1140
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    .line 1142
    iget-object v1, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1143
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v1

    const/16 v2, 0x63

    .line 1142
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1145
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1146
    iget-boolean v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1147
    iget-boolean v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1148
    iget v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1149
    iget v3, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v3, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    add-int/2addr v2, v1

    .line 1152
    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    :cond_1
    return-void
.end method

.method public containsCycle()Z
    .locals 0

    .line 891
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return p0
.end method

.method public decAdjSeq()V
    .locals 1

    .line 861
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public decCompletedAdjSeq()V
    .locals 1

    .line 876
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .locals 7

    .line 1324
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 1325
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1327
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-string v0, " time="

    .line 1328
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1331
    :cond_1
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-string v0, " fgInteractionTime="

    .line 1332
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1333
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1335
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1337
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lruSeq="

    .line 1338
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1339
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " curRaw="

    .line 1340
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setRaw="

    .line 1341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " cur="

    .line 1342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " set="

    .line 1343
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1344
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setSchedGroup="

    .line 1345
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " systemNoUi="

    .line 1346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1347
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mRepProcState="

    .line 1348
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " setProcState="

    .line 1349
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " lastStateTime="

    .line 1350
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1352
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    const-string v0, " setCapability="

    .line 1355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1357
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v0, :cond_4

    const-string v0, " backgroundRestricted="

    .line 1359
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " boundByNonBgRestrictedApp="

    .line 1361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1362
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1364
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1365
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1366
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " pendingUiClean="

    .line 1367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1369
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " empty="

    .line 1370
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1371
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_7

    .line 1372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " serviceHighRam="

    .line 1373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1375
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_8

    .line 1376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " initialIdlePss="

    .line 1377
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1379
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_a

    .line 1380
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hasOverlayUi="

    .line 1381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " runningRemoteAnimation="

    .line 1382
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1384
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    if-lez v0, :cond_a

    const-string v0, " mHasTopUiRequester="

    .line 1385
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1389
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_c

    .line 1390
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "foregroundActivities="

    .line 1391
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " (rep="

    .line 1392
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    :cond_c
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_d

    .line 1395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "whenUnimportant="

    .line 1396
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1398
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1400
    :cond_d
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_e

    .line 1401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1402
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1403
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1405
    :cond_e
    iget-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, p3, v1

    if-lez v0, :cond_f

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p3, v0

    if-gez p3, :cond_f

    .line 1406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "lastInvisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long p3, v0, p3

    .line 1409
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr p3, v2

    .line 1411
    invoke-static {p1, p3, p4, v0, v1}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1412
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1414
    :cond_f
    iget-boolean p3, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p3, :cond_10

    .line 1415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "hasStartedServices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_10
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1

    .line 625
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 627
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 628
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 629
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getAdjSeq()I
    .locals 0

    .line 866
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return p0
.end method

.method public getAdjSource()Ljava/lang/Object;
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjSourceProcState()I
    .locals 0

    .line 993
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return p0
.end method

.method public getAdjTarget()Ljava/lang/Object;
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object p0
.end method

.method public getAdjType()Ljava/lang/String;
    .locals 0

    .line 963
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdjTypeCode()I
    .locals 0

    .line 973
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return p0
.end method

.method public getCacheOomRankerRss()J
    .locals 2

    .line 1314
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    return-wide v0
.end method

.method public getCacheOomRankerRssTimeMs()J
    .locals 2

    .line 1319
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-wide v0
.end method

.method public getCacheOomRankerUseCount()I
    .locals 0

    .line 937
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return p0
.end method

.method public getCachedAdj()I
    .locals 0

    .line 1158
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return p0
.end method

.method public getCachedCompatChange(I)Z
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    .line 1128
    aput v1, v0, p1

    .line 1130
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v3, p1

    :cond_1
    return v3
.end method

.method public getCachedForegroundActivities()Z
    .locals 0

    .line 1163
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return p0
.end method

.method public getCachedHasActivities()Z
    .locals 3

    .line 1043
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    .line 1045
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/16 v1, 0x10

    if-ne v0, v2, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1052
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getCachedHasRecentTasks()Z
    .locals 2

    .line 1101
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    .line 1103
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1105
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCachedHasVisibleActivities()Z
    .locals 2

    .line 1066
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    .line 1068
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1070
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCachedIsHeavyWeight()Z
    .locals 2

    .line 1057
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    .line 1059
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1061
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCachedIsHomeProcess()Z
    .locals 4

    .line 1075
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_0

    .line 1080
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1083
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public getCachedIsPreviousProcess()Z
    .locals 4

    .line 1088
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iput v3, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1091
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v3, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_0

    .line 1093
    :cond_0
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1096
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public getCachedIsReceivingBroadcast([I)Z
    .locals 4

    .line 1110
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;[I)Z

    move-result v0

    .line 1112
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v1, 0x20

    if-ne v0, v3, :cond_0

    .line 1114
    aget p1, p1, v2

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1115
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1120
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public getCachedProcState()I
    .locals 0

    .line 1168
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return p0
.end method

.method public getCachedSchedGroup()I
    .locals 0

    .line 1173
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return p0
.end method

.method public getCompletedAdjSeq()I
    .locals 0

    .line 881
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return p0
.end method

.method public getCurAdj()I
    .locals 0

    .line 517
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return p0
.end method

.method public getCurCapability()I
    .locals 0

    .line 557
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return p0
.end method

.method public getCurProcState()I
    .locals 0

    .line 599
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0
.end method

.method public getCurRawAdj()I
    .locals 0

    .line 496
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurRawProcState()I
    .locals 0

    .line 609
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .locals 0

    .line 578
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return p0
.end method

.method public getFgInteractionTime()J
    .locals 2

    .line 841
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getForcingToImportant()Ljava/lang/Object;
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object p0
.end method

.method public getInteractionEventTime()J
    .locals 2

    .line 830
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getLastCanKillOnBgRestrictedAndIdleTime()J
    .locals 2

    .line 1304
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-wide v0
.end method

.method public getLastInvisibleTime()J
    .locals 2

    .line 1263
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .locals 2

    .line 655
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastTopTime()J
    .locals 2

    .line 912
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method public getMaxAdj()I
    .locals 0

    .line 484
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return p0
.end method

.method public getReportedProcState()I
    .locals 0

    .line 620
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return p0
.end method

.method public getSavedPriority()I
    .locals 0

    .line 665
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return p0
.end method

.method public getSetAdj()I
    .locals 0

    .line 527
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return p0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .line 532
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_0

    .line 533
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x320

    return p0

    :cond_0
    return v0
.end method

.method public getSetCapability()I
    .locals 0

    .line 567
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return p0
.end method

.method public getSetProcState()I
    .locals 0

    .line 645
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return p0
.end method

.method public getSetRawAdj()I
    .locals 0

    .line 506
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return p0
.end method

.method public getSetSchedGroup()I
    .locals 0

    .line 588
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return p0
.end method

.method public getVerifiedAdj()I
    .locals 0

    .line 547
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return p0
.end method

.method public getWhenUnimportant()J
    .locals 2

    .line 902
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method public hasForegroundActivities()Z
    .locals 0

    .line 720
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .locals 0

    .line 781
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return p0
.end method

.method public hasProcStateChanged()Z
    .locals 0

    .line 809
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return p0
.end method

.method public hasRepForegroundActivities()Z
    .locals 0

    .line 730
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return p0
.end method

.method public hasReportedInteraction()Z
    .locals 0

    .line 819
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return p0
.end method

.method public hasShownUi()Z
    .locals 0

    .line 740
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return p0
.end method

.method public hasTopUi()Z
    .locals 0

    .line 770
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return p0
.end method

.method public init(J)V
    .locals 0

    .line 474
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public isBackgroundRestricted()Z
    .locals 0

    .line 1223
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return p0
.end method

.method public isCached()Z
    .locals 0

    .line 932
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return p0
.end method

.method public isCurBoundByNonBgRestrictedApp()Z
    .locals 0

    .line 1233
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 922
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return p0
.end method

.method public isNotCachedSinceIdle()Z
    .locals 0

    .line 695
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return p0
.end method

.method public isReachable()Z
    .locals 0

    .line 1018
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return p0
.end method

.method public isRunningRemoteAnimation()Z
    .locals 0

    .line 786
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return p0
.end method

.method public isServiceB()Z
    .locals 0

    .line 675
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return p0
.end method

.method public isSetBoundByNonBgRestrictedApp()Z
    .locals 0

    .line 1243
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return p0
.end method

.method public isSetCached()Z
    .locals 0

    .line 1283
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return p0
.end method

.method public isSetNoKillOnBgRestrictedAndIdle()Z
    .locals 0

    .line 1293
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public isSystemNoUi()Z
    .locals 0

    .line 947
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return p0
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 1179
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2

    .line 1182
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1186
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "<="

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_4

    const-string v1, "Proc{"

    .line 1190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 1192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1196
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCleanupApplicationRecordLSP()V
    .locals 3

    const/4 v0, 0x0

    .line 1209
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1210
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    const/4 v1, 0x0

    .line 1211
    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    const/16 v1, -0x2710

    .line 1212
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1213
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1214
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    const/16 v1, 0x14

    .line 1215
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1216
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, -0x1

    .line 1217
    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestHasTopUi(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 756
    iget p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    goto :goto_0

    .line 758
    :cond_0
    iget p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    .line 760
    :goto_0
    iget p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 761
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    .line 763
    :cond_1
    iget p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUiRequester:I

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 764
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    return-void
.end method

.method public resetCachedInfo()V
    .locals 2

    const/4 v0, -0x1

    .line 1028
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 1029
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1030
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1031
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1032
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1033
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1034
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/16 v0, -0x2710

    .line 1035
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    const/16 v1, 0x13

    .line 1037
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1038
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return-void
.end method

.method public setAbnormalStatus(Z)V
    .locals 0

    .line 1008
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSlowAbnormal:Z

    return-void
.end method

.method public setAdjSeq(I)V
    .locals 0

    .line 856
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return-void
.end method

.method public setAdjSource(Ljava/lang/Object;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-void
.end method

.method public setAdjSourceProcState(I)V
    .locals 0

    .line 988
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return-void
.end method

.method public setAdjTarget(Ljava/lang/Object;)V
    .locals 0

    .line 998
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-void
.end method

.method public setAdjType(Ljava/lang/String;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-void
.end method

.method public setAdjTypeCode(I)V
    .locals 0

    .line 968
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return-void
.end method

.method public setBackgroundRestricted(Z)V
    .locals 0

    .line 1228
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return-void
.end method

.method public setCacheOomRankerRss(JJ)V
    .locals 0

    .line 1308
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 1309
    iput-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-void
.end method

.method public setCached(Z)V
    .locals 0

    .line 927
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return-void
.end method

.method public setCompletedAdjSeq(I)V
    .locals 0

    .line 871
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return-void
.end method

.method public setContainsCycle(Z)V
    .locals 0

    .line 886
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return-void
.end method

.method public setCurAdj(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 512
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentAdj(I)V

    return-void
.end method

.method public setCurBoundByNonBgRestrictedApp(Z)V
    .locals 0

    .line 1238
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setCurCapability(I)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return-void
.end method

.method public setCurProcState(I)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 594
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    return-void
.end method

.method public setCurRawAdj(I)V
    .locals 1

    .line 489
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 490
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/16 v0, 0xc8

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    return-void
.end method

.method public setCurRawProcState(I)V
    .locals 0

    .line 604
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .locals 0

    .line 572
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 573
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setEmpty(Z)V
    .locals 0

    .line 917
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return-void
.end method

.method public setFgInteractionTime(J)V
    .locals 0

    .line 835
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 836
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    return-void
.end method

.method public setForcingToImportant(Ljava/lang/Object;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-void
.end method

.method public setHasForegroundActivities(Z)V
    .locals 0

    .line 715
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 776
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    return-void
.end method

.method public setHasShownUi(Z)V
    .locals 0

    .line 735
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return-void
.end method

.method public setHasStartedServices(Z)V
    .locals 1

    .line 700
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 702
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_0

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :goto_0
    return-void
.end method

.method public setHasTopUi(Z)V
    .locals 0

    .line 745
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 746
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    return-void
.end method

.method public setInteractionEventTime(J)V
    .locals 0

    .line 824
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 825
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    return-void
.end method

.method public setLastCanKillOnBgRestrictedAndIdleTime(J)V
    .locals 0

    .line 1298
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-void
.end method

.method public setLastStateTime(J)V
    .locals 0

    .line 650
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-void
.end method

.method public setLastTopTime(J)V
    .locals 0

    .line 907
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-void
.end method

.method public setMaxAdj(I)V
    .locals 0

    .line 479
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return-void
.end method

.method public setNoKillOnBgRestrictedAndIdle(Z)V
    .locals 0

    .line 1268
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setNotCachedSinceIdle(Z)V
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return-void
.end method

.method public setProcStateChanged(Z)V
    .locals 0

    .line 804
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return-void
.end method

.method public setReachable(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return-void
.end method

.method public setRepForegroundActivities(Z)V
    .locals 0

    .line 725
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return-void
.end method

.method public setReportedInteraction(Z)V
    .locals 0

    .line 814
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return-void
.end method

.method public setReportedProcState(I)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 615
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .locals 1

    .line 791
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 794
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 799
    iget-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/16 v0, 0x9

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    return-void
.end method

.method public setSavedPriority(I)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return-void
.end method

.method public setServiceB(Z)V
    .locals 0

    .line 670
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return-void
.end method

.method public setServiceHighRam(Z)V
    .locals 0

    .line 680
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return-void
.end method

.method public setSetAdj(I)V
    .locals 0

    .line 522
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return-void
.end method

.method public setSetBoundByNonBgRestrictedApp(Z)V
    .locals 0

    .line 1248
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return-void
.end method

.method public setSetCached(Z)V
    .locals 0

    .line 1278
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return-void
.end method

.method public setSetCapability(I)V
    .locals 0

    .line 562
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return-void
.end method

.method public setSetNoKillOnBgRestrictedAndIdle(Z)V
    .locals 0

    .line 1288
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return-void
.end method

.method public setSetProcState(I)V
    .locals 1

    .line 636
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 640
    :cond_0
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return-void
.end method

.method public setSetRawAdj(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return-void
.end method

.method public setSetSchedGroup(I)V
    .locals 0

    .line 583
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return-void
.end method

.method public setSystemNoUi(Z)V
    .locals 0

    .line 942
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return-void
.end method

.method public setVerifiedAdj(I)V
    .locals 0

    .line 542
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return-void
.end method

.method public setWhenUnimportant(J)V
    .locals 0

    .line 896
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 897
    iget-object p0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    return-void
.end method

.method public shouldNotKillOnBgRestrictedAndIdle()Z
    .locals 0

    .line 1273
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return p0
.end method

.method public updateLastInvisibleTime(Z)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_0

    .line 1254
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_0

    .line 1255
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 1256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    :cond_1
    :goto_0
    return-void
.end method
