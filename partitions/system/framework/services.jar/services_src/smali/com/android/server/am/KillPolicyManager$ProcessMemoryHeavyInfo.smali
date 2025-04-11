.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public final HEAVY_MEMORY_MAX_LIST:I

.field public final PROCESS_PSS:I

.field public final PROCESS_RSS:I

.field public final PROCESS_SWAP_PSS:I

.field public final THREAD_SLEEP_TIME:I

.field public final THRESHOLD_HEAVY_MEMORY_DETECT:I

.field public dumpHeavyProcessByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public fgsMemDumpList:Ljava/util/ArrayList;

.field public isThreadRunning:Z

.field public final isThreshold:Z

.field public mProcessMemoryDumpThread:Ljava/lang/Thread;

.field public memoryUsageByAdj:Ljava/util/HashMap;

.field public peakLmkdKillAdj:I

.field public procMemDumpInfoList:Ljava/util/List;

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpeakLmkdKillAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputisThreadRunning(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getProcessMemoryDumpInformation(ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->reportHeavyProcessTop5ByAdj()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugAdjMemory()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugHeavyProcess(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 1

    .line 3006
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xbb8

    .line 3007
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->THREAD_SLEEP_TIME:I

    const p1, 0x7d000

    .line 3008
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->THRESHOLD_HEAVY_MEMORY_DETECT:I

    const/4 p1, 0x5

    .line 3009
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->HEAVY_MEMORY_MAX_LIST:I

    const/4 p1, 0x0

    .line 3010
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreshold:Z

    .line 3011
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_PSS:I

    const/4 v0, 0x1

    .line 3012
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_SWAP_PSS:I

    const/4 v0, 0x2

    .line 3013
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->PROCESS_RSS:I

    .line 3014
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    const/16 p1, 0x3e9

    .line 3015
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 3017
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 3018
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 3019
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3020
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 3021
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 3022
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clearHeavyList()V
    .locals 1

    const/16 v0, 0x3e9

    .line 3466
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 3467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 3468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    .line 3469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 3470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    return-void
.end method

.method public dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9

    .line 3047
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    .line 3053
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    .line 3054
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string p0, "empty"

    return-object p0

    .line 3058
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v3, ","

    .line 3063
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 3066
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3068
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3070
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3072
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3074
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3076
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3078
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3080
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3082
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    iget v3, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3084
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3085
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    int-to-double v1, v1

    div-double/2addr v1, v5

    add-double/2addr v1, v7

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3088
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 3

    .line 3203
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3207
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3208
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3209
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3210
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    goto :goto_0

    .line 3212
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 3214
    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3216
    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3217
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3218
    invoke-virtual {p0, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void
.end method

.method public final fillMemoryUsageByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)V
    .locals 8

    .line 3190
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3191
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [J

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    aput-wide v5, v4, v3

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    aput-wide v5, v4, v2

    iget-wide v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    aput-wide v2, v4, v1

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3194
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    .line 3195
    aget-wide v4, p0, v3

    iget-wide v6, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    add-long/2addr v4, v6

    aput-wide v4, p0, v3

    .line 3196
    aget-wide v3, p0, v2

    iget-wide v5, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v3, v5

    aput-wide v3, p0, v2

    .line 3197
    aget-wide v2, p0, v1

    iget-wide v4, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    add-long/2addr v2, v4

    aput-wide v2, p0, v1

    :goto_0
    return-void
.end method

.method public final fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 3174
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3175
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    .line 3176
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 3177
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    goto :goto_0

    .line 3179
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    const/4 p0, 0x0

    .line 3180
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    .line 3181
    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ActivityManager_kpm"

    .line 3185
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public gatherHeavyProcessThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 2

    .line 3134
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    const-string v1, "PMMProcessHeavyDumpThread"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->mProcessMemoryDumpThread:Ljava/lang/Thread;

    const/4 p1, 0x1

    .line 3167
    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 3168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getProcessMemoryDumpInformation(ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3309
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const-wide v5, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_0

    move-object/from16 v0, p2

    .line 3310
    iget v0, v0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    goto :goto_0

    .line 3312
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmTotalMem(Lcom/android/server/am/KillPolicyManager;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    :goto_0
    mul-int/lit16 v0, v0, 0x400

    int-to-double v9, v0

    mul-double/2addr v9, v5

    add-double/2addr v9, v7

    double-to-long v5, v9

    .line 3315
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    const-string v9, " mb"

    const-string v10, " mb, rss: "

    const-string v11, " mb, swap: "

    const-string v12, ", pss: "

    const-string v13, ", adj: "

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    const-string v15, "ActivityManager_kpm"

    const-wide/16 v18, 0x0

    if-eqz v0, :cond_d

    .line 3316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 3317
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3318
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    new-instance v8, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;

    invoke-direct {v8, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3319
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3323
    iget-object v0, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    .line 3334
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object/from16 v20, v8

    const/4 v8, 0x5

    const/16 v21, 0x0

    if-ge v0, v8, :cond_2

    .line 3335
    new-instance v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v0, v8}, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3336
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3337
    iput-object v14, v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    const/4 v8, 0x1

    move/from16 v22, v8

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, v21

    const/16 v22, 0x0

    :goto_2
    if-nez v22, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-wide/from16 v23, v3

    move-object/from16 v25, v7

    goto :goto_a

    :cond_4
    :goto_3
    move-wide/from16 v23, v3

    const/4 v3, 0x0

    .line 3347
    :goto_4
    :try_start_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v3, v0, :cond_7

    .line 3349
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_5

    .line 3351
    iget-object v4, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v25, v7

    :try_start_2
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3352
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v21
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    move-object/from16 v25, v7

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v25, v7

    .line 3357
    :goto_5
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v25

    goto :goto_4

    :cond_7
    move-object/from16 v25, v7

    :goto_7
    move-object/from16 v0, v21

    if-eqz v22, :cond_8

    .line 3363
    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    .line 3364
    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v8, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 3367
    invoke-virtual {v1, v14, v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v25, v7

    .line 3369
    :goto_9
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_9
    :goto_a
    invoke-virtual {v1, v14}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillMemoryUsageByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;)V

    const-string/jumbo v0, "vis"

    .line 3375
    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "percept"

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "perceptl"

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    .line 3376
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "perceptm"

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3377
    :cond_a
    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    iget-wide v7, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long/2addr v3, v7

    add-long v18, v18, v3

    .line 3378
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3381
    :cond_b
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_c

    .line 3382
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getProcessMemoryDumpInformation() process : "

    .line 3383
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3384
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3385
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v3, v3

    div-double v3, v3, v16

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3386
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v3, v3

    div-double v3, v3, v16

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3387
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v14, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v3, v3

    div-double v3, v3, v16

    add-double/2addr v3, v7

    double-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v8, v20

    move-wide/from16 v3, v23

    move-object/from16 v7, v25

    goto/16 :goto_1

    :cond_d
    move-wide/from16 v23, v3

    move-wide/from16 v3, v18

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fgsMemDumpList total size "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " kb, Threshold(30%) "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " kb"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_11

    .line 3396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v23

    cmp-long v0, v3, v5

    if-ltz v0, :cond_e

    const/4 v0, 0x0

    .line 3398
    :goto_b
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e

    .line 3399
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    .line 3400
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "fgsMemDumpList process : "

    .line 3401
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3402
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3403
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v5, v5

    div-double v5, v5, v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v5, v5, v18

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3404
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v5, v5

    div-double v5, v5, v16

    add-double v5, v5, v18

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3405
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v5, v5

    div-double v5, v5, v16

    add-double v5, v5, v18

    double-to-int v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_e
    if-eqz v2, :cond_10

    .line 3410
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_10

    aget-object v4, v0, v3

    .line 3411
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "[ADJ Label] : "

    if-eqz v5, :cond_f

    .line 3412
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Top "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    invoke-virtual {v1, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    goto :goto_d

    .line 3416
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - this ADJ not found"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3420
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcessMemoryDumpInformation() elapsed time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method public final getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;
    .locals 10

    .line 3092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 3098
    :goto_0
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    move v3, v1

    .line 3099
    :goto_1
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    move v4, v1

    .line 3100
    :goto_2
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 3101
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    aget v5, v5, v2

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    .line 3102
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 3104
    new-instance v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {v8, v9}, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    .line 3105
    iput v2, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    .line 3106
    iput v3, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    .line 3107
    iput v4, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    long-to-int v6, v6

    .line 3108
    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 3109
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    .line 3110
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    .line 3111
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    .line 3112
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    .line 3113
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    .line 3114
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    .line 3115
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    .line 3116
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    .line 3117
    invoke-virtual {p1, v5}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v8, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    .line 3118
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3124
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 3125
    new-instance p1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p1, p0}, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    const/4 p0, -0x1

    .line 3126
    iput p0, p1, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    .line 3127
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final reportHeavyProcessTop5ByAdj()V
    .locals 24

    move-object/from16 v0, p0

    const-string v1, " "

    .line 3243
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    const-string v3, "ActivityManager_kpm"

    if-nez v2, :cond_0

    const-string v0, "dumpHeavyProcessByAdj is null"

    .line 3244
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3246
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "dumpHeavyProcessByAdj is 0 size"

    .line 3247
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3251
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    .line 3255
    :try_start_0
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_8

    aget-object v10, v6, v9

    .line 3256
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3257
    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    .line 3258
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 3259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "TF"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3260
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    .line 3261
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 3262
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 3263
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 3264
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 3265
    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v7

    .line 3266
    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v18, v11

    .line 3267
    iget-object v11, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v19, v10

    move/from16 v23, v11

    move v11, v9

    move/from16 v9, v23

    goto :goto_2

    :cond_2
    move v11, v9

    move-object/from16 v19, v10

    iget-wide v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_2
    add-int v10, v15, v8

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    add-int/2addr v10, v9

    move/from16 v20, v11

    const/16 v11, 0x7e4

    if-le v10, v11, :cond_4

    .line 3270
    sget-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v10, :cond_3

    .line 3271
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v11, "reportHeavyProcessTop5ByAdj "

    .line 3272
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3273
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3275
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3277
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :cond_3
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    .line 3280
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v6

    .line 3283
    :cond_4
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3284
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 3285
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 3287
    :cond_5
    iget-wide v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3289
    :goto_3
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v10, v10

    div-double/2addr v10, v8

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v21

    double-to-int v7, v10

    .line 3290
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v10, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v10, v10

    div-double/2addr v10, v8

    add-double v10, v10, v21

    double-to-int v7, v10

    .line 3291
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    move/from16 v9, v20

    goto/16 :goto_1

    :cond_6
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v20, v9

    move-object v6, v10

    .line 3293
    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_7
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v20, v9

    :goto_4
    add-int/lit8 v9, v20, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    goto/16 :goto_0

    :catch_0
    const-string v1, "failed to create the KPUT"

    .line 3298
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_8
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    return-void
.end method

.method public final sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TYPE"

    const/4 v2, 0x2

    .line 3227
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "UPTM"

    .line 3228
    invoke-virtual {p1, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3230
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ActivityManager_kpm"

    const-string p2, "failed to create the KPUT"

    .line 3233
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 3236
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-string p2, "KPUT"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPeakLmkdKillLevel(I)V
    .locals 1

    .line 3027
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    if-le v0, p1, :cond_0

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 3028
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    :cond_0
    return-void
.end method

.method public final showDebugAdjMemory()V
    .locals 15

    .line 3450
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3451
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "[ADJ Label] : "

    const-string v7, "ActivityManager_kpm"

    if-eqz v5, :cond_0

    .line 3452
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 3453
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3454
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Pss: "

    .line 3455
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v5, v2

    long-to-double v9, v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swapPss: "

    .line 3456
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v9, v5, v4

    long-to-double v9, v9

    div-double/2addr v9, v11

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, Rss: "

    .line 3457
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-wide v4, v5, v4

    long-to-double v4, v4

    div-double/2addr v4, v11

    add-double/2addr v4, v13

    double-to-int v4, v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3460
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - this ADJ not found"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final showDebugHeavyProcess(Ljava/util/ArrayList;)V
    .locals 10

    const-string v0, "ActivityManager_kpm"

    if-eqz p1, :cond_2

    .line 3425
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 3426
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3427
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    .line 3428
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "showDebugHeavyProcess() process : "

    .line 3429
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ver: "

    .line 3430
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3431
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ", PackageName: "

    .line 3432
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3434
    :cond_0
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ", PackageVer: "

    .line 3435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, ", adj: "

    .line 3437
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pss: "

    .line 3438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swap: "

    .line 3439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, rss: "

    .line 3440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, "

    .line 3441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    const-string p0, "ProcessMemoryHeavy not found"

    .line 3445
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
