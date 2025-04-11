.class public Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;
.super Ljava/lang/Object;
.source "HeimdallPhaseManager.java"


# instance fields
.field public mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

.field public mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

.field public mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

.field public mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-direct {v0}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-direct {v0}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-direct {v0, p2}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    return-void
.end method


# virtual methods
.method public final addProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->addProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method

.method public dumpKillStatus(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->dumpKillStatus(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProcessList(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->dumpProcessInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpSpecList(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->dumpInfo(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final forceGc(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Garbage Collection is performed to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public final isPidChanged(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pid and Process name doesn\'t match. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->isProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result p0

    return p0
.end method

.method public final isProcessTriggered(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->isTriggered(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result p0

    return p0
.end method

.method public final isProtectedProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->isProtectedProcesses(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result p0

    return p0
.end method

.method public final isValidMemorySizeLong(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final killAndReportProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportBigdata(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method

.method public processGcPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->forceGc(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x1

    return p0
.end method

.method public processKillAndReportPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isPidChanged(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->removeProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->killAndReportProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x1

    return p0
.end method

.method public processRescanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->scanProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->triggerProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isProcessTriggered(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->removeProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->scanProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->triggerProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isProcessTriggered(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->removeProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isProtectedProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->addProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->removeProcessInProgress(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method

.method public final scanProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 13

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-static {v0}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isValidMemorySizeLong(J)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    aget-wide v4, v0, v3

    const/4 v6, 0x3

    aget-wide v7, v0, v6

    add-long/2addr v4, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isValidMemorySizeLong(J)Z

    move-result v7

    if-nez v7, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v7

    const/16 v8, 0x8

    const/16 v9, 0x20

    const/4 v10, 0x1

    if-ne v7, v9, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    long-to-int v0, v4

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result v7

    if-ne v7, v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    long-to-int v4, v4

    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    aget-wide v4, v0, v1

    long-to-int v4, v4

    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    aget-wide v4, v0, v10

    long-to-int v4, v4

    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    aget-wide v4, v0, v3

    long-to-int v4, v4

    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    aget-wide v4, v0, v6

    long-to-int v0, v4

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    :cond_5
    :goto_1
    sget v0, Lcom/android/server/chimera/heimdall/Heimdall;->SCAN_VERSION:I

    if-lt v0, v3, :cond_b

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->readMemtrackMemory(I)[J

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v4, v0

    if-lt v4, v2, :cond_b

    aget-wide v4, v0, v6

    const-wide/16 v11, 0x0

    cmp-long v2, v4, v11

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_8

    aget-wide v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isValidMemorySizeLong(J)Z

    move-result v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    aget-wide v4, v0, v1

    aget-wide v6, v0, v10

    add-long/2addr v4, v6

    aget-wide v6, v0, v3

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->isValidMemorySizeLong(J)Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result p0

    if-ne p0, v9, :cond_a

    long-to-int p0, v4

    iput p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsBeforeGc:I

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->currentPhase()I

    move-result p0

    if-ne p0, v8, :cond_b

    long-to-int p0, v4

    iput p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->graphicsAfterGc:I

    aget-wide v1, v0, v1

    long-to-int p0, v1

    iput p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->memTrackEgl:I

    aget-wide v1, v0, v10

    long-to-int p0, v1

    iput p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->memTrackGl:I

    aget-wide v0, v0, v3

    long-to-int p0, v0

    iput p0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->memTrackOther:I

    nop

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Process.getRss("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") error."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    return-void
.end method

.method public setHeimdallKillDisabled()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->setHeimdallKillDisabled()V

    return-void
.end method

.method public setHeimdallKillEnabled()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->setHeimdallKillEnabled()V

    return-void
.end method

.method public final triggerProcess(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->trigger(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    return-void
.end method
