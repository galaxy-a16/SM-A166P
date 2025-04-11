.class public final Lcom/android/server/chimera/umr/DamonReclaimer;
.super Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;
.source "DamonReclaimer.java"


# static fields
.field public static mReceiver:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

.field public static sDamonReclaimer:Lcom/android/server/chimera/umr/DamonReclaimer;


# instance fields
.field public isValuesUpdated:Z

.field public final mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

.field public mEnabled:Z

.field public final mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

.field public final mUpdateLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mdisableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer;->disableReclaim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menableReclaim(Lcom/android/server/chimera/umr/DamonReclaimer;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer;->enableReclaim()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "damon"

    const/16 v1, 0x32

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mUpdateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->isValuesUpdated:Z

    .line 72
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    const-string v2, "/sys/module/damon_reclaim/parameters"

    invoke-direct {v0, p0, v2}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;-><init>(Lcom/android/server/chimera/umr/DamonReclaimer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    .line 73
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    invoke-direct {v0, v2, v1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    .line 74
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    return-void
.end method

.method public static declared-synchronized getDamonReclaimer()Lcom/android/server/chimera/umr/DamonReclaimer;
    .locals 2

    const-class v0, Lcom/android/server/chimera/umr/DamonReclaimer;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/umr/DamonReclaimer;->sDamonReclaimer:Lcom/android/server/chimera/umr/DamonReclaimer;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/android/server/chimera/umr/DamonReclaimer;

    invoke-direct {v1}, Lcom/android/server/chimera/umr/DamonReclaimer;-><init>()V

    sput-object v1, Lcom/android/server/chimera/umr/DamonReclaimer;->sDamonReclaimer:Lcom/android/server/chimera/umr/DamonReclaimer;

    .line 53
    :cond_0
    sget-object v1, Lcom/android/server/chimera/umr/DamonReclaimer;->sDamonReclaimer:Lcom/android/server/chimera/umr/DamonReclaimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer;->mReceiver:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    return-object v0
.end method

.method public static notifyAppStart(Ljava/lang/String;)V
    .locals 2

    .line 633
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->isUMRDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "notifyAppStart:: eventReceiver is null"

    .line 639
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void

    .line 643
    :cond_1
    sget-object v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_3

    .line 644
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x0

    .line 645
    invoke-virtual {v0, p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setAppStart(Z)V

    return-void

    :cond_3
    const/4 p0, 0x1

    .line 650
    invoke-virtual {v0, p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->setAppStart(Z)V

    return-void
.end method


# virtual methods
.method public final disableReclaim()Z
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 130
    monitor-exit v0

    return v2

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    sget-object v3, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v4, "N"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;->setTuneable(Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    monitor-exit v0

    return v2

    .line 135
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mEnabled:Z

    .line 137
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->updateDamonStats()V

    const-string p0, "disableReclaim: damon reclaim has been disabled"

    .line 138
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 139
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpInfo(Ljava/io/PrintWriter;)V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->dumpReclaimStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enableReclaim()Z
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 103
    monitor-exit v0

    return v2

    .line 106
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->isValuesUpdated:Z

    if-nez v1, :cond_1

    const-string v1, "enableReclaim: values are not yet updated updating values"

    .line 107
    invoke-static {v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    invoke-static {v1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;->-$$Nest$mwriteDamonTunables(Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->isValuesUpdated:Z

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    sget-object v3, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;->enabled:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;

    const-string v4, "Y"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;->setTuneable(Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    monitor-exit v0

    return v2

    :cond_2
    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mEnabled:Z

    .line 115
    iget-object v2, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->getStartReason()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->-$$Nest$fputmStartReason(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;Ljava/lang/String;)V

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mDebug:Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;->-$$Nest$fputmStartTime(Lcom/android/server/chimera/umr/DamonReclaimer$DamonStatsReader;J)V

    const-string p0, "enableReclaim: proactive reclaim has been enabled"

    .line 118
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p0

    .line 116
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onProactiveBegin()V
    .locals 0

    const-string/jumbo p0, "onProactiveBegin: starting proactive reclaimer"

    .line 84
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->handleDamonEnable()Z

    return-void
.end method

.method public onProactiveEnd()V
    .locals 0

    const-string/jumbo p0, "onProactiveBegin: stopping proactive reclaimer"

    .line 90
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/android/server/chimera/umr/DamonReclaimer;->getSystemEventReciver()Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;->handleDamonDisable()Z

    return-void
.end method

.method public registerEvents(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p0, "registerStatusReceiver:: Context is Null"

    .line 599
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    .line 603
    :cond_0
    new-instance v0, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;-><init>(Lcom/android/server/chimera/umr/DamonReclaimer;)V

    sput-object v0, Lcom/android/server/chimera/umr/DamonReclaimer;->mReceiver:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    .line 605
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 606
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 607
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 608
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 609
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 610
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 611
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    sget-object v0, Lcom/android/server/chimera/umr/DamonReclaimer;->mReceiver:Lcom/android/server/chimera/umr/DamonReclaimer$DamonPolicyManager;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "registerStatusReceiver:: events has been registered"

    .line 613
    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void
.end method

.method public updateMemorySafeThreshold(J)V
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMemorySafeThreshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " HighRAM? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->IS_RAM_HIGHER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 620
    iget-object p0, p0, Lcom/android/server/chimera/umr/DamonReclaimer;->mTuneable:Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 622
    sget-wide v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->TOTAL_MEMORY_KB:J

    div-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/DamonReclaimer$DamonTuneableWriter;->setMidHighWmarks(I)V

    :cond_0
    return-void
.end method
