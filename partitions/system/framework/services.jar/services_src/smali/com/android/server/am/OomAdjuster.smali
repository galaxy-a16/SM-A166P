.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# instance fields
.field public VENDING_PKG:Ljava/lang/String;

.field public mActiveUids:Lcom/android/server/am/ActiveUids;

.field public mAdjSeq:I

.field public mCFMS:Landroid/os/ICustomFrequencyManager;

.field public mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field public mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field public mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public mLastFreeSwapPercent:D

.field public mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field public mNewNumAServiceProcs:I

.field public mNewNumServiceProcs:I

.field public mNextNoKillDebugMessageTime:J

.field public mNumCachedHiddenProcs:I

.field public mNumCachedProcessCount:I

.field public mNumCachedSlotCount:I

.field public mNumEmptyProcessCount:I

.field public mNumEmptySlotCount:I

.field public mNumNonCachedProcs:I

.field public mNumServiceProcs:I

.field public final mNumSlots:I

.field public mOomAdjUpdateOngoing:Z

.field public mPendingFullOomAdjUpdate:Z

.field public final mPendingProcessSet:Landroid/util/ArraySet;

.field public mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessGroupHandler:Landroid/os/Handler;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public final mProcessesInCycle:Landroid/util/ArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpBecameIdle:Ljava/util/ArrayList;

