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

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$new$1(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Sb4rINql5SnWMbsmxIWTlE2vhe0(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbcpruvRTpdtq55GSm9MjprdC4o(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WwoeZTnUBMxV-JLJr5QQfTatx6U(Lcom/android/server/ServiceThread;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OomAdjuster;->lambda$createAdjusterThread$0(Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIoiUDh1TJ_GTQNFsTlrn_SfGPI(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCFMS:Landroid/os/ICustomFrequencyManager;

    const/4 v1, 0x3

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const-string v0, "com.android.vending"

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, p0, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    new-instance v0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-class p3, Landroid/os/PowerManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManagerInternal;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object p3, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    new-instance p3, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {p3, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    new-instance p3, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {p3, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p3, p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/am/ActiveUids;

    invoke-direct {p3, p1, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    new-instance p3, Ljava/util/ArrayDeque;

    iget-object p4, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget p4, p4, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/2addr p4, v2

    invoke-direct {p3, p4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    const/16 p3, 0xa

    iput p3, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/am/DynamicHiddenApp;->initDynamicHiddenApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActivityManagerConstants;)V

    return-void
.end method

.method public static createAdjusterThread()Lcom/android/server/ServiceThread;
    .locals 4

    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, -0xa

    const/4 v2, 0x0

    const-string v3, "OomAdjuster"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ServiceThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public static getFreeSwapPercent()D
    .locals 2

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method private synthetic lambda$applyOomAdjLSP$2(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/os/Message;)Z
    .locals 7

    iget v0, p0, Landroid/os/Message;->arg1:I

    iget v1, p0, Landroid/os/Message;->arg2:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

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

    :cond_1
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_0
    return v3
.end method

.method public static final oomAdjReasonToString(I)Ljava/lang/String;
    .locals 0

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

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    :cond_0
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/CachedAppOptimizer;->onOomAdjustChanged(IILcom/android/server/am/ProcessRecord;)V

    :cond_1
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v3, v2}, Lcom/android/server/am/DynamicHiddenApp;->setCustomADJAndGetProcState(Lcom/android/server/am/ProcessRecord;)I

    move-result v10

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v6

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v7

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v16

    move v13, v10

    move/from16 v10, v16

    move-wide/from16 v11, p3

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/chimera/PerProcessNandswap;->onOomAdjChanged(ILjava/lang/String;IIIIZJ)V

    goto :goto_0

    :cond_2
    move v13, v10

    :goto_0
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v17

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v19

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v21

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v22

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/chimera/GPUMemoryReclaimer;->onOomAdjChanged(ILjava/lang/String;IIZZ)V

    :cond_3
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v4

    if-eq v3, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-static {v3, v4, v5, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_4

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

    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    :cond_5
    const/16 v0, -0x2710

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    goto :goto_1

    :cond_6
    const/16 v0, 0xb4

    if-lt v13, v0, :cond_7

    const/16 v0, 0xc8

    if-ge v13, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    invoke-static {v0, v3, v4, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(IIII)V

    :cond_7
    :goto_1
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_8

    iput-boolean v9, v2, Lcom/android/server/am/ProcessRecord;->mInfant:Z

    :cond_8
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    const/16 v10, 0xa

    const/4 v11, 0x1

    if-eq v3, v0, :cond_14

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v3

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v5, :cond_9

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

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-virtual {v1, v5, v4}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mClearedWaitingToKill:Z

    if-nez v4, :cond_a

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->mKeepSEMPrcp:Z

    if-nez v4, :cond_a

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

    :cond_f
    :goto_2
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v9, v7, v5, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v4

    if-ne v0, v6, :cond_11

    if-eq v3, v6, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    if-eqz v4, :cond_14

    invoke-static {v4, v11}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto/16 :goto_4

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/16 v3, -0xa

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_14

    :try_start_1
    invoke-static {v4, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :cond_11
    if-ne v3, v6, :cond_14

    if-eq v0, v6, :cond_14

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_12

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v9, v9}, Landroid/os/Process;->setThreadScheduler(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V

    if-eqz v4, :cond_13

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

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0, v9}, Landroid/os/Process;->setThreadPriority(II)V

    :cond_13
    :goto_3
    if-eqz v4, :cond_14

    const/4 v0, -0x4

    invoke-static {v4, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_14
    :goto_4
    move v0, v11

    :goto_5
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v4

    if-eq v3, v4, :cond_15

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    move/from16 v3, p7

    move v12, v11

    goto :goto_6

    :cond_15
    move/from16 v3, p7

    move v12, v9

    :goto_6
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_16

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_16

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_16
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_18

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

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

    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    move v8, v11

    :goto_8
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v3, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_6
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v16, v6

    move-wide/from16 v6, p3

    :try_start_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    if-eq v3, v4, :cond_1f

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proc state change of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v1, v4, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    if-ge v3, v10, :cond_1a

    move v3, v11

    goto :goto_9

    :cond_1a
    move v3, v9

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

    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1c
    move-wide/from16 v7, p5

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    invoke-virtual {v1, v15, v13, v14}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1d

    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    :cond_1d
    if-nez p2, :cond_1e

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v3, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    monitor-exit v3

    goto :goto_d

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_1e
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    goto :goto_d

    :cond_1f
    move-wide/from16 v7, p5

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_21

    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_b

    :cond_20
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_b
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v7, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_23

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    goto :goto_d

    :cond_21
    invoke-virtual {v15, v4}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_c

    :cond_22
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_c
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v7, v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_23

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    :cond_23
    :goto_d
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v4

    if-eq v3, v4, :cond_24

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    :cond_24
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v3

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v4

    if-eq v3, v4, :cond_25

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    if-nez v3, :cond_25

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    if-eqz v12, :cond_26

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v6

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v9

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

    :goto_e
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_27
    invoke-virtual {v15, v10, v11}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v3, 0x3a

    if-nez v2, :cond_28

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v1, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_29
    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v1

    invoke-virtual {v15, v1}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    return v0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

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

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v4, v3, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const/16 v5, 0x3e9

    const/16 v6, 0x38e

    const/16 v7, 0x384

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-int/2addr v2, v8

    :goto_0
    if-ltz v2, :cond_1e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v11

    if-lt v11, v5, :cond_2

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v10

    if-lt v10, v7, :cond_1

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

    :goto_1
    invoke-virtual {v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v10}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget v4, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v3, v3, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v3, v4

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

    div-int/2addr v3, v4

    if-ge v3, v8, :cond_7

    move v3, v8

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

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

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

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    move/from16 v19, v3

    move/from16 v20, v4

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v2, :cond_18

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v14, v4, :cond_13

    if-ne v15, v2, :cond_13

    if-le v3, v8, :cond_12

    if-ge v11, v7, :cond_11

    const/16 v2, 0x3e7

    if-ge v11, v2, :cond_11

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    move/from16 v19, v3

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v3

    move/from16 v20, v4

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

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_10

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_10

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

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_10

    sget-boolean v3, Lcom/android/server/am/DynamicHiddenApp;->BORA_POLICY_ENABLE:Z

    if-eqz v3, :cond_10

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

    :cond_1b
    :goto_e
    invoke-virtual {v5, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

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

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    :goto_0
    return v0
.end method

.method public final collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_0

    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActiveUids;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_15

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    move-object/from16 v9, p3

    invoke-virtual {v9, v8, v7}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    goto :goto_2

    :cond_1
    move-object/from16 v9, p3

    :goto_2
    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3
    const/16 v10, -0x384

    if-ltz v8, :cond_7

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_2

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

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_3

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v10

    if-gez v10, :cond_3

    goto :goto_5

    :cond_3
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v5, v10

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    const/16 v10, 0x20

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const v10, 0x8000080

    invoke-virtual {v11, v10}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_7
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v11

    sub-int/2addr v11, v6

    :goto_6
    if-ltz v11, :cond_b

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v12, v12, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_a

    if-eq v12, v3, :cond_a

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-lt v13, v10, :cond_8

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v13

    if-gez v13, :cond_8

    goto :goto_7

    :cond_8
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_b
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v11, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessList;->getSdkSandboxProcessesForAppLocked(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    sub-int/2addr v11, v6

    :goto_9
    if-ltz v11, :cond_e

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    or-int/2addr v5, v13

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v2, v12}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    :goto_a
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    :cond_e
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v8, :cond_14

    invoke-virtual {v7}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_b
    if-ltz v8, :cond_14

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    sub-int/2addr v12, v6

    :goto_c
    if-ltz v12, :cond_13

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    :goto_d
    if-ltz v14, :cond_12

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    iget-object v15, v15, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v15, v15, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v15, :cond_11

    if-eq v15, v3, :cond_11

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-lt v4, v10, :cond_f

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-gez v4, :cond_f

    goto :goto_e

    :cond_f
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

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

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_1

    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    sub-int/2addr v0, v6

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_16

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_0

    return v5

    :cond_0
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v6, 0x13

    if-nez v0, :cond_2

    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/16 v0, 0x3e7

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    return v5

    :cond_2
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-nez p7, :cond_4

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

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

    :cond_4
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v15

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v16

    const-string v7, "ActivityManager"

    const/4 v5, 0x2

    if-gtz v16, :cond_f

    if-ne v2, v3, :cond_5

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

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget v2, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const/16 v3, 0x3f

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    if-ne v10, v11, :cond_6

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const/4 v3, 0x3

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    const-string/jumbo v3, "pers-top-activity"

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    const-string/jumbo v3, "pers-top-ui"

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    :cond_8
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {v8, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_b
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v2, :cond_c

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

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

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    iget-object v4, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v4

    if-eqz p7, :cond_10

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

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->useTopSchedGroupForTopProcess()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "top-activity"

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move/from16 v5, v26

    goto :goto_7

    :cond_11
    const-string v5, "intermediate-top-activity"

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v5, 0x2

    :goto_7
    move/from16 v34, v0

    if-ne v2, v3, :cond_12

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

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "running-remote-anim"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_14

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

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v0, "instrumentation"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    or-int/lit8 v6, v6, 0x10

    if-ne v2, v3, :cond_16

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

    :cond_17
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast([I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpSchedGroup:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "broadcast"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_18

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

    :cond_19
    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {v14}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    :goto_a
    const-string v1, "exec-service"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1b

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_1d

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

    :cond_1e
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasKeepAliveActivities(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "force-keep-alive"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :goto_d
    move/from16 v19, v4

    const/16 v16, 0x64

    const/16 v17, 0x0

    goto :goto_b

    :cond_1f
    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v0, :cond_21

    const-string v0, "dedicated"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_d

    :cond_20
    const/16 v16, 0x64

    goto :goto_e

    :cond_21
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    const-string v0, "cch-empty"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    :cond_22
    if-ne v2, v3, :cond_23

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

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    move-object v5, v14

    move-object v14, v8

    move v1, v15

    move-object v15, v0

    move/from16 v21, v3

    move/from16 v22, v2

    move/from16 v23, v4

    invoke-virtual/range {v14 .. v23}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v16

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v17

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v18

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v19

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

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "cch-rec"

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_25

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

    :cond_26
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v17

    if-eqz v1, :cond_27

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

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    if-ne v2, v3, :cond_2d

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

    :cond_2e
    :goto_15
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v1, 0x32

    if-le v0, v1, :cond_31

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v17

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v36, v0

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v17, v17, v0

    cmp-long v0, v17, v12

    if-gtz v0, :cond_2f

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_32

    :cond_2f
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasNonShortForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "fg-service-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v0, 0x32

    goto :goto_16

    :cond_30
    const-string v0, "fg-service-short-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v0, 0x33

    :goto_16
    if-ne v2, v3, :cond_33

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

    :cond_33
    :goto_17
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v1, 0x34

    if-le v0, v1, :cond_36

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v36

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v15, v0

    iget-wide v0, v1, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long v36, v36, v0

    cmp-long v0, v36, v12

    if-gtz v0, :cond_34

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_37

    :cond_34
    const-string/jumbo v0, "top-ej-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_35

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

    :cond_38
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "force-imp"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    if-ne v2, v3, :cond_39

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

    :cond_3a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x190

    if-le v15, v0, :cond_3c

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "heavy"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3b

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_3d

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

    :cond_3e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x258

    if-le v15, v0, :cond_40

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v0, "home"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v15, v0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    if-ne v2, v3, :cond_3f

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_41

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

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ne v0, v11, :cond_44

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v38

    sget-wide v40, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    add-long v38, v38, v40

    cmp-long v0, v38, v12

    if-gez v0, :cond_44

    const-string/jumbo v0, "previous-expired"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_43

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v0, "previous"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_45

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_47

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

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_49
    invoke-virtual {v8, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BackupRecord;

    if-eqz v1, :cond_4e

    iget-object v1, v1, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v1, :cond_4e

    const/16 v1, 0x12c

    if-le v15, v1, :cond_4c

    const/16 v1, 0x8

    if-le v4, v1, :cond_4a

    move v4, v1

    :cond_4a
    const-string v11, "backup"

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_4b

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

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const/16 v15, 0x12c

    goto :goto_19

    :cond_4c
    const/16 v1, 0x8

    :goto_19
    const/16 v11, 0x9

    if-le v4, v11, :cond_4f

    const-string v4, "backup"

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_4d

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

    :cond_4f
    :goto_1a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v11

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

    :cond_50
    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v11

    move/from16 v42, v0

    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    const/16 v0, 0xa

    if-le v4, v0, :cond_52

    const-string/jumbo v4, "started-services"

    invoke-virtual {v8, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_51

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_1e

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

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v2, v3, :cond_55

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

    :goto_1f
    iget-boolean v0, v11, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_5d

    iget v0, v11, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

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

    :cond_5d
    invoke-virtual {v11}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v14

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

    :goto_27
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v15, v30

    check-cast v15, Lcom/android/server/am/ConnectionRecord;

    move/from16 v30, v0

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

    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v1, :cond_62

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->attributedClient:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_62

    move-object v1, v0

    goto :goto_29

    :cond_62
    move-object/from16 v1, v48

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

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v31

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    :goto_2a
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    const/4 v5, 0x2

    if-ge v8, v5, :cond_64

    const/16 v31, 0x1

    goto :goto_2b

    :cond_64
    const/16 v31, 0x0

    :goto_2b
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_66

    if-le v8, v14, :cond_66

    const/4 v4, 0x4

    if-ne v8, v4, :cond_65

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

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_2e

    :cond_67
    const/4 v2, 0x1

    :goto_2e
    invoke-virtual {v9, v3}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int v0, v33, v0

    const/16 v1, 0x20

    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/16 v1, 0x1000

    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    or-int/2addr v0, v1

    :cond_68
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    const/16 v14, 0x8

    and-int/2addr v1, v14

    if-eqz v1, :cond_6a

    const/4 v1, 0x5

    if-gt v8, v1, :cond_69

    const/high16 v1, 0x20000

    invoke-virtual {v15, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    :cond_69
    or-int/lit8 v0, v0, 0x8

    :cond_6a
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6b

    const/4 v1, 0x6

    if-gt v8, v1, :cond_6b

    move-object/from16 v35, v3

    const-wide v2, 0x100000000L

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

    :cond_6e
    invoke-virtual {v15, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_73

    const/16 v2, 0x384

    if-ge v7, v2, :cond_6f

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

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

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    move v7, v1

    move-object/from16 v20, v15

    move/from16 v8, v30

    goto :goto_32

    :cond_71
    move/from16 v1, v20

    move-object/from16 v5, v26

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

    invoke-virtual {v3, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_77

    const/16 v0, -0x2bc

    if-lt v7, v0, :cond_76

    const/4 v14, 0x4

    goto/16 :goto_34

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

    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_7b

    const/4 v14, 0x4

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

    invoke-virtual {v3, v15}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v15

    if-eqz v15, :cond_7d

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

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_37

    :cond_83
    move v0, v1

    :goto_37
    const/4 v7, 0x0

    :goto_38
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v20

    if-nez v20, :cond_84

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    :cond_84
    if-le v1, v0, :cond_85

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

    invoke-virtual {v3, v14}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v14

    if-eqz v14, :cond_90

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v14

    if-le v14, v7, :cond_88

    const/16 v7, 0x40

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

    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_89

    const/4 v8, 0x4

    goto :goto_3e

    :cond_89
    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_8a

    :goto_3c
    const/4 v8, 0x5

    goto :goto_3e

    :cond_8a
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8b

    const/high16 v6, 0x2000000

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

    invoke-virtual {v6, v2}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v8

    if-eqz v8, :cond_8d

    const/16 v2, 0x1000

    invoke-virtual {v3, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v2

    goto :goto_3d

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

    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_93

    if-eqz v31, :cond_93

    const/4 v7, 0x3

    const/16 v41, 0x1

    :cond_93
    if-nez v15, :cond_94

    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v3, v8, v6}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    :cond_94
    if-le v0, v8, :cond_96

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-nez v4, :cond_95

    const-string/jumbo v4, "service"

    :cond_95
    move v0, v8

    :cond_96
    const/4 v6, 0x7

    if-ge v0, v6, :cond_97

    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_97

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    :cond_97
    if-eqz v4, :cond_99

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    move-object/from16 v6, v56

    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v8, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    move/from16 v8, v52

    move/from16 v15, v53

    if-ne v8, v15, :cond_98

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

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v55

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

    invoke-virtual {v3, v4}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_9c

    move-object/from16 v4, v54

    invoke-virtual {v4, v7}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_44

    :cond_9c
    move-object/from16 v4, v54

    :goto_44
    iget-object v7, v3, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    const/16 v2, 0x80

    invoke-virtual {v3, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_a0

    if-eqz v7, :cond_a0

    if-lez v1, :cond_a0

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/android/server/am/ConnectionRecord;->notHasFlag(I)Z

    move-result v20

    if-eqz v20, :cond_9e

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    const/16 v24, 0x4

    goto :goto_45

    :cond_9d
    const/16 v24, 0x2

    :cond_9e
    :goto_45
    invoke-virtual {v5, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "service"

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v5, v7}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    iget-object v1, v11, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v8, v15, :cond_9f

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

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

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

    :goto_4a
    invoke-virtual {v0, v8}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v3

    move-object/from16 v16, v0

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

    :cond_a5
    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    move/from16 v24, v8

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

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

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

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

    :cond_a8
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    invoke-virtual {v9, v14}, Lcom/android/server/am/OomAdjuster;->getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int v20, v20, v1

    const/16 v3, 0x10

    if-lt v6, v3, :cond_a9

    const/16 v6, 0x13

    :cond_a9
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_aa

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    :cond_aa
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v1

    if-nez v1, :cond_ac

    const/4 v1, 0x3

    if-le v6, v1, :cond_ac

    const/4 v1, 0x4

    if-ne v6, v1, :cond_ab

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

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    const-string/jumbo v1, "provider"

    move-object v4, v1

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

    :cond_b2
    :goto_52
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v13, v57

    invoke-virtual {v13, v6, v1}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    move/from16 v13, v27

    if-le v13, v6, :cond_b3

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move v13, v6

    :cond_b3
    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v1

    move/from16 v12, v58

    if-le v1, v12, :cond_b4

    const/4 v12, 0x2

    :cond_b4
    if-eqz v4, :cond_b6

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    move-object/from16 v6, v59

    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v11, v15, :cond_b5

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

    invoke-static {v13}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v55

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

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v2

    if-eqz v2, :cond_bb

    if-lez v1, :cond_b9

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string v1, "ext-provider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    if-ne v11, v15, :cond_b8

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

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    if-ne v11, v15, :cond_ba

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

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v12

    const-wide/16 v23, 0x0

    cmp-long v3, v12, v23

    if-lez v3, :cond_c1

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

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    const-string/jumbo v1, "recent-provider"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move/from16 v8, v53

    if-ne v11, v8, :cond_be

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

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    if-ne v11, v8, :cond_c0

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

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v3

    if-eqz v3, :cond_c2

    const-string v3, "cch-client-act"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    const/16 v15, 0x11

    goto :goto_59

    :cond_c2
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v3

    if-eqz v3, :cond_c3

    const-string v3, "cch-as-act"

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

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-nez v3, :cond_c6

    iget-object v3, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v3

    if-nez v3, :cond_c5

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v3

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-ltz v3, :cond_c5

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    goto :goto_5c

    :cond_c5
    const/4 v3, 0x1

    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v4, v3

    iput v4, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    goto :goto_5c

    :cond_c6
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    :cond_c7
    :goto_5c
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v3

    if-eqz v3, :cond_c8

    const/16 v1, 0x320

    :cond_c8
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    move-object/from16 v3, v54

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v4

    if-le v1, v4, :cond_c9

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

    iget-object v5, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :cond_cb
    :goto_5e
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v3

    if-eqz v3, :cond_cc

    or-int v6, v6, v39

    :cond_cc
    invoke-virtual {v9, v10, v15}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I

    move-result v3

    or-int/2addr v3, v6

    const/4 v5, 0x5

    if-le v15, v5, :cond_cd

    and-int/lit8 v3, v3, -0x11

    :cond_cd
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v5, :cond_ce

    invoke-virtual {v9, v4, v15, v0}, Lcom/android/server/am/OomAdjuster;->promoteSchedGroupIfNecessary(IILcom/android/server/am/ProcessStateRecord;)Z

    move-result v5

    if-eqz v5, :cond_ce

    const/4 v4, 0x6

    :cond_ce
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    invoke-virtual {v0, v15}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-eqz v1, :cond_d0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v1, :cond_cf

    const/4 v5, 0x6

    goto :goto_5f

    :cond_cf
    const/4 v5, 0x2

    :goto_5f
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_d0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_PREL:Z

    if-eqz v1, :cond_d1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/wm/WindowProcessController;->mIsPrelScheduleGroupOverride:Z

    if-eqz v1, :cond_d1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_d1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    move/from16 v2, v50

    if-lt v1, v2, :cond_d2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    move/from16 v2, v49

    if-lt v1, v2, :cond_d2

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

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

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

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3

    const-wide v0, 0x10500000031L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000033L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000035L

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000036L

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .locals 2

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

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBfslCapabilityFromClient(Lcom/android/server/am/ProcessRecord;)I
    .locals 2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x10

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result p0

    and-int/2addr p0, v1

    return p0
.end method

.method public final getDefaultCapability(Lcom/android/server/am/ProcessRecord;I)I
    .locals 2

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    return-void
.end method

.method public idleUidsLocked()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v5, v3, v5

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    if-ltz v0, :cond_5

    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-lez v14, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v14

    if-nez v14, :cond_4

    cmp-long v14, v12, v5

    if-gtz v14, :cond_2

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    iget-object v14, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v14

    :try_start_0
    invoke-virtual {v11, v1}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    invoke-virtual {v11, v1}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v12, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_1

    :catchall_0
    move-exception p0

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

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_9

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

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

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result p0

    if-le p0, v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    :cond_0
    return-void
.end method

.method public maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .locals 12

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    const/4 v8, 0x4

    if-gt v2, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_3

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v2, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v10

    add-long/2addr v10, v8

    cmp-long v2, p2, v10

    if-lez v2, :cond_2

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-gt v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    :goto_2
    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, v1, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_3
    if-eqz v7, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v8

    sub-long v8, p2, v8

    cmp-long v1, v8, v1

    if-lez v1, :cond_9

    :cond_8
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_4
    array-length p3, p2

    if-ge v4, p3, :cond_9

    iget-object p3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v1, p2, v4

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p3, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    if-nez v7, :cond_a

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    :cond_a
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

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

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    return-void
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v10, 0x40

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iget-object v13, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v14

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v15

    const/16 v0, 0x384

    const/16 v6, 0x3e9

    if-lt v15, v0, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastOomAdjChangeReason(I)V

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

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v14, v1, :cond_1

    const/16 v1, -0x2710

    if-eq v15, v1, :cond_1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v10, v1, :cond_1

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v11, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v4, v8, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v8, v0, v3, v4}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v5

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    if-nez v5, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v3}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJI)Z

    :cond_5
    :goto_2
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v12

    :cond_6
    :goto_3
    const-wide/16 v1, 0x40

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, v8, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public final performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;JI)Z
    .locals 12

    move-object v9, p0

    move-object v10, p1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    :cond_1
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

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

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

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

    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_5

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    :cond_5
    const/4 v2, 0x0

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, v0

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(ILcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

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

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    const-string/jumbo p0, "provider"

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

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public final reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-eq v4, p2, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    :cond_2
    return-void
.end method

.method public setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    goto :goto_1

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

    :cond_2
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    :cond_0
    return-void
.end method

.method public final shouldKillExcessiveProcesses(J)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr p0, v3

    return p0

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

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result p1

    iget p0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge p1, p0, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result p0

    if-lt p0, p3, :cond_1

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessSet:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;I)Z
    .locals 38

    move-object/from16 v8, p0

    move-wide/from16 v9, p5

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v12

    const-string v13, "OomAdjuster"

    if-nez v12, :cond_0

    iget-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    const-string v1, "Not killing cached processes"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1388

    add-long v1, p1, v1

    iput-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    :cond_0
    const v1, 0x7fffffff

    if-eqz v12, :cond_1

    iget-object v2, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    move v14, v2

    goto :goto_0

    :cond_1
    move v14, v1

    :goto_0
    if-eqz v12, :cond_2

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v1, v14

    :cond_2
    move v15, v1

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initActiveLaunchParam()V

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initMLLaunchCountParam()V

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1}, Lcom/android/server/am/DynamicHiddenApp;->initDhaProcessesLocked()V

    :cond_3
    sget-boolean v16, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    float-to-double v5, v1

    if-eqz v16, :cond_4

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

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v11

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v26

    if-nez v26, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v26

    if-eqz v26, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPendingFinishAttach()Z

    move-result v26

    if-nez v26, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v26

    if-eqz v26, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v0

    const-string v0, "Excessive Resource Usage detectd task: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move/from16 v27, v0

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

    :goto_4
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    const/16 v2, 0x13

    const/16 v3, 0x11

    const/16 v4, 0x10

    if-eqz v1, :cond_10

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->checkKeptProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    if-lez v1, :cond_10

    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isActiveLaunch:Z

    if-ne v5, v10, :cond_7

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->activeLaunchKillCheck(Lcom/android/server/am/ProcessRecord;)V

    :goto_5
    move-wide/from16 v2, p5

    move/from16 v7, v22

    move/from16 v6, v23

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v5

    if-nez v5, :cond_8

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14}, Lcom/android/server/am/DynamicHiddenApp;->updateNapProcessProtection(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    if-eq v5, v4, :cond_9

    if-eq v5, v3, :cond_a

    if-eq v5, v2, :cond_b

    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto :goto_6

    :cond_9
    if-ne v1, v10, :cond_a

    add-int/lit8 v20, v20, 0x1

    :cond_a
    iget v2, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    :cond_b
    :goto_6
    if-ne v1, v9, :cond_f

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v1, v14, v13, v15}, Lcom/android/server/am/DynamicHiddenApp;->destroyKeptProcessActivity(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v2

    if-eqz v2, :cond_d

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

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v7

    const-string v9, "bg_restriction"

    if-eq v7, v4, :cond_19

    const/16 v4, 0x11

    if-eq v7, v4, :cond_19

    if-eq v7, v1, :cond_12

    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v7, v13, v20

    sub-int v7, v7, v21

    invoke-virtual {v1, v14, v7}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/16 v7, 0xc8

    if-lt v1, v7, :cond_11

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    if-lt v1, v7, :cond_11

    const/4 v1, 0x2

    const/16 v7, 0xd

    invoke-virtual {v14, v9, v7, v1, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_11
    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    :goto_9
    move v7, v5

    goto :goto_a

    :cond_12
    iget-boolean v1, v14, Lcom/android/server/am/ProcessRecord;->mDedicated:Z

    if-eqz v1, :cond_13

    goto :goto_9

    :cond_13
    iget-object v1, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v12, v1, :cond_14

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v22

    cmp-long v1, v22, v2

    if-gez v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty for "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v5, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v5, v14}, Lcom/android/server/am/DynamicHiddenApp;->isBEKCondition(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_c

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

    iget v1, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    add-int/lit8 v1, v13, 0x1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v13, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, v13, :cond_1a

    if-ne v6, v5, :cond_1a

    add-int/lit8 v21, v21, 0x1

    move v5, v6

    move/from16 v22, v7

    goto :goto_d

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

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->VENDING_PKG:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "GATE"

    const-string v7, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :cond_20
    iget-object v6, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    add-int v7, v1, v20

    sub-int v7, v7, v21

    invoke-virtual {v6, v14, v7}, Lcom/android/server/am/DynamicHiddenApp;->isForceKillHeavyCondition(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x2

    const/16 v7, 0xd

    invoke-virtual {v14, v9, v7, v6, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    :cond_21
    :goto_f
    move v13, v1

    move/from16 v23, v5

    goto/16 :goto_b

    :goto_10
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->isExcessiveResourceUsage()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_11

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

    invoke-virtual {v14, v5, v6, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    goto :goto_12

    :cond_22
    :goto_11
    move-object/from16 v9, v33

    :goto_12
    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v5, :cond_23

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v5

    if-gtz v5, :cond_23

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_23

    const-string/jumbo v0, "isolated not needed"

    const/16 v5, 0x11

    const/16 v6, 0xd

    invoke-virtual {v14, v0, v6, v5, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_13

    :cond_23
    iget-boolean v5, v14, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v5, :cond_24

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_24

    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "sandbox not needed"

    const/16 v5, 0x1c

    const/16 v6, 0xd

    invoke-virtual {v14, v0, v6, v5, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_13

    :cond_24
    invoke-virtual {v8, v14}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :goto_13
    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/16 v5, 0xe

    if-lt v0, v5, :cond_26

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

    iget-wide v3, v8, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

    cmpg-double v3, v1, v3

    if-gez v3, :cond_29

    const-string/jumbo v3, "swap low and too many cached"

    const/4 v4, 0x2

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v5, v4, v10}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_15

    :cond_28
    move-wide/from16 v1, v34

    :cond_29
    :goto_15
    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerConstants;->getOverrideMaxCachedProcesses()I

    move-result v0

    if-gez v0, :cond_2a

    iput v13, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedProcessCount:I

    iput v12, v8, Lcom/android/server/am/OomAdjuster;->mNumEmptyProcessCount:I

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getCachedMax()I

    move-result v0

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumCachedSlotCount:I

    iget-object v0, v8, Lcom/android/server/am/OomAdjuster;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {v0}, Lcom/android/server/am/DynamicHiddenApp;->getEmptyMax()I

    move-result v0

    iput v0, v8, Lcom/android/server/am/OomAdjuster;->mNumEmptySlotCount:I

    :cond_2a
    iput-wide v1, v8, Lcom/android/server/am/OomAdjuster;->mLastFreeSwapPercent:D

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x33e

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-ge v0, v3, :cond_4

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {p2}, Lcom/android/server/am/CachedAppOptimizer;->getUnfreezeReasonCodeFromOomAdjReason(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

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

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

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

    :cond_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_3

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

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/OomAdjuster;->oomAdjReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

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

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p3

    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez p4, :cond_4

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->clear()V

    move v3, v9

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

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

    :goto_3
    invoke-virtual {v7}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_5

    invoke-virtual {v7, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    iget v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eqz v19, :cond_6

    iput v9, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

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

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v5, :cond_9

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    invoke-virtual {v3, v9}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_a
    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    move v5, v1

    move/from16 v21, v9

    :goto_8
    if-ltz v5, :cond_c

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

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

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v21, v1

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

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v1}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v3

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

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

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

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

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

    :cond_13
    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    iput v11, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    move-object/from16 v1, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    move-object/from16 v8, p4

    move/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;I)Z

    move-result v1

    iget v2, v0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    iget-object v2, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v3, :cond_14

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    :cond_14
    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v1

    invoke-virtual {v2, v12, v13, v11, v1}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    :cond_15
    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v7, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v6, v4, v7}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    iget-object v4, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v5, v0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_17

    iget-object v0, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_17
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateOomAdjLSP(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw v0
.end method

.method public final updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

    return v0
.end method

.method public updateOomAdjLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(I)V

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

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

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

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public updateOomAdjPendingTargetsLocked(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    throw v0
.end method

.method public final updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_19

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_18

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changes in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-static {v4}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDeterministicUidIdle:Z

    const/16 v7, 0x3a

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v8, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v8, v8, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    if-eq v4, v5, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v4, 0x2

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    invoke-virtual {v3, v6}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    const/4 v4, 0x4

    goto :goto_2

    :cond_a
    move v4, v6

    :goto_2
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    const/16 v8, 0xb

    if-le v7, v8, :cond_b

    move v7, v2

    goto :goto_4

    :cond_b
    move v7, v6

    :goto_4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_c

    move v6, v2

    :cond_c
    if-ne v7, v6, :cond_d

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

    :cond_f
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-eq v5, v6, :cond_10

    or-int/lit8 v4, v4, 0x20

    :cond_10
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    const/high16 v7, -0x80000000

    if-eq v5, v6, :cond_11

    or-int/2addr v4, v7

    :cond_11
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v5

    if-eqz v5, :cond_12

    or-int/lit8 v4, v4, 0x40

    :cond_12
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    and-int v5, v4, v7

    if-nez v5, :cond_13

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_14

    :cond_13
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    :cond_14
    if-eqz v4, :cond_15

    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    :cond_15
    if-nez v5, :cond_16

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_17

    :cond_16
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    :cond_17
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    :cond_18
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-virtual {v4, v3, p2, p3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_19
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b

    sub-int/2addr p1, v2

    :goto_6
    if-ltz p1, :cond_1b

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
