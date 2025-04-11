.class public Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public final PROCS_STATS_COUNT:I

.field public final PROCS_STATS_PSS:I

.field public final PROCS_STATS_SWAP_PSS:I

.field public final PROCS_STATS_WRITEBACK:I

.field public mProcDumpMemThread:Ljava/lang/Thread;

.field public procMemDumpInfoList:Ljava/util/List;

.field public procsMemoryPssKbByADJ:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static synthetic $r8$lambda$KuSGRX5RvpyZiWhVjROtGYitUrY(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->lambda$getProcDumpMemInfo$0(Landroid/util/SparseArray;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->clearAdjPss()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->showDebugAdjPss()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 3474
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3476
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_PSS:I

    const/4 p1, 0x1

    .line 3477
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_SWAP_PSS:I

    const/4 p1, 0x2

    .line 3478
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_WRITEBACK:I

    const/4 p1, 0x3

    .line 3479
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_COUNT:I

    .line 3481
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 3482
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$getProcDumpMemInfo$0(Landroid/util/SparseArray;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 4

    .line 3597
    iget-wide v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 3598
    iget p1, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-string/jumbo p2, "native"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearAdjPss()V
    .locals 1

    .line 3659
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void
.end method

.method public final getProcDumpMemInfo()V
    .locals 9

    .line 3584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3587
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 3588
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    .line 3589
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3590
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3591
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v2, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3593
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3596
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmAm(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 3603
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 3604
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3605
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v5

    const/4 v6, 0x0

    .line 3609
    :goto_2
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 3610
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-eq v6, v8, :cond_2

    aget v8, v7, v6

    if-lt v5, v8, :cond_1

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    if-ge v5, v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3613
    :cond_2
    :goto_3
    sget-object v5, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    aget-object v5, v5, v6

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    .line 3618
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {p0, v3, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(ILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3620
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3621
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ActivityManager_kpm"

    .line 3622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcDumpMemInfo() elapsed time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 3593
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getProcDumpMemInfoInternal(ILjava/lang/String;)V
    .locals 12

    .line 3548
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->smapsRollupPid(I)[J

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3551
    :cond_0
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->readMemtrackMemory(I)[J

    move-result-object p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 3552
    array-length v6, p1

    if-lt v6, v1, :cond_1

    aget-wide v6, p1, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 3553
    aget-wide v6, v0, v5

    aget-wide v8, p1, v5

    aget-wide v10, p1, v4

    add-long/2addr v8, v10

    aget-wide v10, p1, v3

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 3556
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v6, 0x1

    if-nez p1, :cond_2

    .line 3557
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    new-array p1, v1, [J

    aget-wide v8, v0, v5

    aput-wide v8, p1, v5

    aget-wide v8, v0, v4

    aput-wide v8, p1, v4

    aget-wide v8, v0, v3

    aput-wide v8, p1, v3

    aput-wide v6, p1, v2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3561
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    .line 3562
    aget-wide v8, p0, v5

    aget-wide v10, v0, v5

    add-long/2addr v8, v10

    aput-wide v8, p0, v5

    .line 3563
    aget-wide v8, p0, v4

    aget-wide v10, v0, v4

    add-long/2addr v8, v10

    aput-wide v8, p0, v4

    .line 3564
    aget-wide v8, p0, v3

    aget-wide v10, v0, v3

    add-long/2addr v8, v10

    aput-wide v8, p0, v3

    .line 3565
    aget-wide v8, p0, v2

    add-long/2addr v8, v6

    aput-wide v8, p0, v2

    .line 3567
    :goto_0
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_3

    .line 3568
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 p1, 0x80

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "getProcDumpMemInfo() "

    .line 3569
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adj: "

    .line 3570
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3571
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pss: "

    .line 3572
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    aget-wide p1, v0, v5

    long-to-double p1, p1

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v5

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mb, swappss: "

    .line 3574
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    aget-wide p1, v0, v4

    long-to-double p1, p1

    div-double/2addr p1, v1

    add-double/2addr p1, v5

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mb, writeback:"

    .line 3576
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    aget-wide p1, v0, v3

    long-to-double p1, p1

    div-double/2addr p1, v1

    add-double/2addr p1, v5

    double-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mb"

    .line 3578
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ActivityManager_kpm"

    .line 3579
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 2

    .line 3487
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    const-string v1, "KPMProcessMemoryDumpThread"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Ljava/lang/Thread;

    .line 3509
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final showDebugAdjPss()V
    .locals 17

    move-object/from16 v0, p0

    .line 3627
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 3628
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "[ADJ Label] : "

    const-string v8, "ActivityManager_kpm"

    if-eqz v6, :cond_1

    .line 3629
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 3630
    aget-wide v9, v6, v3

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    add-long/2addr v9, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-gez v14, :cond_0

    move-wide v9, v12

    .line 3634
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3635
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3636
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - total: "

    .line 3637
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v9, v9

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v15

    double-to-int v5, v9

    .line 3638
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, pss: "

    .line 3639
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    aget-wide v9, v6, v3

    long-to-double v9, v9

    div-double/2addr v9, v13

    add-double/2addr v9, v15

    double-to-int v5, v9

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, swappss: "

    .line 3641
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3642
    aget-wide v9, v6, v11

    long-to-double v9, v9

    div-double/2addr v9, v13

    add-double/2addr v9, v15

    double-to-int v5, v9

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, writeback: "

    .line 3643
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 3644
    aget-wide v9, v6, v5

    long-to-double v9, v9

    div-double/2addr v9, v13

    add-double/2addr v9, v15

    double-to-int v5, v9

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, count: "

    .line 3645
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    .line 3646
    aget-wide v5, v6, v5

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3647
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3649
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - this ADJ not found"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final smapsRollupPid(I)[J
    .locals 8

    const-string p0, "failed to read "

    const-string v0, "ActivityManager"

    if-gtz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "SwapPss:"

    const-string v2, "Writeback:"

    const-string v3, "Pss:"

    .line 3515
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/smaps_rollup"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v3, v2, [J

    .line 3522
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    .line 3524
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 3525
    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "\\s+"

    .line 3527
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3528
    array-length v7, v6

    if-ne v7, v2, :cond_3

    const/4 v7, 0x1

    .line 3529
    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    .line 3536
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 3522
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3539
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3537
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v3
.end method
