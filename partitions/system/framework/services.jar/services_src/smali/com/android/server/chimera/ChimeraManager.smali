.class public Lcom/android/server/chimera/ChimeraManager;
.super Ljava/lang/Object;
.source "ChimeraManager.java"

# interfaces
.implements Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;


# static fields
.field public static final IS_SHIP_BUILD:Z


# instance fields
.field public mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

.field public mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

.field public mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

.field public mContext:Landroid/content/Context;

.field public mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

.field public mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

.field public mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

.field public mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

.field public mSettingRepository:Lcom/android/server/chimera/SettingRepository;

.field public mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/ChimeraManager;->IS_SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 32
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 33
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 35
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 36
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 37
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 39
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 50
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/RepositoryFactory;->getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 51
    invoke-static {}, Lcom/android/server/chimera/RepositoryFactory;->getInstance()Lcom/android/server/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/SettingRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ObserverHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/android/server/chimera/ChimeraRecentAppManager;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/chimera/ChimeraRecentAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Landroid/os/Looper;)V

    .line 57
    new-instance v1, Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/chimera/ChimeraStrategy;-><init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;)V

    iput-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 58
    new-instance v0, Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {v0, v1}, Lcom/android/server/chimera/ChimeraAppManager;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    .line 59
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/chimera/SystemEventListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    .line 64
    new-instance v0, Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-direct {v0, v1}, Lcom/android/server/chimera/AbnormalFgsDetector;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 66
    new-instance v0, Lcom/android/server/chimera/heimdall/Heimdall;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 68
    iget-object p2, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {p2, p0}, Lcom/android/server/chimera/SystemEventListener;->addMediaScanFinishedListener(Lcom/android/server/chimera/SystemEventListener$MediaScanFinishedListener;)V

    .line 70
    invoke-static {p1}, Lcom/android/server/chimera/ChimeraStandbyBucketCollectorService;->schedule(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public checkProcessInHeimdall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/chimera/heimdall/Heimdall;->checkProcess(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createPSITracker()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1, v0}, Lcom/android/server/chimera/SystemEventListener;->removeTimeOrTimeZoneChangedListener(Lcom/android/server/chimera/SystemEventListener$TimeOrTimeZoneChangedListener;)V

    .line 147
    :cond_0
    new-instance v0, Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/chimera/psitracker/PSITracker;-><init>(Lcom/android/server/chimera/SystemRepository;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    .line 148
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1, v0}, Lcom/android/server/chimera/SystemEventListener;->addTimeOrTimeZoneChangedListener(Lcom/android/server/chimera/SystemEventListener$TimeOrTimeZoneChangedListener;)V

    .line 149
    sget-boolean v0, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 150
    sput-boolean v0, Lcom/android/server/chimera/psitracker/PSITracker;->mFirstTriggeredAfterBooting:Z

    .line 151
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    const-string v0, "MEDIA_SCAN_FINISHED"

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public createPolicyHandler()V
    .locals 15

    .line 126
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lcom/android/server/chimera/ConservativePolicyHandler;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v4, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v5, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v6, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 132
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/chimera/ConservativePolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Lcom/android/server/chimera/AggressivePolicyHandler;

    iget-object v9, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v10, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-object v11, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v12, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object v13, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 135
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/chimera/AggressivePolicyHandler;-><init>(Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/ChimeraStrategy;Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/SettingRepository;Lcom/android/server/chimera/AbnormalFgsDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->registerSystemEventListener()V

    .line 140
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v0, "ChimeraManager"

    const-string v1, "Chimera instance created"

    invoke-interface {p0, v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    if-eqz p2, :cond_1c

    .line 168
    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 172
    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Chimera enabled: true"

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    :cond_1
    array-length v1, p2

    if-lez v1, :cond_17

    .line 176
    aget-object v1, p2, v0

    const-string v4, "info"

    .line 177
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v3, "standby"

    .line 180
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraAppManager;->dumpStandbyBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, "use_bg_keeping_policy"

    .line 182
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "true"

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera set ConservativePolicy mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    aget-object v1, p2, v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 185
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result v3

    if-eq v1, v3, :cond_17

    .line 186
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3, v1}, Lcom/android/server/chimera/SettingRepository;->enableConservativeMode(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v3, "reclaim_cache"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v6, "off"

    const-string/jumbo v7, "on"

    if-eqz v3, :cond_6

    .line 191
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    aget-object v3, p2, v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/chimera/SettingRepository;->enableReclaimPageCache(Z)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reclaim_cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v6, v7

    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "gc"

    .line 193
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    aget-object v3, p2, v5

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/chimera/SettingRepository;->enableGc(Z)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsGcenable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isGcEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v6, v7

    :cond_7
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "enable_app_idle_kill"

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera enable samsung apps idle kill: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    aget-object v1, p2, v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 199
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isAppsIdleKillEnabled()Z

    move-result v3

    if-eq v1, v3, :cond_17

    .line 200
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3, v1}, Lcom/android/server/chimera/SettingRepository;->enableAppsIdleKill(Z)V

    if-nez v1, :cond_9

    .line 201
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isNativeProcessesIdleKillEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 202
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto/16 :goto_1

    :cond_9
    if-eqz v1, :cond_17

    .line 203
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isNativeProcessesIdleKillEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 204
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "enable_native_idle_kill"

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera enable 3rd native processes idle kill: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    aget-object v1, p2, v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 210
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isNativeProcessesIdleKillEnabled()Z

    move-result v3

    if-eq v1, v3, :cond_17

    .line 211
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3, v1}, Lcom/android/server/chimera/SettingRepository;->enableNativeProcessesIdleKill(Z)V

    if-nez v1, :cond_b

    .line 212
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isAppsIdleKillEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 213
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v1, :cond_17

    .line 214
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v1}, Lcom/android/server/chimera/SettingRepository;->isAppsIdleKillEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 215
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    goto/16 :goto_1

    :cond_c
    const-string v3, "enable_quick_reclaim"

    .line 218
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera enable quick reclaim: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    aget-object v1, p2, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 221
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v3

    if-eq v1, v3, :cond_17

    .line 222
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v3, v1}, Lcom/android/server/chimera/SettingRepository;->enableQuickReclaim(Z)V

    if-eqz v1, :cond_d

    .line 224
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntent()V

    goto/16 :goto_1

    .line 228
    :cond_d
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->removeCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v1}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntent()V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v3, "umr"

    .line 233
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 234
    invoke-static {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string v3, "gmr"

    .line 235
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 236
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v1, :cond_17

    .line 237
    invoke-virtual {v1, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v3, "ppnandswap"

    .line 239
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 240
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    if-eqz v1, :cond_17

    .line 241
    invoke-virtual {v1, p1, p2}, Lcom/android/server/chimera/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v3, "psitracker"

    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 244
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    if-eqz v1, :cond_17

    .line 245
    invoke-virtual {v1, p1, p2}, Lcom/android/server/chimera/psitracker/PSITracker;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v3, "enable_app_cache_reclaim"

    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chimera enable app cache reclaim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    aget-object p2, p2, v5

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 250
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isAppCacheReclaimEnable()Z

    move-result v0

    if-eq p2, v0, :cond_14

    .line 251
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {p0, p2}, Lcom/android/server/chimera/SettingRepository;->enableAppCacheReclaim(Z)V

    if-eqz p2, :cond_13

    const-string p0, "Chimera app cache reclaim enabled."

    .line 253
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    const-string p0, "Chimera app cache reclaim disabled."

    .line 255
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    :goto_0
    return-void

    :cond_15
    const-string v3, "heimdall"

    .line 259
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 260
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_16
    const-string/jumbo v3, "set_quota"

    .line 262
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 263
    sget-boolean v1, Lcom/android/server/chimera/ChimeraManager;->IS_SHIP_BUILD:Z

    if-nez v1, :cond_17

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera set quota: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    aget-object v1, p2, v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 266
    invoke-static {}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->getInstance()Lcom/android/server/chimera/ChimeraQuotaMonitor;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->setQuota(J)V

    .line 271
    :cond_17
    :goto_1
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/chimera/ChimeraStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    if-eqz v1, :cond_18

    .line 274
    invoke-virtual {v1, p1, p2}, Lcom/android/server/chimera/PolicyHandler;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 277
    :cond_18
    aget-object v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 278
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 280
    invoke-static {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 284
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    if-eqz v0, :cond_19

    .line 285
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/PerProcessNandswap;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 287
    :cond_19
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 289
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    if-eqz v0, :cond_1a

    .line 290
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/GPUMemoryReclaimer;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 293
    :cond_1a
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    if-eqz v0, :cond_1b

    .line 294
    invoke-virtual {v0, p1, p2}, Lcom/android/server/chimera/AbnormalFgsDetector;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 297
    :cond_1b
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    if-eqz p0, :cond_1c

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/heimdall/Heimdall;->dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1c
    :goto_2
    return-void
.end method

.method public getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;-><init>()V

    .line 307
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    .line 308
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraDataInfo;

    return-object p0
.end method

.method public getPSITracker()Lcom/android/server/chimera/psitracker/PSITracker;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPSITracker:Lcom/android/server/chimera/psitracker/PSITracker;

    return-object p0
.end method

.method public getSettingRepository()Lcom/android/server/chimera/SettingRepository;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "2.0"

    return-object p0
.end method

.method public onMediaScanFinished()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string v1, "ChimeraManager"

    const-string/jumbo v2, "onMediaScanFinished() to start the policy "

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->initialize()V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    .line 320
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/PerProcessNandswap;

    .line 321
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/chimera/PerProcessNandswap;->init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V

    .line 324
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getInstance()Lcom/android/server/chimera/GPUMemoryReclaimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mGPUMemoryReclaimer:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 326
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isPSITrackerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPSITracker()V

    .line 330
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->isQuotaEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-static {}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->getInstance()Lcom/android/server/chimera/ChimeraQuotaMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraManager;->mAppManager:Lcom/android/server/chimera/ChimeraAppManager;

    iget-object v3, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 332
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraStrategy;->getAlwaysRunningProcQuota()I

    move-result p0

    .line 331
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->schedule(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraAppManager;Lcom/android/server/chimera/SystemEventListener;I)V

    :cond_1
    return-void
.end method

.method public final registerSystemEventListener()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addPmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addPmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->addAppLaunchIntent()V

    .line 83
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addCameraStateListener(Lcom/android/server/chimera/SystemEventListener$CameraStateListener;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isAppsIdleKillEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isNativeProcessesIdleKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->addOneHourTimerListener(Lcom/android/server/chimera/SystemEventListener$OneHourTimerListener;)V

    .line 93
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->isQuotaEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/SystemEventListener;->addAlwaysRunningQuotaExceedListener(Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;)V

    :cond_3
    return-void
.end method

.method public final unRegisterSystemEventListener()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeBottleNeckHintListener(Lcom/android/server/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removePmmCriticalListener(Lcom/android/server/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removePmmStateChangeListener(Lcom/android/server/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeLmkdEventListener(Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCarModeChangeListener(Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeHomeLaunchListener(Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isAppsIdleKillEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isNativeProcessesIdleKillEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeDeviceIdleListener(Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/chimera/SettingRepository;->isQuickReclaimEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntentListener(Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCameraDeviceStateCallback(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    invoke-virtual {v0}, Lcom/android/server/chimera/SystemEventListener;->removeAppLaunchIntent()V

    .line 115
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeCameraStateListener(Lcom/android/server/chimera/SystemEventListener$CameraStateListener;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraManager;->mAbnormalFgsDetector:Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/SystemEventListener;->removeOneHourTimerListener(Lcom/android/server/chimera/SystemEventListener$OneHourTimerListener;)V

    .line 120
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->isQuotaEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/chimera/SystemEventListener;

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/chimera/SystemEventListener;->removeAlwaysRunningQuotaExceedListener(Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;)V

    :cond_3
    return-void
.end method