.field public final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field public final mTmpLong:[J

.field public final mTmpProcessList:Ljava/util/ArrayList;

.field public final mTmpProcessSet:Landroid/util/ArraySet;

.field public final mTmpQueue:Ljava/util/ArrayDeque;

.field public final mTmpSchedGroup:[I

.field public final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$CxsEyTIlQ9DHd8L_GVqYsMNnVWU(Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$new$1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sb4rINql5SnWMbsmxIWTlE2vhe0(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbcpruvRTpdtq55GSm9MjprdC4o(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WwoeZTnUBMxV-JLJr5QQfTatx6U(Lcom/android/server/ServiceThread;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIoiUDh1TJ_GTQNFsTlrn_SfGPI(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    .line 479
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 5

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 393
    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v1, 0x0

    .line 398
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 404
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 405
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 406
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 412
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 418
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 430
    iput-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    .line 436
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 439
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 440
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 441
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 442
    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    .line 451
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 452
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 461
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 467
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const-string v0, "com.android.vending"

    .line 1399
    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1404
    iput-wide v3, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1875
    new-instance v0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 499
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 500
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 501
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 502
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 504
    const-class p3, Landroid/os/PowerManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManagerInternal;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 505
    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 506
    new-instance p3, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p3, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 507
    new-instance p3, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p3, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 510
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 515
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    .line 519
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p3, p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 541
    new-instance p3, Lcom/android/server/am/ActiveUids;

    invoke-direct {p3, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 542
    new-instance p3, Ljava/util/ArrayDeque;

    iget-object p4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p4, p4, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/2addr p4, v2

    invoke-direct {p3, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p3, 0xa

    .line 543
    iput p3, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 546
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 547
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    return-void
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 485
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "OomAdjuster"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 487
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 489
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public static getFreeSwapPercent()D
    .locals 2

    .line 1407
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    .line 3724
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3725
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 3727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static synthetic lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V
    .locals 1

    .line 490
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 489
    :goto_0
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/os/Message;)Z
    .locals 7

    .line 520
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 521
    iget v1, p0, Landroid/os/Message;->arg2:I

    .line 522
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x40

    .line 526
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setProcessGroup "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 531
    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :catch_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 538
    throw p0

    :goto_0
    return v3
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const-string p0, "_unknown"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "updateOomAdj_fgsfilter"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "updateOomAdj_slowdown"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "updateOomAdj_componentDisabled"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "updateOomAdj_restrictionChange"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "updateOomAdj_executingService"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "updateOomAdj_stopService"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "updateOomAdj_uidIdle"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "updateOomAdj_removeTask"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "updateOomAdj_shell"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "updateOomAdj_backup"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "updateOomAdj_systemInit"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "updateOomAdj_shortFgs"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "updateOomAdj_processEnd"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "updateOomAdj_processBegin"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "updateOomAdj_allowlistChange"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "updateOomAdj_uiVisibility"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "updateOomAdj_removeProvider"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "updateOomAdj_getProvider"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "updateOomAdj_startService"

    return-object p0

    :pswitch_13
    const-string/jumbo p0, "updateOomAdj_unbindService"

    return-object p0

    :pswitch_14
    const-string/jumbo p0, "updateOomAdj_bindService"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "updateOomAdj_startReceiver"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "updateOomAdj_finishReceiver"

    return-object p0

    :pswitch_17
    const-string/jumbo p0, "updateOomAdj_activityChange"

    return-object p0

    :pswitch_18
    const-string/jumbo p0, "updateOomAdj_meh"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v13, p3

    move-wide/from16 v11, p5

    .line 3404
    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3405
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 3407
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 3408
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 3413
    :cond_0
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 3414
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    .line 3418
    :cond_1
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    .line 3420
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v3, v2}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    .line 3425
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    if-eqz v3, :cond_2

    .line 3426
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3428
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    .line 3429
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    .line 3430
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    .line 3431
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v9

    .line 3432
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v16

    move v13, v10

    move/from16 v10, v16

    move-wide/from16 v11, p3

    .line 3426
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/chimera/PerProcessNandswap;->onOomAdjChanged(ILjava/lang/String;IIIIZJ)V

    goto :goto_0

    :cond_2
    move v13, v10

    .line 3438
    :goto_0
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v3, :cond_3

    .line 3439
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v17

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3441
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v19

    .line 3442
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v20

    .line 3443
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v21

    .line 3444
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v22

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    .line 3439
    invoke-virtual/range {v16 .. v22}, Lcom/android/server/chimera/GPUMemoryReclaimer;->onOomAdjChanged(ILjava/lang/String;IIZZ)V

    .line 3448
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 3450
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-static {v3, v4, v5, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 3454
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_4

    .line 3455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " adj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    .line 3457
    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    if-eqz v0, :cond_5

    .line 3461
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    :cond_5
    const/16 v0, -0x2710

    .line 3463
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    goto :goto_1

    :cond_6
    const/16 v0, 0xb4

    if-lt v13, v0, :cond_7

    const/16 v0, 0xc8

    if-ge v13, v0, :cond_7

    .line 3465
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-static {v0, v3, v4, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    .line 3470
    :cond_7
    :goto_1
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    .line 3471
    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    .line 3475
    :cond_8
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    .line 3476
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    const/16 v10, 0xa

    const/4 v11, 0x1

    if-eq v3, v0, :cond_14

    .line 3477
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    .line 3478
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3479
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_9

    .line 3480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting sched group of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    .line 3482
    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v4

    if-nez v4, :cond_a

    .line 3485
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    if-nez v4, :cond_a

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    if-nez v4, :cond_a

    .line 3490
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    invoke-virtual {v2, v0, v10, v3, v11}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    move v0, v9

    goto/16 :goto_5

    :cond_a
    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x3

    if-eq v0, v4, :cond_f

    if-eqz v0, :cond_e

    if-eq v0, v11, :cond_d

    const/4 v4, 0x5

    if-eq v0, v6, :cond_c

    const/4 v7, 0x4

    if-eq v0, v7, :cond_c

    if-eq v0, v4, :cond_f

    const/4 v4, 0x6

    if-eq v0, v4, :cond_b

    goto :goto_2

    .line 3510
    :cond_b
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v4, :cond_f

    move v5, v10

    goto :goto_2

    :cond_c
    move v5, v4

    goto :goto_2

    :cond_d
    const/4 v5, 0x7

    goto :goto_2

    :cond_e
    move v5, v9

    .line 3547
    :cond_f
    :goto_2
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 3548
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3547
    invoke-virtual {v4, v9, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3550
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v4

    if-ne v0, v6, :cond_11

    if-eq v3, v6, :cond_14

    .line 3554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3555
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_10

    .line 3557
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 3558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    if-eqz v4, :cond_14

    .line 3560
    invoke-static {v4, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto/16 :goto_4

    .line 3573
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v3, -0xa

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_14

    .line 3576
    :try_start_1
    invoke-static {v4, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :cond_11
    if-ne v3, v6, :cond_14

    if-eq v0, v6, :cond_14

    .line 3586
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3587
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_12

    .line 3590
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v9, v9}, Landroid/os/Process;->setThreadScheduler(III)V

    .line 3591
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    if-eqz v4, :cond_13

    .line 3593
    invoke-static {v4, v9, v9}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "OomAdjuster"

    .line 3601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "OomAdjuster"

    .line 3597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3605
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v9}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_13
    :goto_3
    if-eqz v4, :cond_14

    const/4 v0, -0x4

    .line 3609
    invoke-static {v4, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_14
    :goto_4
    move v0, v11

    .line 3619
    :goto_5
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v4

    if-eq v3, v4, :cond_15

    .line 3620
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    move/from16 v3, p7

    move v12, v11

    goto :goto_6

    :cond_15
    move/from16 v3, p7

    move v12, v9

    .line 3624
    :goto_6
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 3626
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 3627
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 3628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 3635
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3641
    :catch_3
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_18

    .line 3643
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 3642
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_7

    :cond_17
    move-wide/from16 v13, p3

    move v8, v9

    goto :goto_8

    :cond_18
    :goto_7
    move-wide/from16 v13, p3

    .line 3644
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    move v8, v11

    .line 3653
    :goto_8
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v3, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3654
    :try_start_6
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 3655
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 3656
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v6

    move-wide/from16 v6, p3

    .line 3655
    :try_start_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 3657
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3658
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_1f

    .line 3659
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_19

    .line 3660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc state change of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3662
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    .line 3663
    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    :cond_19
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ge v3, v10, :cond_1a

    move v3, v11

    goto :goto_9

    :cond_1a
    move v3, v9

    .line 3666
    :goto_9
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-ge v4, v10, :cond_1b

    move v4, v11

    goto :goto_a

    :cond_1b
    move v4, v9

    :goto_a
    if-eqz v3, :cond_1c

    if-nez v4, :cond_1c

    .line 3671
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 3672
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1c
    move-wide/from16 v7, p5

    .line 3676
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3678
    invoke-virtual {v1, v15, v13, v14}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 3680
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 3681
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1d

    .line 3682
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_1d
    if-nez p2, :cond_1e

    .line 3685
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3686
    :try_start_8
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 3687
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    .line 3686
    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 3688
    monitor-exit v3

    goto :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    .line 3690
    :cond_1e
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    goto :goto_d

    :cond_1f
    move-wide/from16 v7, p5

    .line 3692
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_21

    .line 3693
    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3696
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_b

    .line 3697
    :cond_20
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    .line 3700
    :goto_b
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v7, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_23

    .line 3701
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_d

    .line 3704
    :cond_21
    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3707
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_c

    .line 3708
    :cond_22
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3710
    :goto_c
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v7, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_23

    .line 3711
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3715
    :cond_23
    :goto_d
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v4

    if-eq v3, v4, :cond_24

    .line 3716
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 3719
    :cond_24
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v3

    .line 3720
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v4

    if-eq v3, v4, :cond_25

    .line 3721
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v3, :cond_25

    .line 3722
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 3723
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    if-eqz v12, :cond_26

    .line 3739
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v6

    .line 3740
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v9

    .line 3741
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v12

    move-wide v10, v7

    move v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(IIIZI)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    goto :goto_e

    :cond_26
    move-wide v10, v7

    .line 3759
    :goto_e
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-nez v2, :cond_29

    .line 3762
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 3765
    :cond_27
    invoke-virtual {v15, v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    .line 3767
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v3, 0x3a

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3768
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 3769
    :cond_28
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3774
    :cond_29
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    .line 3775
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    return v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    .line 3657
    :goto_f
    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_f
.end method

.method public final assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1182
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1183
    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const/16 v5, 0x3e9

    const/16 v6, 0x38e

    const/16 v7, 0x384

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    .line 1184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-int/2addr v2, v8

    :goto_0
    if-ltz v2, :cond_1e

    .line 1186
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1187
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1188
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1189
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v11

    if-lt v11, v5, :cond_2

    .line 1191
    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-eqz v10, :cond_0

    .line 1194
    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v7

    goto :goto_1

    .line 1197
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v10

    if-lt v10, v7, :cond_1

    .line 1198
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    add-long/2addr v10, v12

    cmp-long v10, v10, v3

    if-gez v10, :cond_1

    const/16 v10, 0x3b6

    goto :goto_1

    :cond_1
    move v10, v6

    .line 1206
    :goto_1
    invoke-virtual {v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1207
    invoke-virtual {v8, v10}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1219
    :cond_3
    iget v4, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 1220
    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v3, v4

    .line 1226
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v4, v2, v4

    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v4, v9

    if-le v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-lez v9, :cond_5

    .line 1237
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v8

    goto :goto_3

    :cond_5
    move v9, v8

    :goto_3
    iget v4, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v9, v4

    if-ge v9, v8, :cond_6

    move v9, v8

    :cond_6
    add-int/2addr v3, v4

    sub-int/2addr v3, v8

    .line 1241
    div-int/2addr v3, v4

    if-ge v3, v8, :cond_7

    move v3, v8

    .line 1250
    :cond_7
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v4, :cond_8

    sget-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v10, :cond_8

    invoke-virtual {v4}, Lcom/android/server/am/DynamicHiddenApp;->clearRecentActivityProcess()V

    :cond_8
    sub-int/2addr v2, v8

    const/4 v4, -0x1

    const/16 v11, 0x389

    const/16 v12, 0x393

    move v13, v12

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v12, v11

    move v11, v7

    move v7, v6

    move v6, v4

    :goto_4
    if-ltz v2, :cond_1e

    .line 1253
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 1254
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1257
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v18

    if-nez v18, :cond_1c

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v18

    if-eqz v18, :cond_1c

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    move/from16 v18, v2

    const/16 v2, 0x3e9

    if-lt v1, v2, :cond_1d

    .line 1259
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1260
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    move/from16 v19, v3

    move/from16 v20, v4

    .line 1315
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v2, :cond_18

    .line 1316
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1318
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    if-eqz v2, :cond_14

    .line 1320
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    .line 1321
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v14, v4, :cond_13

    if-ne v15, v2, :cond_13

    if-le v3, v8, :cond_12

    if-ge v11, v7, :cond_11

    const/16 v2, 0x3e7

    if-ge v11, v2, :cond_11

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    .line 1266
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    move/from16 v19, v3

    if-eqz v2, :cond_c

    .line 1268
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    move/from16 v20, v4

    .line 1269
    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v14, v4, :cond_b

    if-ne v15, v2, :cond_b

    if-le v3, v8, :cond_a

    if-ge v11, v7, :cond_9

    const/16 v2, 0x3e7

    if-ge v11, v2, :cond_9

    add-int/lit8 v16, v16, 0x1

    :cond_9
    move v8, v3

    :cond_a
    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    move v15, v2

    move v8, v3

    move v14, v4

    goto :goto_5

    :cond_c
    move/from16 v20, v4

    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_f

    if-eq v11, v7, :cond_f

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v9, :cond_e

    add-int/lit8 v2, v7, 0xa

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_d

    const/16 v2, 0x3e7

    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    move v2, v7

    move v7, v11

    :goto_7
    const/16 v16, 0x0

    goto :goto_8

    :cond_f
    move v2, v7

    move v7, v11

    :goto_8
    add-int v3, v7, v16

    .line 1302
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1303
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1310
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_10

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_10

    .line 1311
    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    :cond_10
    :goto_9
    move v11, v7

    move/from16 v3, v19

    move/from16 v4, v20

    move v7, v2

    goto/16 :goto_f

    :cond_11
    :goto_a
    move v8, v3

    :cond_12
    const/4 v2, 0x1

    goto :goto_b

    :cond_13
    move v15, v2

    move v8, v3

    move v14, v4

    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-nez v2, :cond_17

    if-eq v11, v7, :cond_17

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v9, :cond_16

    add-int/lit8 v2, v7, 0xa

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_15

    const/16 v2, 0x3e7

    :cond_15
    const/4 v6, 0x0

    goto :goto_c

    :cond_16
    move v2, v7

    move v7, v11

    :goto_c
    const/16 v16, 0x0

    goto :goto_d

    :cond_17
    move v2, v7

    move v7, v11

    :goto_d
    add-int v3, v7, v16

    .line 1354
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1355
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1362
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_10

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_10

    .line 1363
    invoke-virtual {v1, v10}, Lcom/android/server/am/DynamicHiddenApp;->addRecentActivityProcess(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_9

    :cond_18
    if-eq v12, v13, :cond_1a

    add-int/lit8 v4, v20, 0x1

    move/from16 v3, v19

    if-lt v4, v3, :cond_1b

    add-int/lit8 v2, v13, 0xa

    const/16 v4, 0x3e7

    move v12, v13

    if-le v2, v4, :cond_19

    move v13, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    move v13, v2

    goto :goto_e

    :cond_1a
    move/from16 v3, v19

    move/from16 v4, v20

    .line 1384
    :cond_1b
    :goto_e
    invoke-virtual {v5, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1385
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    goto :goto_f

    :cond_1c
    move/from16 v18, v2

    :cond_1d
    move/from16 v20, v4

    move/from16 v4, v20

    :goto_f
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v1, p1

    const/16 v5, 0x3e9

    goto/16 :goto_4

    :cond_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 954
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 956
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_0
    return v0
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 810
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 811
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 812
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_0

    move-object/from16 v7, p1

    .line 814
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 815
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 816
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 824
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_15

    .line 825
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 828
    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    move-object/from16 v9, p3

    invoke-virtual {v9, v8, v7}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    goto :goto_2

    :cond_1
    move-object/from16 v9, p3

    .line 830
    :goto_2
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 831
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3
    const/16 v10, -0x384

    if-ltz v8, :cond_7

    .line 832
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v11

    const/4 v12, 0x2

    .line 833
    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 834
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_4

    :cond_2
    iget-object v12, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v12, v12, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v12, v12, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    :goto_4
    if-eqz v12, :cond_6

    if-eq v12, v3, :cond_6

    .line 835
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 836
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_3

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 837
    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v10

    if-gez v10, :cond_3

    goto :goto_5

    .line 840
    :cond_3
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v5, v10

    .line 841
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    const/16 v10, 0x20

    .line 844
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x8000080

    .line 845
    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    .line 849
    :cond_5
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 850
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 852
    :cond_7
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 853
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_6
    if-ltz v11, :cond_b

    .line 854
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v12

    .line 855
    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_a

    if-eq v12, v3, :cond_a

    .line 856
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 857
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_8

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 858
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-gez v13, :cond_8

    goto :goto_7

    .line 861
    :cond_8
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    .line 862
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_7

    .line 865
    :cond_9
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 866
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 870
    :cond_b
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 871
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessList;->getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 872
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    sub-int/2addr v11, v6

    :goto_9
    if-ltz v11, :cond_e

    .line 874
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 875
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    .line 876
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_a

    .line 879
    :cond_d
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 880
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :goto_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 883
    :cond_e
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_14

    .line 884
    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_b
    if-ltz v8, :cond_14

    .line 885
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    .line 887
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    .line 888
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v6

    :goto_c
    if-ltz v12, :cond_13

    .line 889
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 890
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_d
    if-ltz v14, :cond_12

    .line 891
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    .line 892
    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_11

    if-eq v15, v3, :cond_11

    .line 893
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 894
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-lt v4, v10, :cond_f

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 895
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-gez v4, :cond_f

    goto :goto_e

    .line 898
    :cond_f
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_e

    .line 901
    :cond_10
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 902
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_11
    :goto_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    :cond_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_b

    .line 824
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    .line 909
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    sub-int/2addr v0, v6

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_16

    .line 913
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 914
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 915
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_16
    return v5
.end method

.method public final computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .locals 62

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-wide/from16 v12, p5

    .line 2012
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2013
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    .line 2014
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v5

    .line 2020
    :cond_0
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 2021
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v5

    .line 2027
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v6, 0x13

    if-nez v0, :cond_2

    .line 2028
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2029
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2030
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    .line 2031
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2032
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2033
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2034
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v5

    .line 2038
    :cond_2
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    const/4 v4, 0x0

    .line 2039
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2040
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2041
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 2042
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-nez p7, :cond_4

    .line 2045
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    .line 2047
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 2048
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2051
    :cond_4
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2052
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 2054
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    .line 2055
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    .line 2056
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v15

    .line 2057
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 2059
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v16

    const-string v7, "ActivityManager"

    const/4 v5, 0x2

    if-gtz v16, :cond_f

    if-ne v2, v3, :cond_5

    .line 2063
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making fixed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "fixed"

    .line 2065
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2066
    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2067
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v2, 0x0

    .line 2068
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2069
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v3, 0x3f

    .line 2070
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2071
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v3, 0x1

    .line 2076
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v10, v11, :cond_6

    .line 2078
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const/4 v3, 0x3

    .line 2079
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v3, "pers-top-activity"

    .line 2080
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 2081
    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2083
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const-string/jumbo v3, "pers-top-ui"

    .line 2084
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    .line 2085
    :cond_7
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2086
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2088
    :cond_8
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2089
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    .line 2090
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x5

    .line 2096
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2097
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_3

    .line 2092
    :cond_a
    :goto_2
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x3

    .line 2093
    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2100
    :cond_b
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2101
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2102
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2106
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v2, :cond_c

    .line 2107
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2113
    :cond_c
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    if-lt v2, v1, :cond_e

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    if-ge v1, v0, :cond_d

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v7, 0x1

    :goto_5
    return v7

    :cond_f
    const/4 v4, 0x0

    const/16 v25, 0x5

    const/16 v26, 0x3

    .line 2116
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 2118
    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v4

    if-eqz p7, :cond_10

    .line 2132
    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v6

    goto :goto_6

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-ne v10, v11, :cond_13

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13

    .line 2139
    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->useTopSchedGroupForTopProcess()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "top-activity"

    .line 2141
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move/from16 v5, v26

    goto :goto_7

    :cond_11
    const-string v5, "intermediate-top-activity"

    .line 2146
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    :goto_7
    move/from16 v34, v0

    if-ne v2, v3, :cond_12

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v1

    const-string v1, "Making top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    move/from16 v35, v1

    .line 2155
    :goto_8
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/chimera/umr/DamonReclaimer;->notifyAppStart(Ljava/lang/String;)V

    move/from16 v20, v5

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x2

    goto/16 :goto_f

    :cond_13
    move/from16 v34, v0

    move/from16 v35, v1

    .line 2157
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "running-remote-anim"

    .line 2160
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_14

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making running remote anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move/from16 v19, v4

    move/from16 v20, v26

    const/16 v16, 0x64

    :goto_9
    const/16 v17, 0x0

    const/16 v18, 0x0

    goto/16 :goto_f

    .line 2165
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "instrumentation"

    .line 2169
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    or-int/lit8 v6, v6, 0x10

    if-ne v2, v3, :cond_16

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making instrumentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x2

    goto/16 :goto_f

    .line 2185
    :cond_17
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast([I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2191
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "broadcast"

    .line 2192
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_18

    .line 2200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making broadcast: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/16 v1, 0xb

    move/from16 v20, v0

    move/from16 v19, v1

    const/16 v16, 0x0

    goto :goto_9

    .line 2202
    :cond_19
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-lez v0, :cond_1c

    .line 2206
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    :goto_a
    const-string v1, "exec-service"

    .line 2208
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1b

    .line 2216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making exec-service: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    move/from16 v20, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xa

    goto/16 :goto_f

    :cond_1c
    if-ne v10, v11, :cond_1e

    const-string/jumbo v0, "top-sleeping"

    .line 2221
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1d

    .line 2225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making top (sleeping): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move/from16 v19, v4

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_b
    const/16 v18, 0x0

    :goto_c
    const/16 v20, 0x0

    goto :goto_f

    .line 2228
    :cond_1e
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2230
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 2229
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "force-keep-alive"

    .line 2233
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :goto_d
    move/from16 v19, v4

    const/16 v16, 0x64

    const/16 v17, 0x0

    goto :goto_b

    .line 2235
    :cond_1f
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v0, :cond_21

    const-string v0, "dedicated"

    .line 2239
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_d

    :cond_20
    const/16 v16, 0x64

    goto :goto_e

    .line 2253
    :cond_21
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 2254
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2255
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    const-string v0, "cch-empty"

    .line 2256
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_22
    if-ne v2, v3, :cond_23

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    move/from16 v16, p2

    :goto_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x13

    goto :goto_c

    :goto_f
    if-nez v17, :cond_24

    .line 2264
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2265
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object v5, v14

    move-object v14, v8

    move v1, v15

    move-object v15, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v4

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    .line 2269
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v16

    .line 2270
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v17

    .line 2271
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v18

    .line 2272
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v19

    .line 2273
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v0

    move/from16 v20, v0

    goto :goto_10

    :cond_24
    move-object v5, v14

    move v1, v15

    :goto_10
    move/from16 v0, v16

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v4, v19

    move/from16 v16, v1

    const/16 v1, 0x12

    if-le v4, v1, :cond_26

    .line 2276
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "cch-rec"

    .line 2278
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_25

    .line 2280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to cached recent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/16 v4, 0x12

    .line 2286
    :cond_26
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    .line 2287
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v17

    if-eqz v1, :cond_27

    .line 2289
    invoke-virtual {v5, v12, v13}, Lcom/android/server/am/ProcessServiceRecord;->areAllShortForegroundServicesProcstateTimedOut(J)Z

    move-result v18

    if-nez v18, :cond_27

    const/16 v18, 0x1

    goto :goto_11

    :cond_27
    const/16 v18, 0x0

    :goto_11
    const-string v11, ": "

    move/from16 v19, v14

    const-string v14, "Raise to "

    move/from16 v21, v15

    const/16 v15, 0xc8

    if-gt v0, v15, :cond_29

    const/4 v15, 0x4

    if-le v4, v15, :cond_28

    goto :goto_12

    :cond_28
    const/16 v33, 0x0

    goto :goto_15

    :cond_29
    const/4 v15, 0x4

    :goto_12
    if-eqz v1, :cond_2a

    if-eqz v17, :cond_2a

    const-string v1, "fg-service"

    move/from16 v18, v15

    const/16 v17, 0xc8

    const/16 v33, 0x10

    goto :goto_14

    :cond_2a
    if-eqz v18, :cond_2b

    const-string v1, "fg-service-short"

    const/16 v17, 0xe2

    move/from16 v18, v15

    goto :goto_13

    .line 2321
    :cond_2b
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "has-overlay-ui"

    const/16 v17, 0xc8

    const/16 v18, 0x6

    goto :goto_13

    :cond_2c
    const/4 v1, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_13
    const/16 v33, 0x0

    :goto_14
    if-eqz v1, :cond_2e

    .line 2330
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2331
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-ne v2, v3, :cond_2d

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    move/from16 v0, v17

    move/from16 v4, v18

    const/16 v20, 0x2

    .line 2344
    :cond_2e
    :goto_15
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v1, 0x32

    if-le v0, v1, :cond_31

    .line 2345
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v17

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v36, v0

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v17, v17, v0

    cmp-long v0, v17, v12

    if-gtz v0, :cond_2f

    .line 2346
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    .line 2347
    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "fg-service-act"

    .line 2349
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v0, 0x32

    goto :goto_16

    :cond_30
    const-string v0, "fg-service-short-act"

    .line 2354
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v0, 0x33

    :goto_16
    if-ne v2, v3, :cond_33

    .line 2357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise to recent fg: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v7, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_31
    move/from16 v36, v0

    :cond_32
    move/from16 v0, v36

    .line 2365
    :cond_33
    :goto_17
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v1, 0x34

    if-le v0, v1, :cond_36

    .line 2367
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v36

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v15, v0

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long v36, v36, v0

    cmp-long v0, v36, v12

    if-gtz v0, :cond_34

    .line 2369
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_37

    :cond_34
    const-string/jumbo v0, "top-ej-act"

    .line 2375
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_35

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise to recent fg for EJ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/16 v0, 0x34

    :cond_36
    move v15, v0

    :cond_37
    const/16 v1, 0x8

    const/16 v0, 0xc8

    if-gt v15, v0, :cond_38

    if-le v4, v1, :cond_3a

    .line 2383
    :cond_38
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 2389
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "force-imp"

    .line 2390
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    if-ne v2, v3, :cond_39

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise to force imp: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    move v4, v1

    const/16 v15, 0xc8

    const/16 v20, 0x2

    .line 2399
    :cond_3a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x190

    if-le v15, v0, :cond_3c

    const/4 v0, 0x0

    .line 2404
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "heavy"

    .line 2405
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3b

    .line 2407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to heavy: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    const/16 v15, 0x190

    const/16 v20, 0x0

    :cond_3c
    const/16 v0, 0xd

    if-le v4, v0, :cond_3e

    const-string v0, "heavy"

    .line 2412
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3d

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to heavy: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const/16 v4, 0xd

    .line 2419
    :cond_3e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x258

    if-le v15, v0, :cond_40

    const/4 v0, 0x0

    .line 2425
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "home"

    .line 2426
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2428
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v15, v0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    if-ne v2, v3, :cond_3f

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to home: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/16 v15, 0x258

    const/16 v20, 0x0

    :cond_40
    const/16 v0, 0xe

    if-le v4, v0, :cond_42

    const-string v0, "home"

    .line 2436
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_41

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to home: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/16 v4, 0xe

    .line 2442
    :cond_42
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v0

    move-object/from16 v36, v11

    const/16 v11, 0xf

    if-eqz v0, :cond_48

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_48

    if-lt v4, v11, :cond_44

    .line 2449
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ne v0, v11, :cond_44

    .line 2450
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v38

    sget-wide v40, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v38, v38, v40

    cmp-long v0, v38, v12

    if-gez v0, :cond_44

    const-string/jumbo v0, "previous-expired"

    .line 2453
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_43

    .line 2456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expire prev adj: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    move v4, v11

    const/4 v0, 0x0

    const/16 v15, 0x384

    goto :goto_18

    :cond_44
    const/16 v0, 0x2bc

    if-le v15, v0, :cond_46

    const/4 v0, 0x0

    .line 2462
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "previous"

    .line 2463
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_45

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to prev: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    const/16 v15, 0x2bc

    const/16 v20, 0x0

    :cond_46
    if-le v4, v11, :cond_48

    const-string/jumbo v0, "previous"

    .line 2470
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_47

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to prev: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    move v4, v11

    :cond_48
    move/from16 v0, v20

    :goto_18
    if-eqz p7, :cond_49

    .line 2487
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2488
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2489
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2491
    :cond_49
    invoke-virtual {v8, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2492
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/4 v1, 0x0

    .line 2494
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 2495
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 2497
    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    if-eqz v1, :cond_4e

    .line 2498
    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v1, :cond_4e

    const/16 v1, 0x12c

    if-le v15, v1, :cond_4c

    const/16 v1, 0x8

    if-le v4, v1, :cond_4a

    move v4, v1

    :cond_4a
    const-string v11, "backup"

    .line 2506
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_4b

    .line 2508
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Raise adj to backup: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    const/4 v11, 0x0

    .line 2510
    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v15, 0x12c

    goto :goto_19

    :cond_4c
    const/16 v1, 0x8

    :goto_19
    const/16 v11, 0x9

    if-le v4, v11, :cond_4f

    const-string v4, "backup"

    .line 2514
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_4d

    .line 2516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raise procstate to backup: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v7, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    const/16 v4, 0x9

    goto :goto_1a

    :cond_4e
    const/16 v1, 0x8

    .line 2526
    :cond_4f
    :goto_1a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v11

    .line 2528
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v18

    const/16 v24, 0x1

    add-int/lit8 v18, v18, -0x1

    move v1, v15

    move/from16 v15, v18

    move/from16 v39, v33

    const/16 v40, 0x0

    move/from16 v33, v11

    :goto_1b
    if-ltz v15, :cond_a3

    if-gtz v1, :cond_50

    if-eqz v0, :cond_50

    const/4 v11, 0x2

    if-le v4, v11, :cond_a3

    .line 2533
    :cond_50
    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    move/from16 v42, v0

    .line 2534
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    .line 2535
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v0, 0xa

    if-le v4, v0, :cond_52

    const-string/jumbo v4, "started-services"

    .line 2538
    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_51

    .line 2540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Raise procstate to started service: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    const/16 v4, 0xa

    .line 2544
    :cond_52
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_53

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_53

    const/16 v0, 0x1f4

    if-le v1, v0, :cond_58

    const-string v0, "cch-started-ui-services"

    .line 2550
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1e

    .line 2553
    :cond_53
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_54

    move v0, v4

    move-object/from16 v43, v5

    iget-wide v4, v11, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v44, v0

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v45, v14

    move/from16 v46, v15

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v4, v14

    cmp-long v0, v12, v4

    if-gez v0, :cond_56

    goto :goto_1c

    :cond_54
    move/from16 v44, v4

    move-object/from16 v43, v5

    move-object/from16 v45, v14

    move/from16 v46, v15

    :goto_1c
    const/16 v0, 0x1f4

    if-le v1, v0, :cond_56

    const-string/jumbo v0, "started-services"

    .line 2560
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_55

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    const/4 v5, 0x0

    .line 2565
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v0, 0x1f4

    const/16 v1, 0x1f4

    goto :goto_1d

    :cond_56
    const/4 v5, 0x0

    const/16 v0, 0x1f4

    :goto_1d
    if-le v1, v0, :cond_57

    const-string v0, "cch-started-services"

    .line 2572
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_57
    move/from16 v4, v44

    goto :goto_1f

    :cond_58
    :goto_1e
    move-object/from16 v43, v5

    move-object/from16 v45, v14

    move/from16 v46, v15

    const/4 v5, 0x0

    .line 2577
    :goto_1f
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_5d

    .line 2578
    iget v0, v11, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2579
    iget-boolean v14, v11, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v14, :cond_5d

    and-int/lit8 v14, v0, 0x8

    if-eqz v14, :cond_59

    const/4 v14, 0x1

    goto :goto_20

    :cond_59
    move v14, v5

    :goto_20
    or-int v14, v39, v14

    const/4 v15, 0x1

    .line 2584
    invoke-virtual {v8, v15}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v27

    if-eqz v27, :cond_5c

    and-int/lit8 v15, v0, 0x40

    if-eqz v15, :cond_5a

    const/4 v15, 0x2

    goto :goto_21

    :cond_5a
    move v15, v5

    :goto_21
    or-int/2addr v14, v15

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5b

    const/4 v0, 0x4

    goto :goto_22

    :cond_5b
    move v0, v5

    :goto_22
    or-int/2addr v0, v14

    goto :goto_23

    :cond_5c
    or-int/lit8 v0, v14, 0x6

    :goto_23
    move/from16 v39, v0

    .line 2600
    :cond_5d
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v14

    .line 2601
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    move/from16 v24, v6

    move v6, v0

    move/from16 v0, v42

    :goto_24
    if-ltz v6, :cond_a2

    if-gtz v1, :cond_5f

    if-eqz v0, :cond_5f

    const/4 v5, 0x2

    if-le v4, v5, :cond_5e

    goto :goto_25

    :cond_5e
    move v15, v3

    move-object v6, v7

    move-object v5, v8

    move/from16 v51, v16

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v3, v36

    move-object/from16 v7, v43

    move-object/from16 v14, v45

    const/16 v28, 0x0

    const/16 v29, 0xa

    move v8, v2

    const/4 v2, 0x0

    goto/16 :goto_48

    .line 2606
    :cond_5f
    :goto_25
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move/from16 v41, v40

    move/from16 v40, v33

    move/from16 v33, v24

    move/from16 v24, v0

    move v0, v4

    move v4, v1

    const/4 v1, 0x0

    .line 2608
    :goto_26
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_a1

    if-gtz v4, :cond_60

    if-eqz v24, :cond_60

    const/4 v15, 0x2

    if-le v0, v15, :cond_a1

    goto :goto_27

    :cond_60
    const/4 v15, 0x2

    .line 2614
    :goto_27
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v15, v30

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    move/from16 v30, v0

    .line 2615
    iget-object v0, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    move/from16 v47, v1

    iget-object v1, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v10, :cond_61

    move v15, v3

    move v1, v4

    move-object/from16 v27, v5

    move/from16 v17, v6

    move-object v6, v7

    move-object v5, v8

    move-object/from16 v32, v14

    move/from16 v51, v16

    move/from16 v0, v30

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v4, v43

    move-object/from16 v14, v45

    move/from16 v16, v47

    const/16 v28, 0x0

    const/16 v29, 0xa

    move v8, v2

    :goto_28
    const/4 v2, 0x0

    goto/16 :goto_47

    :cond_61
    move-object/from16 v48, v1

    .line 2623
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v1, :cond_62

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_62

    move-object v1, v0

    goto :goto_29

    :cond_62
    move-object/from16 v1, v48

    .line 2628
    :goto_29
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz p8, :cond_63

    const/16 v48, 0x1

    move-object/from16 v31, v0

    move/from16 v49, v34

    const/16 v34, 0xa

    move-object/from16 v0, p0

    move-object/from16 v18, v1

    move/from16 v51, v16

    move/from16 v50, v35

    move/from16 v16, v47

    move/from16 v52, v2

    move/from16 v2, p2

    move/from16 v53, v3

    move-object/from16 v3, p3

    move/from16 v20, v4

    const/16 v28, 0x0

    move/from16 v4, p4

    move-object/from16 v27, v5

    move/from16 v17, v6

    move/from16 v29, v34

    move-object/from16 v54, v43

    move-wide/from16 v5, p5

    move-object/from16 v55, v7

    move-object/from16 v32, v14

    move/from16 v14, v26

    move/from16 v7, p7

    move-object/from16 v26, v8

    move/from16 v8, v48

    .line 2630
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v6, v31

    goto :goto_2a

    :cond_63
    move-object/from16 v31, v0

    move-object/from16 v18, v1

    move/from16 v52, v2

    move/from16 v53, v3

    move/from16 v20, v4

    move-object/from16 v27, v5

    move/from16 v17, v6

    move-object/from16 v55, v7

    move-object/from16 v32, v14

    move/from16 v51, v16

    move/from16 v14, v26

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v54, v43

    move/from16 v16, v47

    const/16 v28, 0x0

    const/16 v29, 0xa

    move-object/from16 v26, v8

    .line 2633
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v31

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2634
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2637
    :goto_2a
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 2638
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    const/4 v5, 0x2

    if-ge v8, v5, :cond_64

    const/16 v31, 0x1

    goto :goto_2b

    :cond_64
    const/16 v31, 0x0

    .line 2642
    :goto_2b
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_66

    if-le v8, v14, :cond_66

    const/4 v4, 0x4

    if-ne v8, v4, :cond_65

    .line 2645
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_2c

    :cond_65
    const/4 v0, 0x0

    goto :goto_2d

    :cond_66
    const/4 v4, 0x4

    :goto_2c
    const/4 v0, 0x1

    :goto_2d
    or-int v34, v40, v0

    move-object/from16 v3, v18

    .line 2647
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2649
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_2e

    :cond_67
    const/4 v2, 0x1

    .line 2655
    :goto_2e
    invoke-virtual {v9, v3}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int v0, v33, v0

    const/16 v1, 0x20

    .line 2657
    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/16 v1, 0x1000

    .line 2658
    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2659
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    or-int/2addr v0, v1

    .line 2667
    :cond_68
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    const/16 v14, 0x8

    and-int/2addr v1, v14

    if-eqz v1, :cond_6a

    const/4 v1, 0x5

    if-gt v8, v1, :cond_69

    const/high16 v1, 0x20000

    .line 2671
    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_69
    or-int/lit8 v0, v0, 0x8

    .line 2678
    :cond_6a
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6b

    const/4 v1, 0x6

    if-gt v8, v1, :cond_6b

    move-object/from16 v35, v3

    const-wide v2, 0x100000000L

    .line 2682
    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ConnectionRecord;->hasFlag(J)Z

    move-result v1

    if-eqz v1, :cond_6c

    or-int/lit8 v0, v0, 0x20

    goto :goto_2f

    :cond_6b
    move-object/from16 v35, v3

    :cond_6c
    :goto_2f
    move/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, 0x1

    move-object v2, v6

    move v14, v3

    move-object/from16 v56, v35

    move/from16 v3, v30

    move/from16 v4, v20

    move/from16 v5, p7

    .line 2688
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_6d

    move/from16 v1, v20

    move-object/from16 v5, v26

    move/from16 v0, v30

    move/from16 v40, v34

    move-object/from16 v14, v45

    move/from16 v8, v52

    move/from16 v15, v53

    move-object/from16 v4, v54

    move-object/from16 v6, v55

    goto/16 :goto_28

    :cond_6d
    const/16 v0, 0x10

    if-lt v8, v0, :cond_6e

    const/16 v8, 0x13

    .line 2699
    :cond_6e
    invoke-virtual {v15, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_73

    const/16 v2, 0x384

    if-ge v7, v2, :cond_6f

    .line 2702
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2706
    :cond_6f
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_71

    move/from16 v1, v20

    if-le v1, v7, :cond_70

    const-string v4, "cch-bound-ui-services"

    move-object/from16 v5, v26

    goto :goto_30

    :cond_70
    move-object/from16 v5, v26

    move-object/from16 v4, v28

    :goto_30
    const/4 v3, 0x0

    .line 2714
    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move v7, v1

    move-object/from16 v20, v15

    move/from16 v8, v30

    goto :goto_32

    :cond_71
    move/from16 v1, v20

    move-object/from16 v5, v26

    .line 2718
    iget-wide v3, v11, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v20, v15

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v3, v14

    cmp-long v0, v12, v3

    if-ltz v0, :cond_74

    if-le v1, v7, :cond_72

    const-string v4, "cch-bound-services"

    goto :goto_31

    :cond_72
    move-object/from16 v4, v28

    :goto_31
    move v7, v1

    goto :goto_32

    :cond_73
    move/from16 v1, v20

    move-object/from16 v5, v26

    const/16 v2, 0x384

    move-object/from16 v20, v15

    :cond_74
    move-object/from16 v4, v28

    :goto_32
    if-le v1, v7, :cond_86

    .line 2740
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_75

    const/16 v0, 0xc8

    if-le v7, v0, :cond_75

    if-lt v1, v2, :cond_86

    const-string v4, "cch-bound-ui-services"

    move-object/from16 v3, v20

    goto/16 :goto_39

    :cond_75
    const/16 v0, 0x48

    move-object/from16 v3, v20

    .line 2748
    invoke-virtual {v3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_77

    const/16 v0, -0x2bc

    if-lt v7, v0, :cond_76

    const/4 v14, 0x4

    goto/16 :goto_34

    .line 2757
    :cond_76
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    const/16 v0, -0x2bc

    const/4 v7, 0x1

    const/4 v14, 0x4

    const/16 v15, 0x64

    const/16 v24, 0x2

    const/16 v30, 0x0

    goto/16 :goto_38

    :cond_77
    const/16 v0, 0x100

    .line 2760
    invoke-virtual {v3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_78

    const/16 v0, 0xc8

    if-gt v7, v0, :cond_78

    const/16 v0, 0xfa

    if-lt v1, v0, :cond_79

    const/16 v0, 0xfa

    const/4 v7, 0x0

    const/4 v14, 0x4

    goto :goto_36

    :cond_78
    const/16 v0, 0x64

    :cond_79
    const/high16 v14, 0x10000

    .line 2764
    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_7b

    const/4 v14, 0x4

    .line 2765
    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7c

    const/16 v15, 0xc8

    if-ge v7, v15, :cond_7c

    if-lt v1, v15, :cond_7a

    const/16 v0, 0xc9

    goto :goto_35

    :cond_7a
    const/16 v0, 0xc8

    goto :goto_33

    :cond_7b
    const/4 v14, 0x4

    :cond_7c
    :goto_33
    const/high16 v15, 0x10000

    .line 2771
    invoke-virtual {v3, v15}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 2772
    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7d

    const/16 v15, 0xc8

    if-ge v7, v15, :cond_7d

    const/16 v0, 0xe3

    if-lt v1, v0, :cond_7d

    const/16 v0, 0xe3

    goto :goto_35

    :cond_7d
    const/high16 v15, 0x40000000    # 2.0f

    .line 2779
    invoke-virtual {v3, v15}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7e

    const/16 v15, 0xc8

    if-ge v7, v15, :cond_7f

    move v0, v15

    if-lt v1, v15, :cond_7f

    goto :goto_35

    :cond_7e
    const/16 v15, 0xc8

    :cond_7f
    if-lt v7, v15, :cond_80

    :goto_34
    move v0, v7

    :goto_35
    const/4 v7, 0x0

    :goto_36
    const/16 v15, 0x64

    goto :goto_38

    :cond_80
    const/high16 v15, 0x10000000

    .line 2785
    invoke-virtual {v3, v15}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_81

    const/16 v15, 0x64

    if-gt v7, v15, :cond_82

    if-le v1, v15, :cond_82

    move v0, v15

    goto :goto_37

    :cond_81
    const/16 v15, 0x64

    :cond_82
    if-le v1, v15, :cond_83

    .line 2792
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_37

    :cond_83
    move v0, v1

    :goto_37
    const/4 v7, 0x0

    .line 2797
    :goto_38
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v20

    if-nez v20, :cond_84

    const/4 v15, 0x0

    .line 2798
    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_84
    if-le v1, v0, :cond_85

    .line 2802
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v4, "service"

    move v1, v0

    :cond_85
    move v15, v7

    move/from16 v7, v24

    move/from16 v0, v30

    goto :goto_3a

    :cond_86
    move-object/from16 v3, v20

    const/4 v14, 0x4

    :goto_39
    move/from16 v7, v24

    move/from16 v0, v30

    const/4 v15, 0x0

    :goto_3a
    const v14, 0x800004

    .line 2807
    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_90

    .line 2812
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v14

    if-le v14, v7, :cond_88

    const/16 v7, 0x40

    .line 2814
    invoke-virtual {v3, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v7

    if-eqz v7, :cond_87

    move v7, v14

    goto :goto_3b

    :cond_87
    const/4 v7, 0x2

    :cond_88
    :goto_3b
    const/4 v14, 0x2

    if-ge v8, v14, :cond_8c

    const/high16 v6, 0x10000000

    .line 2825
    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_89

    const/4 v8, 0x4

    goto :goto_3e

    :cond_89
    const/high16 v6, 0x4000000

    .line 2827
    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_8a

    :goto_3c
    const/4 v8, 0x5

    goto :goto_3e

    .line 2829
    :cond_8a
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8b

    const/high16 v6, 0x2000000

    .line 2831
    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_8b

    goto :goto_3c

    :cond_8b
    const/4 v8, 0x6

    goto :goto_3e

    :cond_8c
    if-ne v8, v14, :cond_8f

    const/4 v2, 0x0

    .line 2842
    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v8

    if-eqz v8, :cond_8d

    const/16 v2, 0x1000

    .line 2845
    invoke-virtual {v3, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 2847
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v2

    goto :goto_3d

    .line 2853
    :cond_8d
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v2

    :goto_3d
    or-int v33, v33, v2

    :cond_8e
    const/4 v8, 0x3

    :cond_8f
    :goto_3e
    const/16 v2, 0x8

    goto :goto_3f

    :cond_90
    const/4 v14, 0x2

    const/high16 v2, 0x800000

    .line 2856
    invoke-virtual {v3, v2}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_91

    const/16 v2, 0x8

    if-ge v8, v2, :cond_92

    move v8, v2

    goto :goto_3f

    :cond_91
    const/16 v2, 0x8

    const/4 v6, 0x7

    if-ge v8, v6, :cond_92

    const/4 v6, 0x7

    move v8, v6

    :cond_92
    :goto_3f
    const/4 v6, 0x3

    if-ge v7, v6, :cond_93

    const/high16 v6, 0x80000

    .line 2871
    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_93

    if-eqz v31, :cond_93

    const/4 v7, 0x3

    const/16 v41, 0x1

    :cond_93
    if-nez v15, :cond_94

    .line 2878
    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v3, v8, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_94
    if-le v0, v8, :cond_96

    .line 2883
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-nez v4, :cond_95

    const-string/jumbo v4, "service"

    :cond_95
    move v0, v8

    :cond_96
    const/4 v6, 0x7

    if-ge v0, v6, :cond_97

    const/high16 v6, 0x20000000

    .line 2889
    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x1

    .line 2890
    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_97
    if-eqz v4, :cond_99

    .line 2893
    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    move-object/from16 v6, v56

    .line 2896
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2897
    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2898
    iget-object v8, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v8, v52

    move/from16 v15, v53

    if-ne v8, v15, :cond_98

    .line 2900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v45

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v36

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " adj="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v55

    .line 2900
    invoke-virtual {v9, v6, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_98
    move-object/from16 v14, v45

    goto :goto_40

    :cond_99
    move-object/from16 v14, v45

    move/from16 v8, v52

    move/from16 v15, v53

    :goto_40
    move-object/from16 v6, v55

    :goto_41
    move/from16 v24, v7

    const/16 v2, 0x384

    const/4 v7, 0x1

    goto :goto_43

    :cond_9a
    move-object v3, v15

    move/from16 v1, v20

    move-object/from16 v5, v26

    move-object/from16 v14, v45

    move/from16 v8, v52

    move/from16 v15, v53

    move-object/from16 v6, v55

    const/16 v2, 0x384

    if-ge v7, v2, :cond_9b

    .line 2917
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_42

    :cond_9b
    const/4 v7, 0x1

    :goto_42
    move/from16 v33, v0

    move/from16 v0, v30

    :goto_43
    const/high16 v4, 0x8000000

    .line 2920
    invoke-virtual {v3, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_9c

    move-object/from16 v4, v54

    .line 2921
    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_44

    :cond_9c
    move-object/from16 v4, v54

    .line 2923
    :goto_44
    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    const/16 v2, 0x80

    .line 2924
    invoke-virtual {v3, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_a0

    if-eqz v7, :cond_a0

    if-lez v1, :cond_a0

    .line 2926
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x0

    .line 2928
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v1, 0x4

    .line 2929
    invoke-virtual {v3, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v20

    if-eqz v20, :cond_9e

    const/16 v1, 0x40

    .line 2930
    invoke-virtual {v3, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v24, 0x4

    goto :goto_45

    :cond_9d
    const/16 v24, 0x2

    .line 2936
    :cond_9e
    :goto_45
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "service"

    .line 2937
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 2938
    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2940
    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2941
    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2942
    iget-object v1, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v8, v15, :cond_9f

    .line 2944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise to service w/activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v6, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    move v1, v2

    goto :goto_46

    :cond_a0
    const/4 v2, 0x0

    :goto_46
    move/from16 v40, v34

    :goto_47
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v43, v4

    move-object v7, v6

    move v2, v8

    move-object/from16 v45, v14

    move/from16 v6, v17

    move-object/from16 v14, v32

    move/from16 v34, v49

    move/from16 v35, v50

    move/from16 v16, v51

    const/16 v25, 0x5

    const/16 v26, 0x3

    move v4, v1

    move v1, v3

    move-object v8, v5

    move v3, v15

    move-object/from16 v5, v27

    goto/16 :goto_26

    :cond_a1
    move/from16 v30, v0

    move v15, v3

    move v1, v4

    move/from16 v17, v6

    move-object v6, v7

    move-object v5, v8

    move-object/from16 v32, v14

    move/from16 v51, v16

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v4, v43

    move-object/from16 v14, v45

    const/16 v28, 0x0

    const/16 v29, 0xa

    move v8, v2

    const/4 v2, 0x0

    add-int/lit8 v0, v17, -0x1

    move-object/from16 v43, v4

    move-object v7, v6

    move-object/from16 v45, v14

    move v3, v15

    move/from16 v4, v30

    move-object/from16 v14, v32

    move/from16 v34, v49

    move/from16 v35, v50

    move/from16 v16, v51

    const/4 v15, 0x1

    const/16 v25, 0x5

    const/16 v26, 0x3

    move v6, v0

    move/from16 v0, v24

    move/from16 v24, v33

    move/from16 v33, v40

    move/from16 v40, v41

    move-object/from16 v61, v5

    move v5, v2

    move v2, v8

    move-object/from16 v8, v61

    goto/16 :goto_24

    :cond_a2
    move v15, v3

    move-object v6, v7

    move/from16 v51, v16

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v3, v36

    move-object/from16 v7, v43

    move-object/from16 v14, v45

    const/16 v28, 0x0

    const/16 v29, 0xa

    move-object/from16 v61, v8

    move v8, v2

    move v2, v5

    move-object/from16 v5, v61

    :goto_48
    add-int/lit8 v11, v46, -0x1

    move-object/from16 v36, v3

    move v2, v8

    move v3, v15

    move/from16 v34, v49

    move/from16 v35, v50

    move/from16 v16, v51

    const/16 v25, 0x5

    const/16 v26, 0x3

    move-object v8, v5

    move-object v5, v7

    move v15, v11

    move-object v7, v6

    move/from16 v6, v24

    goto/16 :goto_1b

    :cond_a3
    move/from16 v42, v0

    move v15, v3

    move-object v11, v7

    move/from16 v51, v16

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v3, v36

    const/16 v28, 0x0

    move-object v7, v5

    move-object v5, v8

    move v8, v2

    const/4 v2, 0x0

    .line 2953
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2954
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v52, v8

    move/from16 v8, v16

    move/from16 v2, v33

    :goto_49
    if-ltz v8, :cond_bd

    if-gtz v1, :cond_a4

    if-eqz v42, :cond_a4

    move-object/from16 v36, v3

    const/4 v3, 0x2

    if-le v4, v3, :cond_bd

    goto :goto_4a

    :cond_a4
    move-object/from16 v36, v3

    .line 2959
    :goto_4a
    invoke-virtual {v0, v8}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    move-object/from16 v16, v0

    .line 2960
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v17, v2

    move/from16 v20, v6

    move v6, v0

    move v2, v1

    move/from16 v1, v42

    :goto_4b
    if-ltz v6, :cond_b7

    if-gtz v2, :cond_a5

    if-eqz v1, :cond_a5

    const/4 v0, 0x2

    if-le v4, v0, :cond_b7

    .line 2965
    :cond_a5
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move/from16 v24, v8

    .line 2966
    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2967
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-ne v8, v10, :cond_a6

    move/from16 v58, v1

    move/from16 v26, v2

    move-object/from16 v59, v3

    move/from16 v27, v4

    move-object/from16 v29, v5

    move/from16 v30, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v11

    move-object/from16 v45, v14

    move-object/from16 v60, v36

    move/from16 v11, v52

    goto/16 :goto_4d

    :cond_a6
    if-eqz p8, :cond_a7

    const/4 v13, 0x1

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move/from16 v58, v1

    move-object v1, v8

    move/from16 v26, v2

    const/16 v27, 0x0

    move/from16 v2, p2

    move-object/from16 v59, v3

    move-object/from16 v60, v36

    move-object/from16 v3, p3

    move/from16 v27, v4

    move/from16 v4, p4

    move-object/from16 v29, v5

    move/from16 v30, v6

    move-wide/from16 v5, p5

    move-object/from16 v54, v7

    move/from16 v7, p7

    move-object/from16 v55, v11

    move-object/from16 v45, v14

    move/from16 v11, v52

    move-object v14, v8

    move v8, v13

    .line 2973
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_4c

    :cond_a7
    move-object/from16 v57, v0

    move/from16 v58, v1

    move/from16 v26, v2

    move-object/from16 v59, v3

    move/from16 v27, v4

    move-object/from16 v29, v5

    move/from16 v30, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v11

    move-object/from16 v45, v14

    move-object/from16 v60, v36

    move/from16 v11, v52

    move-object v14, v8

    .line 2975
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2976
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_4c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, v27

    move/from16 v4, v26

    move/from16 v5, p7

    .line 2979
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_a8

    :goto_4d
    move/from16 v2, v26

    move-object/from16 v0, v29

    move-object/from16 v3, v45

    move-object/from16 v5, v55

    move/from16 v1, v58

    move-object/from16 v6, v59

    move-object/from16 v4, v60

    const/4 v7, 0x0

    const/4 v8, 0x4

    goto/16 :goto_55

    .line 2983
    :cond_a8
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    .line 2984
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    .line 2989
    invoke-virtual {v9, v14}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int v20, v20, v1

    const/16 v3, 0x10

    if-lt v6, v3, :cond_a9

    const/16 v6, 0x13

    .line 2996
    :cond_a9
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 2998
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 3001
    :cond_aa
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v1

    if-nez v1, :cond_ac

    const/4 v1, 0x3

    if-le v6, v1, :cond_ac

    const/4 v1, 0x4

    if-ne v6, v1, :cond_ab

    .line 3004
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v1

    if-nez v1, :cond_ab

    goto :goto_4e

    :cond_ab
    const/4 v7, 0x0

    goto :goto_4f

    :cond_ac
    :goto_4e
    const/4 v7, 0x1

    :goto_4f
    or-int v17, v17, v7

    move/from16 v1, v26

    if-le v1, v0, :cond_af

    .line 3008
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v2

    if-nez v2, :cond_ad

    const/16 v5, 0xc8

    if-le v0, v5, :cond_ae

    const-string v0, "cch-ui-provider"

    move-object v4, v0

    move v2, v1

    move-object/from16 v0, v29

    const/4 v7, 0x0

    goto :goto_50

    :cond_ad
    const/16 v5, 0xc8

    :cond_ae
    const/4 v7, 0x0

    .line 3012
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v29

    .line 3013
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v1, "provider"

    move-object v4, v1

    .line 3016
    :goto_50
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    and-int/2addr v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_51

    :cond_af
    move-object/from16 v0, v29

    const/16 v5, 0xc8

    const/4 v7, 0x0

    move v2, v1

    move-object/from16 v4, v28

    :goto_51
    const/4 v8, 0x4

    if-gt v6, v8, :cond_b2

    if-nez v4, :cond_b0

    const-string/jumbo v1, "provider"

    move-object v4, v1

    :cond_b0
    const/4 v1, 0x2

    if-ne v6, v1, :cond_b1

    const/4 v6, 0x3

    goto :goto_52

    :cond_b1
    const/4 v6, 0x5

    .line 3030
    :cond_b2
    :goto_52
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v13, v57

    invoke-virtual {v13, v6, v1}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    move/from16 v13, v27

    if-le v13, v6, :cond_b3

    .line 3033
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move v13, v6

    .line 3035
    :cond_b3
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    move/from16 v12, v58

    if-le v1, v12, :cond_b4

    const/4 v12, 0x2

    :cond_b4
    if-eqz v4, :cond_b6

    .line 3039
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3040
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 3042
    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 3043
    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v6, v59

    .line 3044
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v11, v15, :cond_b5

    .line 3046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v45

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v60

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", due to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " adj="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " procState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    invoke-static {v13}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v55

    .line 3046
    invoke-virtual {v9, v5, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_b5
    move-object/from16 v3, v45

    move-object/from16 v5, v55

    goto :goto_53

    :cond_b6
    move-object/from16 v3, v45

    move-object/from16 v5, v55

    move-object/from16 v6, v59

    :goto_53
    move-object/from16 v4, v60

    :goto_54
    move v1, v12

    move/from16 v27, v13

    :goto_55
    add-int/lit8 v12, v30, -0x1

    move-object v14, v3

    move-object/from16 v36, v4

    move-object v3, v6

    move/from16 v52, v11

    move v6, v12

    move/from16 v8, v24

    move/from16 v4, v27

    move-object/from16 v7, v54

    move-wide/from16 v12, p5

    move-object v11, v5

    move-object v5, v0

    goto/16 :goto_4b

    :cond_b7
    move v12, v1

    move v1, v2

    move-object v6, v3

    move v13, v4

    move-object v0, v5

    move-object/from16 v54, v7

    move/from16 v24, v8

    move-object v5, v11

    move-object v3, v14

    move-object/from16 v4, v36

    move/from16 v11, v52

    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 3056
    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_bb

    if-lez v1, :cond_b9

    .line 3059
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 3061
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v1, "ext-provider"

    .line 3062
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 3063
    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v11, v15, :cond_b8

    .line 3065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise adj to external provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    move v1, v7

    const/4 v12, 0x2

    :cond_b9
    const/4 v14, 0x6

    if-le v13, v14, :cond_bc

    .line 3071
    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-ne v11, v15, :cond_ba

    .line 3073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to external provider: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    move/from16 v42, v12

    move v13, v14

    goto :goto_56

    :cond_bb
    const/4 v14, 0x6

    :cond_bc
    move/from16 v42, v12

    :goto_56
    add-int/lit8 v2, v24, -0x1

    move v8, v2

    move-object v14, v3

    move-object v3, v4

    move/from16 v52, v11

    move v4, v13

    move/from16 v2, v17

    move/from16 v6, v20

    move-object/from16 v7, v54

    move-wide/from16 v12, p5

    move-object v11, v5

    move-object v5, v0

    move-object/from16 v0, v16

    goto/16 :goto_49

    :cond_bd
    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v54, v7

    move-object v5, v11

    move/from16 v11, v52

    const/4 v7, 0x0

    const/4 v14, 0x6

    .line 3080
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v12

    const-wide/16 v23, 0x0

    cmp-long v3, v12, v23

    if-lez v3, :cond_c1

    .line 3081
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v12

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v53, v15

    iget-wide v14, v3, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v12, v14

    cmp-long v3, v12, p5

    if-lez v3, :cond_c1

    const/16 v3, 0x2bc

    if-le v1, v3, :cond_bf

    .line 3085
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "recent-provider"

    .line 3086
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move/from16 v8, v53

    if-ne v11, v8, :cond_be

    .line 3088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to recent provider: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    move v1, v3

    move/from16 v42, v7

    goto :goto_57

    :cond_bf
    move/from16 v8, v53

    :goto_57
    const/16 v3, 0xf

    if-le v4, v3, :cond_c1

    const-string/jumbo v4, "recent-provider"

    .line 3094
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v11, v8, :cond_c0

    .line 3096
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Raise procstate to recent provider: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c0
    move v11, v3

    goto :goto_58

    :cond_c1
    move v11, v4

    :goto_58
    const/16 v3, 0x13

    if-lt v11, v3, :cond_c3

    .line 3103
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v3

    if-eqz v3, :cond_c2

    const-string v3, "cch-client-act"

    .line 3106
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v15, 0x11

    goto :goto_59

    .line 3107
    :cond_c2
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-eqz v3, :cond_c3

    const-string v3, "cch-as-act"

    .line 3111
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v3, 0x1f4

    const/16 v15, 0x10

    goto :goto_5a

    :cond_c3
    move v15, v11

    :goto_59
    const/16 v3, 0x1f4

    :goto_5a
    if-ne v1, v3, :cond_c8

    if-eqz p4, :cond_c7

    if-nez p7, :cond_c7

    .line 3117
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v5, 0x3

    div-int/2addr v4, v5

    if-le v3, v4, :cond_c4

    const/4 v3, 0x1

    goto :goto_5b

    :cond_c4
    move v3, v7

    :goto_5b
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 3118
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 3119
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_c6

    .line 3124
    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_c5

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 3125
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3126
    invoke-virtual {v5}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-ltz v3, :cond_c5

    const/4 v3, 0x1

    .line 3127
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 3128
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_5c

    :cond_c5
    const/4 v3, 0x1

    .line 3131
    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v3

    iput v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_5c

    .line 3135
    :cond_c6
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 3138
    :cond_c7
    :goto_5c
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-eqz v3, :cond_c8

    const/16 v1, 0x320

    .line 3143
    :cond_c8
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    move-object/from16 v3, v54

    .line 3144
    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    .line 3145
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-le v1, v4, :cond_c9

    .line 3146
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v1

    const/16 v4, 0xfa

    if-gt v1, v4, :cond_c9

    const/4 v4, 0x2

    goto :goto_5d

    :cond_c9
    move/from16 v4, v42

    :goto_5d
    const/4 v5, 0x5

    if-lt v15, v5, :cond_ca

    .line 3154
    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3155
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_cb

    if-nez v40, :cond_cb

    if-le v4, v8, :cond_cb

    move v4, v8

    goto :goto_5e

    :cond_ca
    const/4 v8, 0x1

    .line 3163
    :cond_cb
    :goto_5e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_cc

    or-int v6, v6, v39

    .line 3167
    :cond_cc
    invoke-virtual {v9, v10, v15}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v3

    or-int/2addr v3, v6

    const/4 v5, 0x5

    if-le v15, v5, :cond_cd

    and-int/lit8 v3, v3, -0x11

    .line 3181
    :cond_cd
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v5, :cond_ce

    .line 3182
    invoke-virtual {v9, v4, v15, v0}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v5

    if-eqz v5, :cond_ce

    const/4 v4, 0x6

    .line 3221
    :cond_ce
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 3222
    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 3223
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3224
    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 3225
    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move/from16 v1, v21

    .line 3226
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v1, v19

    .line 3227
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 3228
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 3229
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 3233
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v1, :cond_d0

    .line 3234
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v1, :cond_cf

    const/4 v5, 0x6

    goto :goto_5f

    :cond_cf
    const/4 v5, 0x2

    :goto_5f
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3242
    :cond_d0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_PREL:Z

    if-eqz v1, :cond_d1

    .line 3243
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/WindowProcessController;->mIsPrelScheduleGroupOverride:Z

    if-eqz v1, :cond_d1

    const/4 v1, 0x2

    .line 3245
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3250
    :cond_d1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    move/from16 v2, v50

    if-lt v1, v2, :cond_d2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    move/from16 v2, v49

    if-lt v1, v2, :cond_d2

    .line 3251
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    move/from16 v1, v51

    if-eq v0, v1, :cond_d3

    :cond_d2
    move v7, v8

    :cond_d3
    return v7
.end method

.method public dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3999
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3994
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3986
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3985
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

    const-wide v0, 0x10500000031L

    .line 3968
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3969
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000033L

    .line 3970
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000035L

    .line 3972
    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000036L

    .line 3973
    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 926
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-lez v0, :cond_0

    .line 927
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I
    .locals 2

    .line 3303
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-ge p0, v0, :cond_0

    return v1

    .line 3341
    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    and-int/2addr p0, v1

    return p0
.end method

.method public final getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2

    .line 3269
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result p0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3281
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    goto :goto_0

    :cond_2
    const/16 v1, 0x3f

    :cond_3
    :goto_0
    or-int/2addr p0, v1

    return p0
.end method

.method public handleUserSwitchedLocked()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public idleUidsLocked()V
    .locals 15

    .line 3889
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 3890
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v0, :cond_0

    return-void

    .line 3894
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3895
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v5, v3, v5

    .line 3897
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1

    .line 3898
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    if-ltz v0, :cond_5

    .line 3901
    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v11

    .line 3902
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-lez v14, :cond_4

    .line 3903
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v14

    if-nez v14, :cond_4

    cmp-long v14, v12, v5

    if-gtz v14, :cond_2

    .line 3905
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 3906
    iget-object v14, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v14

    .line 3907
    :try_start_0
    invoke-virtual {v11, v1}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 3908
    invoke-virtual {v11, v1}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 3909
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3910
    iget-object v12, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 3909
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2
    cmp-long v11, v9, v7

    if-eqz v11, :cond_3

    cmp-long v11, v9, v12

    if-lez v11, :cond_4

    :cond_3
    move-wide v9, v12

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3918
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_6

    .line 3919
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 3924
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_9

    .line 3925
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 3926
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_9

    .line 3928
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3929
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3928
    invoke-virtual {v6, v11, v3, v4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v11

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v6, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v11, v13

    cmp-long v6, v11, v7

    if-lez v6, :cond_8

    cmp-long v6, v9, v7

    if-eqz v6, :cond_7

    cmp-long v6, v9, v11

    if-lez v6, :cond_8

    :cond_7
    move-wide v9, v11

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    cmp-long v0, v9, v7

    if-lez v0, :cond_a

    .line 3936
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v9, v5

    sub-long/2addr v9, v3

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method public initSettings()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 552
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .locals 0

    .line 474
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 475
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 1

    .line 3877
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    .line 3878
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_0

    .line 3879
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_0
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    .line 3813
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 3814
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3815
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3816
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3817
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    .line 3816
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    .line 3817
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    .line 3822
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3828
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 3831
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    .line 3837
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    .line 3839
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    .line 3840
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/4 v8, 0x4

    if-gt v2, v8, :cond_5

    .line 3841
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_3

    .line 3842
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 3846
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    .line 3847
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    .line 3848
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v10

    add-long/2addr v10, v8

    cmp-long v2, p2, v10

    if-lez v2, :cond_2

    goto :goto_2

    .line 3852
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-gt v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    .line 3853
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_2
    if-eqz v1, :cond_7

    .line 3856
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    .line 3857
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    if-eqz v7, :cond_9

    .line 3859
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3860
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_9

    .line 3861
    :cond_8
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 3862
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 3864
    :goto_4
    array-length p3, p2

    if-ge v4, p3, :cond_9

    .line 3865
    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3870
    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v7, :cond_a

    .line 3872
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_a
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .locals 0

    .line 3396
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(I)V
    .locals 8

    .line 677
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 679
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 680
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v1, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    .line 681
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    .line 723
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 725
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 726
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 727
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 730
    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 731
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v14

    .line 732
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v15

    const/16 v0, 0x384

    const/16 v6, 0x3e9

    if-lt v15, v0, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v6

    .line 736
    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    .line 735
    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    .line 737
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    const/4 v3, 0x0

    .line 738
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 739
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 740
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 741
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 743
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 744
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastOomAdjChangeReason(I)V

    .line 746
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v10, v3

    move-object v3, v9

    move v11, v4

    move v10, v5

    move-wide/from16 v4, v16

    move/from16 v6, p2

    .line 745
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 749
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v14, v1, :cond_1

    const/16 v1, -0x2710

    if-eq v15, v1, :cond_1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 750
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v10, v1, :cond_1

    .line 753
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    .line 752
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v11, v1, :cond_1

    goto/16 :goto_3

    .line 765
    :cond_1
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 766
    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 767
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_1
    if-ltz v0, :cond_2

    .line 771
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 773
    :cond_2
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 775
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    .line 779
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-nez v5, :cond_3

    const/4 v0, 0x0

    .line 783
    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 785
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 788
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 790
    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v9

    .line 792
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_2

    .line 793
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    .line 796
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    invoke-virtual {v8, v3}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    .line 798
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    .line 798
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    .line 801
    :cond_5
    :goto_2
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 802
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v1, 0x40

    .line 803
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :cond_6
    :goto_3
    const-wide/16 v1, 0x40

    .line 754
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 759
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 760
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;JI)Z
    .locals 12

    move-object v9, p0

    move-object v10, p1

    .line 603
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 607
    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 608
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 609
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 614
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 618
    :cond_1
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v5, p4

    .line 621
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 622
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 624
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 626
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v11, :cond_5

    .line 634
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 635
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    .line 636
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 637
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 638
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_5

    .line 639
    :cond_4
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 640
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 641
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    :cond_5
    const/4 v2, 0x0

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    move-result v0

    return v0
.end method

.method public final performUpdateOomAdjPendingTargetsLocked(I)V
    .locals 11

    .line 995
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 997
    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 1001
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1002
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 1003
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1004
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, v0

    .line 1005
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 1006
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1007
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1009
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 1010
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 1006
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    .line 3257
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fg-service-act"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "vis-activity"

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    const-string/jumbo p0, "service"

    .line 3258
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    const-string/jumbo p0, "provider"

    .line 3259
    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 934
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 936
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3386
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3388
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    .line 3389
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3390
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 3392
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAppIdTempAllowlistStateLSP(IZ)V
    .locals 5

    .line 3944
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 3945
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3946
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-eq v4, p2, :cond_0

    .line 3947
    invoke-virtual {v3, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 p1, 0xa

    .line 3952
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    :cond_2
    return-void
.end method

.method public setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 3783
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3786
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3789
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3794
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3795
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz p0, :cond_1

    .line 3796
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto :goto_1

    .line 3798
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    const/16 v2, -0xa

    invoke-static {p0, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x3

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to pre-set top priority to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OomAdjuster"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3806
    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3807
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 1

    .line 3959
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3960
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 3961
    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const/16 p1, 0xa

    .line 3962
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    :cond_0
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .locals 6

    .line 1860
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1864
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

    .line 1866
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    add-long/2addr v0, v4

    cmp-long p0, v0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v3
.end method

.method public final shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .locals 2

    .line 3357
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3361
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 3362
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3365
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result p1

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge p1, p0, :cond_1

    if-eqz p5, :cond_0

    .line 3369
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result p0

    if-lt p0, p3, :cond_1

    .line 3370
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result p0

    if-lt p0, p4, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4

    .line 4044
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4048
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4049
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4053
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 4054
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 4055
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4056
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 4057
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 4059
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 4061
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4062
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4064
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;I)Z
    .locals 38

    move-object/from16 v8, p0

    move-wide/from16 v9, p5

    .line 1413
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v11

    .line 1414
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1416
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v12

    const-string v13, "OomAdjuster"

    if-nez v12, :cond_0

    .line 1418
    iget-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    const-string v1, "Not killing cached processes"

    .line 1419
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1388

    add-long v1, p1, v1

    .line 1420
    iput-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_0
    const v1, 0x7fffffff

    if-eqz v12, :cond_1

    .line 1424
    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v14, v2

    goto :goto_0

    :cond_1
    move v14, v1

    :goto_0
    if-eqz v12, :cond_2

    .line 1426
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v1, v14

    :cond_2
    move v15, v1

    .line 1435
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_3

    .line 1436
    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    .line 1437
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    .line 1438
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initDhaProcessesLocked()V

    .line 1441
    :cond_3
    sget-boolean v16, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    .line 1442
    sget v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    float-to-double v5, v1

    if-eqz v16, :cond_4

    .line 1443
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->getFreeSwapPercent()D

    move-result-wide v1

    goto :goto_1

    :cond_4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_1
    move-wide v3, v1

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    const/16 v17, 0x0

    const/4 v1, 0x0

    move-object/from16 v19, v1

    move/from16 p7, v17

    move/from16 v1, p7

    move/from16 v18, v1

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    :goto_2
    if-ltz v0, :cond_27

    .line 1447
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v11

    .line 1448
    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1449
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v26

    if-nez v26, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v26

    if-eqz v26, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v26

    if-nez v26, :cond_25

    .line 1451
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1452
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v0

    const-string v0, "Excessive Resource Usage detectd task: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move/from16 v27, v0

    .line 1459
    :goto_3
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v7, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v7, :cond_6

    const/4 v7, 0x1

    move/from16 v31, v27

    move-object/from16 v0, p0

    move/from16 v32, v12

    move v12, v1

    move-object v1, v2

    move-object/from16 v33, v13

    const/4 v9, 0x2

    const/16 v10, 0xd

    move/from16 v13, p7

    move/from16 p7, v14

    move-object v14, v2

    move v2, v7

    move-wide/from16 v34, v3

    move-wide/from16 v3, p1

    move-wide/from16 v36, v5

    move-wide/from16 v5, p3

    const/4 v10, 0x1

    move/from16 v7, p8

    .line 1460
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    goto :goto_4

    :cond_6
    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    move/from16 v32, v12

    move-object/from16 v33, v13

    move/from16 v31, v27

    const/4 v9, 0x2

    const/4 v10, 0x1

    move/from16 v13, p7

    move v12, v1

    move/from16 p7, v14

    move-object v14, v2

    .line 1463
    :goto_4
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1467
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/16 v2, 0x13

    const/16 v3, 0x11

    const/16 v4, 0x10

    if-eqz v1, :cond_10

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    if-lez v1, :cond_10

    .line 1469
    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v5, v10, :cond_7

    .line 1470
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V

    :goto_5
    move-wide/from16 v2, p5

    move/from16 v7, v22

    move/from16 v6, v23

    goto/16 :goto_a

    .line 1473
    :cond_7
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v5

    if-nez v5, :cond_8

    .line 1474
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    .line 1479
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_a

    if-eq v5, v2, :cond_b

    .line 1488
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_6

    :cond_9
    if-ne v1, v10, :cond_a

    add-int/lit8 v20, v20, 0x1

    .line 1483
    :cond_a
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    :cond_b
    :goto_6
    if-ne v1, v9, :cond_f

    .line 1492
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14, v13, v15}, Lcom/android/server/am/DynamicHiddenApp;->destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v1, v13, 0x1

    .line 1494
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1496
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v5, v22

    if-ne v5, v4, :cond_c

    move/from16 v6, v23

    if-ne v6, v2, :cond_c

    add-int/lit8 v21, v21, 0x1

    move/from16 v22, v5

    move/from16 v23, v6

    goto :goto_7

    .line 1503
    :cond_c
    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v2

    move/from16 v22, v4

    goto :goto_7

    :cond_d
    move/from16 v22, v17

    move/from16 v23, v22

    :goto_7
    move-wide/from16 v2, p5

    move/from16 v4, p7

    move v13, v1

    goto/16 :goto_b

    :cond_e
    move/from16 v5, v22

    move/from16 v6, v23

    .line 1510
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v14, v12, v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->killTimeOverEmptyProcess(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_8

    :cond_f
    move-wide/from16 v2, p5

    move/from16 v5, v22

    move/from16 v6, v23

    :goto_8
    move/from16 v4, p7

    move/from16 v22, v5

    move/from16 v23, v6

    goto/16 :goto_b

    :cond_10
    move v1, v2

    move/from16 v5, v22

    move/from16 v6, v23

    move-wide/from16 v2, p5

    .line 1516
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    const-string v9, "bg_restriction"

    if-eq v7, v4, :cond_19

    const/16 v4, 0x11

    if-eq v7, v4, :cond_19

    if-eq v7, v1, :cond_12

    .line 1611
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v7, v13, v20

    sub-int v7, v7, v21

    .line 1612
    invoke-virtual {v1, v14, v7}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1613
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/16 v7, 0xc8

    if-lt v1, v7, :cond_11

    .line 1614
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    if-lt v1, v7, :cond_11

    const/4 v1, 0x2

    const/16 v7, 0xd

    .line 1615
    invoke-virtual {v14, v9, v7, v1, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1620
    :cond_11
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    :goto_9
    move v7, v5

    goto :goto_a

    .line 1568
    :cond_12
    iget-boolean v1, v14, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v1, :cond_13

    goto :goto_9

    .line 1573
    :cond_13
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v12, v1, :cond_14

    .line 1574
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v22

    cmp-long v1, v22, v2

    if-gez v1, :cond_14

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v22

    sub-long v22, p1, v22

    const-wide/16 v25, 0x3e8

    move v7, v5

    div-long v4, v22, v25

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, "empty for too long"

    const/16 v28, 0xd

    const/16 v29, 0x4

    const/16 v30, 0x1

    move-object/from16 v25, v14

    .line 1575
    invoke-virtual/range {v25 .. v30}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :goto_a
    move/from16 v4, p7

    move/from16 v23, v6

    move/from16 v22, v7

    :goto_b
    move v1, v12

    goto/16 :goto_10

    :cond_14
    move v7, v5

    add-int/lit8 v1, v12, 0x1

    move/from16 v4, p7

    if-le v1, v4, :cond_16

    .line 1585
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v5, v14}, Lcom/android/server/am/DynamicHiddenApp;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_c

    .line 1592
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "empty #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "too many empty"

    const/16 v28, 0xd

    const/16 v29, 0x3

    const/16 v30, 0x1

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v30}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_c

    :cond_16
    if-eqz v16, :cond_18

    .line 1599
    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v5, v14}, Lcom/android/server/am/DynamicHiddenApp;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_c

    :cond_17
    move/from16 v23, v6

    move/from16 v22, v7

    goto/16 :goto_e

    :cond_18
    :goto_c
    move/from16 v23, v6

    move/from16 v22, v7

    goto/16 :goto_10

    :cond_19
    move/from16 v4, p7

    move v7, v5

    .line 1519
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v1, v13, 0x1

    .line 1521
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 1523
    iget-object v13, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v13, :cond_1a

    if-ne v6, v5, :cond_1a

    add-int/lit8 v21, v21, 0x1

    move v5, v6

    move/from16 v22, v7

    goto :goto_d

    .line 1530
    :cond_1a
    iget-object v6, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v6

    goto :goto_d

    :cond_1b
    move/from16 v5, v17

    move/from16 v22, v5

    :goto_d
    sub-int v6, v1, v21

    if-le v6, v15, :cond_1e

    .line 1539
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1c

    goto :goto_f

    .line 1542
    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1543
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "GATE"

    const-string v7, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    .line 1544
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cached #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "too many cached"

    const/16 v28, 0xd

    const/16 v29, 0x2

    const/16 v30, 0x1

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v30}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_f

    :cond_1e
    if-eqz v16, :cond_20

    .line 1555
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1f

    goto :goto_f

    :cond_1f
    move v13, v1

    move/from16 v23, v5

    move v1, v12

    :goto_e
    move-object/from16 v19, v14

    goto :goto_10

    .line 1558
    :cond_20
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v7, v1, v20

    sub-int v7, v7, v21

    .line 1559
    invoke-virtual {v6, v14, v7}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x2

    const/16 v7, 0xd

    .line 1560
    invoke-virtual {v14, v9, v7, v6, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_21
    :goto_f
    move v13, v1

    move/from16 v23, v5

    goto/16 :goto_b

    .line 1626
    :goto_10
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1627
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_11

    .line 1631
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERU task kill: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v9, v33

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Excessive resource usage"

    const/16 v6, 0x9

    .line 1632
    invoke-virtual {v14, v5, v6, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    goto :goto_12

    :cond_22
    :goto_11
    move-object/from16 v9, v33

    .line 1640
    :goto_12
    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v5, :cond_23

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v5

    if-gtz v5, :cond_23

    .line 1641
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_23

    const-string/jumbo v0, "isolated not needed"

    const/16 v5, 0x11

    const/16 v6, 0xd

    .line 1649
    invoke-virtual {v14, v0, v6, v5, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_13

    .line 1651
    :cond_23
    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v5, :cond_24

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_24

    .line 1652
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "sandbox not needed"

    const/16 v5, 0x1c

    const/16 v6, 0xd

    .line 1656
    invoke-virtual {v14, v0, v6, v5, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_13

    .line 1660
    :cond_24
    invoke-virtual {v8, v14}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1663
    :goto_13
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/16 v5, 0xe

    if-lt v0, v5, :cond_26

    .line 1664
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_26

    add-int/lit8 v18, v18, 0x1

    goto :goto_14

    :cond_25
    move/from16 v31, v0

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    move-wide v2, v9

    move/from16 v32, v12

    move-object v9, v13

    move v4, v14

    move/from16 v6, v23

    move/from16 v13, p7

    move v12, v1

    move v10, v7

    move/from16 v7, v22

    move/from16 v23, v6

    move/from16 v22, v7

    move v1, v12

    :cond_26
    :goto_14
    add-int/lit8 v0, v31, -0x1

    move v14, v4

    move v7, v10

    move/from16 p7, v13

    move-object/from16 v11, v24

    move/from16 v12, v32

    move-wide/from16 v5, v36

    move-object v13, v9

    move-wide v9, v2

    move-wide/from16 v3, v34

    goto/16 :goto_2

    :cond_27
    move/from16 v13, p7

    move-wide/from16 v34, v3

    move-wide/from16 v36, v5

    move v10, v7

    move/from16 v32, v12

    move v12, v1

    if-eqz v16, :cond_28

    if-eqz v32, :cond_28

    move-wide/from16 v1, v34

    cmpg-double v0, v1, v36

    if-gez v0, :cond_29

    move-object/from16 v0, v19

    if-eqz v0, :cond_29

    .line 1670
    iget-wide v3, v8, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v3, v1, v3

    if-gez v3, :cond_29

    const-string/jumbo v3, "swap low and too many cached"

    const/4 v4, 0x2

    const/16 v5, 0xd

    .line 1676
    invoke-virtual {v0, v3, v5, v4, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_15

    :cond_28
    move-wide/from16 v1, v34

    .line 1683
    :cond_29
    :goto_15
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->getOverrideMaxCachedProcesses()I

    move-result v0

    if-gez v0, :cond_2a

    .line 1684
    iput v13, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    .line 1685
    iput v12, v8, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    .line 1686
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getCachedMax()I

    move-result v0

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    .line 1687
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getEmptyMax()I

    move-result v0

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    .line 1691
    :cond_2a
    iput-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    .line 1693
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-object/from16 p3, v0

    move/from16 p4, v13

    move/from16 p5, v12

    move/from16 p6, v18

    move-wide/from16 p7, p1

    invoke-virtual/range {p3 .. p8}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(IIIJ)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4

    .line 4004
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4008
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4012
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 4014
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4015
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4016
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p2

    .line 4015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    return-void

    .line 4020
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4024
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x33e

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4025
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4026
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 4027
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 4028
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 4029
    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p2

    .line 4028
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1698
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1699
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1700
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1704
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    .line 1711
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1713
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1714
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1715
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1716
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1718
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1719
    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1721
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result p1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    :cond_2
    return-void
.end method

.method public final updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 578
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 580
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 582
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-void

    .line 590
    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 591
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_3

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .locals 25

    move-object/from16 v0, p0

    const-wide/16 v10, 0x40

    if-eqz p6, :cond_0

    .line 1023
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1024
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 1026
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1028
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v16, v12, v1

    const/16 v18, 0x1

    const/4 v9, 0x0

    if-nez p3, :cond_1

    move/from16 v19, v18

    goto :goto_0

    :cond_1
    move/from16 v19, v9

    :goto_0
    if-eqz v19, :cond_2

    .line 1031
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p3

    .line 1033
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez p4, :cond_4

    .line 1036
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    .line 1037
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 1038
    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move v3, v9

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1040
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 1041
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object/from16 v7, p4

    .line 1046
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_5

    .line 1047
    invoke-virtual {v7, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 1051
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1054
    :cond_5
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v19, :cond_6

    .line 1056
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 1057
    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    :cond_6
    if-nez v19, :cond_8

    if-eqz p5, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v20, v9

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v20, v18

    :goto_6
    add-int/lit8 v1, v6, -0x1

    move v2, v1

    :goto_7
    if-ltz v2, :cond_a

    .line 1065
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1066
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1067
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 1069
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v5, :cond_9

    .line 1070
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v4, 0x13

    .line 1071
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v4, 0x3e9

    .line 1072
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1073
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 1074
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 1075
    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1078
    :cond_a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    move v5, v1

    move/from16 v21, v9

    :goto_8
    if-ltz v5, :cond_c

    .line 1080
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1081
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1082
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1083
    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 1084
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastOomAdjChangeReason(I)V

    const/16 v22, 0x3e9

    const/16 v23, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v22

    move-object/from16 p3, v4

    move-object/from16 v4, p2

    move/from16 v22, v5

    move/from16 v5, v19

    move v10, v6

    move-object v11, v7

    move-wide v6, v12

    move-object/from16 v24, v8

    move/from16 v8, v23

    move-object/from16 p4, v11

    move v11, v9

    move/from16 v9, v20

    .line 1085
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 1088
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v21, v1

    .line 1090
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v21, v1

    goto :goto_9

    :cond_b
    move/from16 v22, v5

    move v10, v6

    move-object/from16 p4, v7

    move-object/from16 v24, v8

    move v11, v9

    :goto_9
    add-int/lit8 v5, v22, -0x1

    move-object/from16 v7, p4

    move v6, v10

    move v9, v11

    move-object/from16 v8, v24

    const-wide/16 v10, 0x40

    goto :goto_8

    :cond_c
    move v10, v6

    move-object/from16 p4, v7

    move-object/from16 v24, v8

    move v11, v9

    .line 1094
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1095
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1096
    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

    .line 1095
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    :cond_d
    if-eqz v20, :cond_13

    move v9, v11

    :goto_a
    if-eqz v21, :cond_13

    const/16 v1, 0xa

    if-ge v9, v1, :cond_13

    add-int/lit8 v19, v9, 0x1

    move v9, v11

    :goto_b
    if-ge v9, v10, :cond_f

    move-object/from16 v8, v24

    .line 1110
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1111
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1112
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1113
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 1114
    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v24, v8

    goto :goto_b

    :cond_f
    move-object/from16 v8, v24

    move v9, v11

    move/from16 v21, v9

    :goto_c
    if-ge v9, v10, :cond_12

    .line 1119
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1120
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1121
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v3, 0x3e9

    const/4 v5, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-wide v6, v12

    move-object/from16 v23, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v22

    .line 1122
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_11

    move/from16 v21, v18

    goto :goto_d

    :cond_10
    move-object/from16 v23, v8

    move/from16 v20, v9

    :cond_11
    :goto_d
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v8, v23

    goto :goto_c

    :cond_12
    move-object/from16 v24, v8

    move/from16 v9, v19

    goto :goto_a

    .line 1130
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1132
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 1134
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 1135
    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object/from16 v8, p4

    move/from16 v9, p1

    .line 1137
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;I)Z

    move-result v1

    .line 1139
    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 1141
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_14

    .line 1144
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_14
    if-eqz v1, :cond_15

    .line 1148
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 1149
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v1

    .line 1148
    invoke-virtual {v2, v12, v13, v11, v1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    :cond_15
    move-object/from16 v2, p4

    .line 1152
    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 1154
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1156
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1157
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1162
    :cond_16
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 1163
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_17

    .line 1175
    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    .line 1176
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    .line 1163
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 666
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 667
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 670
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 672
    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 701
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 712
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 717
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return p1

    :catchall_0
    move-exception p1

    .line 716
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 717
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 718
    throw p1

    .line 702
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    return v0
.end method

.method public updateOomAdjLocked(I)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    .line 656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 695
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    .line 696
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    .line 968
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 969
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 970
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 978
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 984
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 985
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 988
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 990
    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 10

    .line 1730
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1736
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    .line 1737
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1739
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_19

    .line 1740
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1741
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_18

    .line 1742
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 1743
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 1744
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-ne v4, v6, :cond_1

    .line 1745
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1759
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 1760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changes in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1763
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, ""

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ActivityManager"

    .line 1760
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    .line 1768
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1771
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1772
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1773
    :cond_4
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1774
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v7, 0x3a

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 1775
    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1780
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1784
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1786
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    if-eq v4, v5, :cond_7

    .line 1788
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v4, 0x2

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_3

    .line 1792
    :cond_9
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1794
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1795
    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    const/4 v4, 0x4

    goto :goto_2

    :cond_a
    move v4, v6

    :goto_2
    const-wide/16 v7, 0x0

    .line 1797
    invoke-virtual {v3, v7, v8}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1799
    :goto_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    const/16 v8, 0xb

    if-le v7, v8, :cond_b

    move v7, v2

    goto :goto_4

    :cond_b
    move v7, v6

    .line 1801
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_c

    move v6, v2

    :cond_c
    if-ne v7, v6, :cond_d

    .line 1804
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    if-ne v7, v5, :cond_f

    :cond_d
    if-eqz v6, :cond_e

    const/16 v5, 0x8

    goto :goto_5

    :cond_e
    const/16 v5, 0x10

    :goto_5
    or-int/2addr v4, v5

    .line 1808
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v5, v6, :cond_10

    or-int/lit8 v4, v4, 0x20

    .line 1811
    :cond_10
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/high16 v7, -0x80000000

    if-eq v5, v6, :cond_11

    or-int/2addr v4, v7

    .line 1814
    :cond_11
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v5

    if-eqz v5, :cond_12

    or-int/lit8 v4, v4, 0x40

    .line 1817
    :cond_12
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1818
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1819
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1820
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1821
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    and-int v5, v4, v7

    if-nez v5, :cond_13

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_14

    .line 1824
    :cond_13
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1825
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    .line 1824
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_14
    if-eqz v4, :cond_15

    .line 1828
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_15
    if-nez v5, :cond_16

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_17

    .line 1832
    :cond_16
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    .line 1833
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    .line 1832
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1835
    :cond_17
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1836
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1840
    :cond_18
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v4, v3, p2, p3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1842
    :cond_19
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_1a

    .line 1843
    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1846
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    sub-int/2addr p1, v2

    :goto_6
    if-ltz p1, :cond_1b

    .line 1851
    iget-object p2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/UidRecord;

    invoke-virtual {p3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_1b
    return-void
.end method
