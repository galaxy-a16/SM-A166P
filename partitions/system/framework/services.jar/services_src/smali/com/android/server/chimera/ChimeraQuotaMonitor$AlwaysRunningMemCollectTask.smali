.class public Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;
.super Ljava/util/TimerTask;
.source "ChimeraQuotaMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;


# direct methods
.method public static synthetic $r8$lambda$Genw6_OrPO6Ol1ks9dpSV8kgVB0(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->lambda$run$0(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xxnbkwru_jyApE7X8BGJ4U63IVM(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->lambda$run$1(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/ChimeraQuotaMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/ChimeraQuotaMonitor;Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;-><init>(Lcom/android/server/chimera/ChimeraQuotaMonitor;)V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$run$1(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "AlwaysRunningMemCollectTask"

    :try_start_0
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmQuota(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/chimera/SystemRepository;->isScreenOff()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/chimera/SystemRepository;->isCharging()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    const-string v2, "Skipped by screen off and not charging"

    invoke-static {v0, v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ChimeraQuotaMonitor;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$misUMRSuppressed(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    const-string v3, "Skipped by UMR suppressed"

    invoke-static {v2, v3}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ChimeraQuotaMonitor;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    const-string v2, "UMR\'s mode is still suppressed after 10 seconds, skip task this time"

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmTaskExecuteCount(Lcom/android/server/chimera/ChimeraQuotaMonitor;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v6, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v6}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    iget-object v8, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v8}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v8, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v10, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10, v4, v5}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_0

    :cond_3
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v7, v8, v9}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fputmLastNativeDRAMUsed(Lcom/android/server/chimera/ChimeraQuotaMonitor;J)V

    iget-object v7, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v7}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Native task finish and cost "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms and native quota is "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmTaskExecuteCount(Lcom/android/server/chimera/ChimeraQuotaMonitor;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fputmTaskExecuteCount(Lcom/android/server/chimera/ChimeraQuotaMonitor;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez v6, :cond_5

    iget-object v6, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v6}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v9}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v9, :cond_6

    goto/16 :goto_4

    :cond_6
    check-cast v9, [I

    const/4 v10, 0x0

    move-wide v11, v4

    :goto_2
    array-length v13, v8

    if-ge v10, v13, :cond_a

    aget v13, v9, v10

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_9

    const/16 v14, -0x2710

    if-eq v13, v14, :cond_9

    if-nez v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    cmp-long v16, v14, v4

    if-gtz v16, :cond_8

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    :cond_8
    iget v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v4, v14, v15}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJ)J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->DRAMUsed:J

    add-long/2addr v11, v4

    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_a
    iget-object v4, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v4}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmLastNativeDRAMUsed(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J

    move-result-wide v4

    add-long/2addr v4, v11

    iget-object v6, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v6}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmQuota(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-lez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v6}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemEventListener(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemEventListener;

    move-result-object v6

    new-instance v8, Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;

    const-wide/32 v9, 0x19000

    add-long/2addr v4, v9

    invoke-direct {v8, v7, v4, v5}, Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;-><init>(Ljava/util/List;J)V

    invoke-virtual {v6, v8}, Lcom/android/server/chimera/SystemEventListener;->sendQuotaExceedMessage(Lcom/android/server/chimera/ChimeraQuotaMonitor$QuotaReclaimTarget;)V

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task finish and cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms and quota is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmLastNativeDRAMUsed(Lcom/android/server/chimera/ChimeraQuotaMonitor;)J

    move-result-wide v2

    add-long/2addr v11, v2

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v3, v2}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ChimeraQuotaMonitor;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/chimera/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ChimeraQuotaMonitor;

    invoke-static {v0}, Lcom/android/server/chimera/ChimeraQuotaMonitor;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/ChimeraQuotaMonitor;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_c
    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/android/server/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task execute with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method
