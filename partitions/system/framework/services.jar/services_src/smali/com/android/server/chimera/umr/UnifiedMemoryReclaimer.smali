.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;
.super Ljava/lang/Object;
.source "UnifiedMemoryReclaimer.java"


# static fields
.field public static final DEBUG_LEVEL:Ljava/lang/String;

.field public static final DEBUG_LEVEL_LOW:Z

.field public static final DISABLED:Z

.field public static final IS_RAM_HIGHER:Z

.field public static final MEM_AVAIL_LOW_THRESHOLD_KB:J

.field public static final MEM_FREE_LOW_THRESHOLD_KB:J

.field public static final MODEL_UMR_ENABLED:Z

.field public static final PSI_CPU_THRESHOLD_MS:I

.field public static final PSI_MEM_THRESHOLD_MS:I

.field public static final TOTAL_MEMORY_KB:J

.field public static debug:Z

.field public static enabled:Z

.field public static mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

.field public static mHandlerThread:Lcom/android/server/ServiceThread;

.field public static mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

.field public static mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

.field public static mService:Lcom/android/server/am/ActivityManagerService;

.field public static mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

.field public static shouldDelayEnableReclaimers:Z


# direct methods
.method public static synthetic $r8$lambda$7XSvT8ii5u5zNUnNfeo3kympNvY(JLjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->lambda$dumpInfo$3(JLjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8CcgBoypzwDmjuruXQuxUF08y4k(Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->lambda$disableReclaimers$1(Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqGmuRA2XfQNSridr_diubqNzLg(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->lambda$dumpInfo$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZvhD0caJ-TGsViWGsjn9WS_FN4(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->lambda$enableReclaimers$0(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDISABLED()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMEM_AVAIL_LOW_THRESHOLD_KB()J
    .locals 2

    sget-wide v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MEM_AVAIL_LOW_THRESHOLD_KB:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetMEM_FREE_LOW_THRESHOLD_KB()J
    .locals 2

    sget-wide v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MEM_FREE_LOW_THRESHOLD_KB:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPSI_CPU_THRESHOLD_MS()I
    .locals 1

    sget v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->PSI_CPU_THRESHOLD_MS:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPSI_MEM_THRESHOLD_MS()I
    .locals 1

    sget v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->PSI_MEM_THRESHOLD_MS:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smcloseCpuStatusMonitorNative()V
    .locals 0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->closeCpuStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcloseMemStatusMonitorNative()V
    .locals 0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->closeMemStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcreateStatusMonitorNative()I
    .locals 1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->createStatusMonitorNative()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smdestroyStatusMonitorNative()V
    .locals 0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->destroyStatusMonitorNative()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetFreeMemoryNative()J
    .locals 2

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getFreeMemoryNative()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smopenCpuStatusMonitorNative(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->openCpuStatusMonitorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smopenMemStatusMonitorNative(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->openMemStatusMonitorNative(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smreadAmAppLaunch()I
    .locals 1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->readAmAppLaunch()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smsendMessage(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendMessage(Landroid/os/Handler;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(Landroid/os/Handler;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwaitForStatusUpdate()I
    .locals 1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->waitForStatusUpdate()I

    move-result v0

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.enabled"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DEBUG_LEVEL:Ljava/lang/String;

    const-string v2, "0x4f4c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DEBUG_LEVEL_LOW:Z

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->TOTAL_MEMORY_KB:J

    const-wide/32 v4, 0xa00000

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->IS_RAM_HIGHER:Z

    sput-boolean v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    sput-boolean v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->debug:Z

    sput-boolean v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_cpu_threshold_ms"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->PSI_CPU_THRESHOLD_MS:I

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_mem_threshold_ms"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->PSI_MEM_THRESHOLD_MS:I

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_avail_low_threshold_kb"

    const-wide/32 v1, 0x200000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MEM_AVAIL_LOW_THRESHOLD_KB:J

    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_free_low_threshold_kb"

    const-wide/32 v1, 0x19000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MEM_FREE_LOW_THRESHOLD_KB:J

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->staticInitialize()V

    return-void
.end method

.method private static native closeCpuStatusMonitorNative()V
.end method

.method private static native closeMemStatusMonitorNative()V
.end method

.method private static native createStatusMonitorNative()I
.end method

.method public static destroy()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "destroy: UnifiedMemoryReclaimer is disabled by config"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    if-nez v0, :cond_1

    const-string v0, "init: UnifiedMemoryReclaimer is already disabled"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->disableReclaimers()V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->stop()V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->destroy()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    const-string v0, "destroy: success"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "deinitialize: failed by exception"

    invoke-static {v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static native destroyStatusMonitorNative()V
.end method

.method public static disableReclaimers()V
    .locals 2

    const-string v0, "disableReclaimers"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "enabled"

    const-string v1, "True"

    const-string v2, "TRUE"

    const-string v3, "1"

    const-string/jumbo v4, "true"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "False"

    const-string v3, "FALSE"

    const-string v4, "0"

    const-string v5, "false"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :try_start_0
    sget-boolean v3, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v3, :cond_0

    const-string p1, "disabled by system configuration"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "[UnifiedMemoryReclaimer Stats]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, p1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string p1, "configurations:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- enabled: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- debug: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->debug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- reclaimer_log: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->reclaimerLogSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_cpu_threshold_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuThresholdMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_cpu_window_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiCpuWindowMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_mem_threshold_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemThresholdMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- psi_mem_window_ms:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getPsiMemWindowMS()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- mem_avail_low_threshold_kb:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getMemAvailLowThresholdKB()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- mem_free_low_threshold_kb:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->getMemFreeLowThresholdKB()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_1

    const-string/jumbo p1, "reclaimers: controlStatus, mode, efficiency"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_2
    const-string v3, "help"

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "available commands:"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- help: show this prompt"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set enabled [true|false]: en/disable ump"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set debug [true|false]: en/disable debug"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_cpu_threshold_ms VALUE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_cpu_window_ms VALUE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_mem_threshold_ms VALUE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set psi_mem_window_ms VALUE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set reclaimer RECLAIMER_NAME controlStatus [enabled|disabled]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- set reclaimer RECLAIMER_NAME efficiency VALUE"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo p0, "set"

    aget-object v3, p1, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    array-length p0, p1

    const/4 v3, 0x3

    if-le p0, v3, :cond_14

    const/4 p0, 0x2

    aget-object v5, p1, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    aget-object p0, p1, v3

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    aget-object p0, p1, v3

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->destroy()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string v5, "debug"

    aget-object v6, p1, p0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    aget-object p0, p1, v3

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sput-boolean v4, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->debug:Z

    goto :goto_1

    :cond_7
    aget-object p0, p1, v3

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sput-boolean v6, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->debug:Z

    :cond_8
    :goto_1
    return-void

    :cond_9
    const-string/jumbo v1, "psi_cpu_threshold_ms"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiCpuThresholdMS(I)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_a
    const-string/jumbo v1, "psi_cpu_window_ms"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiCpuWindowMS(I)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_b
    const-string/jumbo v1, "psi_mem_threshold_ms"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiMemThresholdMS(I)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_c
    const-string/jumbo v1, "psi_mem_window_ms"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->stop()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setPsiMemWindowMS(I)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    return-void

    :cond_d
    const-string/jumbo v1, "mem_avail_low_threshold_kb"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object p0

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setMemAvailLowThresholdKB(J)V

    return-void

    :cond_e
    const-string/jumbo v1, "mem_free_low_threshold_kb"

    aget-object v2, p1, p0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    aget-object p0, p1, v3

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setMemFreeLowThresholdKB(J)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_f
    const-string/jumbo v1, "reclaimer"

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    array-length p0, p1

    const/4 v1, 0x6

    if-lt p0, v1, :cond_14

    aget-object p0, p1, v3

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimer(Ljava/lang/String;)Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    move-result-object p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    const-string v1, "controlStatus"

    const/4 v2, 0x4

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_13

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    invoke-virtual {p0, v4}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    goto :goto_2

    :cond_11
    const-string v0, "disabled"

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    invoke-virtual {p0, v6}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    :cond_12
    :goto_2
    return-void

    :cond_13
    const-string v0, "efficiency"

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setEfficiency(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "failed to dumpInfo by exception"

    invoke-static {p1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_3
    return-void
.end method

.method public static enableReclaimers(Landroid/content/Context;)V
    .locals 2

    const-string v0, "enableReclaimers"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->resetReclaimerControls()V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimers()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private static native getFreeMemoryNative()J
.end method

.method public static getReclaimPolicyManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    return-object v0
.end method

.method public static getReclaimerManager()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    return-object v0
.end method

.method public static getReclaimerMode()I
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getDefaultReclaimerMode()I

    move-result v0

    return v0
.end method

.method public static getReclaimerMode(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->getReclaimer(Ljava/lang/String;)Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->getMode()I

    move-result p0

    return p0
.end method

.method public static getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    const-string p0, "init: UnifiedMemoryReclaimer is disabled by config"

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init: CORERUNE_UMR_ENABLED = true, MODEL_UMR_ENABLED = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    if-eqz v0, :cond_1

    const-string p0, "init: UnifiedMemoryReclaimer is already enabled"

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "init: start init"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager-IA;)V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    :cond_2
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-direct {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;-><init>()V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    :cond_3
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->init()V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimPolicyManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimPolicyManager;->start()V

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mSystemStatusMonitor:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->start()V

    if-eqz p0, :cond_4

    sput-object p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mService:Lcom/android/server/am/ActivityManagerService;

    :cond_4
    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const p0, 0x493e0

    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(IILjava/lang/Object;)V

    :goto_0
    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->enabled:Z

    const-string p0, "init: success"

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "init: failed by exception"

    invoke-static {p1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->debug:Z

    return v0
.end method

.method public static isInAppLaunch()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->readAmAppLaunch()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isInAppLaunch()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isInCameraLaunch()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->isInCameraLaunch()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static synthetic lambda$disableReclaimers$1(Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(I)V

    return-void
.end method

.method public static synthetic lambda$dumpInfo$2(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->dumpInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic lambda$dumpInfo$3(JLjava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 2

    const-wide/32 v0, 0x7d000

    add-long/2addr p0, v0

    invoke-virtual {p3, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->updateMemorySafeThreshold(J)V

    return-void
.end method

.method public static synthetic lambda$enableReclaimers$0(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 2

    const/4 p1, 0x1

    invoke-virtual {p2, p1, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->setControlStatus(ILandroid/content/Context;)V

    sget-wide p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MEM_FREE_LOW_THRESHOLD_KB:J

    const-wide/32 v0, 0x7d000

    add-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;->updateMemorySafeThreshold(J)V

    return-void
.end method

.method public static notifyAppLaunchFinished(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E|app_launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void
.end method

.method public static notifyAppLaunchStarted(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.sec.android.app.launcher"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B|app_launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->getSystemStatusMonitor()Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setCameraLaunch(Z)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$SystemStatusMonitor;->setAppLaunch(Z)V

    return-void
.end method

.method private static native openCpuStatusMonitorNative(II)I
.end method

.method private static native openMemStatusMonitorNative(II)I
.end method

.method public static readAmAppLaunch()I
    .locals 6

    const-string v0, "UMR"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/kernel/mm/vmscan/am_app_launch"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "failed to read /sys/kernel/mm/vmscan/am_app_launch"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    :goto_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am_app_launch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method public static registerReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    if-nez v0, :cond_1

    const-string/jumbo p0, "registerReclaimer: ReclaimerManager not prepared yet"

    invoke-static {p0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;->registerReclaimer(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;)V

    return-void
.end method

.method public static resetReclaimerControls()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->shouldDelayEnableReclaimers:Z

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public static sendMessage(II)V
    .locals 2

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(Landroid/os/Handler;IILjava/lang/Object;)V

    return-void
.end method

.method public static sendMessage(IILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(Landroid/os/Handler;IILjava/lang/Object;)V

    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->sendMessage(Landroid/os/Handler;IILjava/lang/Object;)V

    return-void
.end method

.method public static sendMessage(Landroid/os/Handler;IILjava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    if-lez p2, :cond_1

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public static staticInitialize()V
    .locals 4

    sget-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->DISABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "staticInitialize: UnifiedMemoryReclaimer is disabled by config"

    invoke-static {v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;-><init>(Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager-IA;)V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mReclaimerManager:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$ReclaimerManager;

    :cond_1
    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    sget-object v1, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->mHandler:Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$UnifiedMemoryReclaimerHandler;

    return-void
.end method

.method private static native waitForStatusUpdate()I
.end method
