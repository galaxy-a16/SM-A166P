.class public final Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;
.super Landroid/os/Handler;
.source "PerProcessNandswap.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final nativePackageNameFilter:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/PerProcessNandswap;


# direct methods
.method public static synthetic $r8$lambda$hAE3TDQkW35-R0_iR4-jscB_QTo(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->lambda$getReclaimSetForNandswap$0(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ytjaexRK23j39BrAh6HLkgmgoyE(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->lambda$getReclaimSetForNandswap$1(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {p1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmNandswapThread(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo p1, "vendor.samsung.hardware.camera.provider-service_64"

    const-string v0, "cameraserver"

    const-string/jumbo v1, "vendor.samsung.hardware.camera.provider"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    const-class p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;-><init>(Lcom/android/server/chimera/PerProcessNandswap;)V

    return-void
.end method

.method public static synthetic lambda$getReclaimSetForNandswap$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic lambda$getReclaimSetForNandswap$1(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canDoNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-interface {v0, v1}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget v3, v0, v2

    iput v3, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->procState:I

    aget v0, v0, v1

    iput v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    :cond_0
    iget v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    const/16 v3, 0x33e

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canDoNandswapProcess fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " adj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    return v1
.end method

.method public final doNandswapApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;IIZ)J
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v12, p2

    move/from16 v13, p3

    const-string v2, " adj:"

    const-string v14, ") action:"

    const-string v3, " "

    const-string v15, "(pid "

    const-string v10, ", "

    iget v11, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    iget-object v8, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->procState:I

    iget v6, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->adj:I

    if-eqz p4, :cond_0

    const-string v4, "activity"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "non-activity"

    :goto_0
    move-object v7, v4

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-ne v13, v4, :cond_1

    const-string/jumbo v16, "swaponly"

    :goto_1
    move-object/from16 v4, v16

    goto :goto_2

    :cond_1
    if-ne v13, v5, :cond_2

    const-string/jumbo v16, "writebackonly"

    goto :goto_1

    :cond_2
    const-string v16, "all"

    goto :goto_1

    :goto_2
    move/from16 v16, v6

    const-wide/16 v19, -0x1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nandswap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-wide/16 v5, 0x40

    :try_start_1
    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v21

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v22

    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v24

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v25

    iget-object v4, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nandswap start for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v16, v9

    const-string v9, " type:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v29, v10

    invoke-static {v11, v13}, Lcom/android/server/chimera/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v1, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    move-object/from16 v30, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "nandswap end for "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") ret:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v0, v12, v4

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    move-result-object v14

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v19

    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v5

    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v31, v12

    sub-long v12, v3, v25

    sub-long v33, v19, v22

    const-wide/16 v35, 0x4

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    mul-long v14, v33, v35

    const-wide/16 v33, 0x0

    cmp-long v2, v9, v33

    if-lez v2, :cond_3

    move-object v2, v8

    move-wide/from16 v39, v3

    move v3, v11

    const/16 v17, 0x1

    move/from16 v4, p2

    move-object/from16 v41, v5

    const/16 v18, 0x2

    const-wide/16 v27, 0x40

    move/from16 v5, p3

    move/from16 v42, v6

    move-object/from16 v43, v7

    move-wide v6, v0

    move-wide/from16 v33, v0

    move-wide/from16 v35, v9

    move/from16 v0, v16

    move-object v10, v8

    move-wide v8, v12

    move v1, v11

    move-wide/from16 v44, v12

    move-object/from16 v13, v29

    move-object v12, v10

    move-wide v10, v14

    :try_start_4
    invoke-static/range {v2 .. v11}, Lcom/android/server/chimera/PerProcessNandswap$NandswapLogger;->saveSwapOutLog(Ljava/lang/String;IIIJJJ)V

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v3}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmKeyApps(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$sfgetSTATUS_ALREADY_PPN()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    move-object/from16 v2, p0

    move-wide/from16 v33, v0

    move-wide/from16 v39, v3

    move-object/from16 v41, v5

    move/from16 v42, v6

    move-object/from16 v43, v7

    move-wide/from16 v35, v9

    move v1, v11

    move-wide/from16 v44, v12

    move/from16 v0, v16

    move-object/from16 v13, v29

    const/16 v17, 0x1

    const/16 v18, 0x2

    const-wide/16 v27, 0x40

    move-object v12, v8

    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nandswap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v43

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v37

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    move-wide/from16 v7, v31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", adj:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v42

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", state:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    move-object/from16 v10, v41

    aget-wide v4, v10, v17

    move-object/from16 v11, v16

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v10, v18

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-wide v5, v10, v4

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v39

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v39, v5

    move-wide/from16 v4, v33

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms, "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v30, v10, v17

    aget-wide v32, v24, v17

    move-wide/from16 v41, v7

    sub-long v6, v30, v32

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v10, v18

    aget-wide v30, v24, v18

    sub-long v6, v6, v30

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-wide v7, v10, v6

    aget-wide v29, v24, v6

    sub-long v7, v7, v29

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v44

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-wide/from16 v4, v33

    move-object/from16 v10, v41

    move/from16 v9, v42

    move-wide/from16 v41, v31

    :goto_4
    if-eqz v21, :cond_6

    if-eqz v38, :cond_6

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v3, v8

    aput-object v12, v3, v17

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v18

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x3

    aput-object v7, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x5

    aput-object v0, v3, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    aput-object v0, v3, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v3, v4

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x8

    aput-object v0, v3, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0x9

    aput-object v0, v3, v4

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v3, v4

    invoke-static/range {v38 .. v38}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    aput-object v0, v3, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v3, v4

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v4, 0xd

    aput-object v0, v3, v4

    const v0, 0x13d6e8

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_6
    move-object/from16 v0, p1

    move-wide/from16 v3, v41

    iput-wide v3, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    if-nez p4, :cond_7

    iget-object v0, v2, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0, v1, v12, v10}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/PerProcessNandswap;ILjava/lang/String;[J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_7
    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v35

    :catchall_0
    move-wide/from16 v35, v9

    const-wide/16 v27, 0x40

    :catchall_1
    move-wide/from16 v19, v35

    goto :goto_5

    :catch_0
    move-wide/from16 v35, v9

    const-wide/16 v27, 0x40

    :catch_1
    move-wide/from16 v19, v35

    goto :goto_6

    :catchall_2
    move-wide/from16 v27, v5

    goto :goto_5

    :catch_2
    move-wide/from16 v27, v5

    goto :goto_6

    :catchall_3
    const-wide/16 v27, 0x40

    :goto_5
    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v19

    :catch_3
    const-wide/16 v27, 0x40

    :goto_6
    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v19
.end method

.method public final getNandswapActivityAppType()I
    .locals 0

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final getNandswapNonActivityAppType(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v3

    iget v4, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    iget-object v1, v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v6, v4, :cond_2

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping nandswap as process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is system_server."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5

    :cond_2
    iget-object v6, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6, v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_3
    iget-object v6, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    move/from16 v8, p3

    if-eq v6, v8, :cond_5

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping nandswap for process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adj is changed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->isQuotaEnable()Z

    move-result v6

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    if-eq v9, v2, :cond_6

    if-ne v7, v2, :cond_7

    :cond_6
    move v3, v5

    move v2, v8

    goto :goto_2

    :cond_7
    move v3, v5

    move v2, v7

    goto :goto_2

    :cond_8
    if-lt v2, v8, :cond_b

    const/4 v6, 0x6

    if-gt v2, v6, :cond_b

    if-eqz v3, :cond_9

    move v2, v9

    goto :goto_0

    :cond_9
    move v2, v5

    :goto_0
    if-nez v2, :cond_a

    return v5

    :cond_a
    move v3, v7

    goto :goto_2

    :cond_b
    if-eqz v3, :cond_c

    move v2, v8

    goto :goto_1

    :cond_c
    move v2, v7

    :goto_1
    move v3, v5

    :goto_2
    invoke-static {v4}, Landroid/os/Process;->getRss(I)[J

    move-result-object v6

    aget-wide v10, v6, v5

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const-string v11, "Skipping nandswap for process "

    if-nez v10, :cond_e

    aget-wide v14, v6, v7

    cmp-long v10, v14, v12

    if-nez v10, :cond_e

    aget-wide v14, v6, v9

    cmp-long v10, v14, v12

    if-nez v10, :cond_e

    aget-wide v14, v6, v8

    cmp-long v10, v14, v12

    if-nez v10, :cond_e

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with no memory usage. Dead?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v5

    :cond_e
    if-eqz v3, :cond_f

    aget-wide v12, v6, v8

    goto :goto_3

    :cond_f
    aget-wide v12, v6, v9

    :goto_3
    const-wide/16 v14, 0x1388

    if-eqz v3, :cond_10

    const-wide/16 v16, 0x2710

    goto :goto_4

    :cond_10
    move-wide/from16 v16, v14

    :goto_4
    cmp-long v3, v12, v16

    const-string v10, "KB."

    if-gez v3, :cond_12

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; anon RSS is too small: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v6, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v5

    :cond_12
    iget-object v3, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v3, v3, Lcom/android/server/chimera/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ignore lastNandswapStats because it is old stats for name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " stats.name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v3, 0x0

    :cond_14
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/android/server/chimera/PerProcessNandswap$LastNandswapStats;->getRssAfterNandswap()[J

    move-result-object v3

    aget-wide v12, v6, v9

    aget-wide v16, v3, v9

    sub-long v12, v12, v16

    aget-wide v16, v6, v8

    aget-wide v3, v3, v8

    sub-long v3, v16, v3

    if-ne v2, v7, :cond_15

    move-wide v6, v12

    goto :goto_5

    :cond_15
    if-ne v2, v9, :cond_16

    move-wide v6, v3

    goto :goto_5

    :cond_16
    add-long v6, v12, v3

    :goto_5
    cmp-long v8, v6, v14

    if-gtz v8, :cond_18

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " diff is too small: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return v5

    :cond_18
    return v2
.end method

.method public final getReclaimSetForNandswap()Ljava/util/Set;
    .locals 8

    new-instance v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget-object v5, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v5}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v5

    iget v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-interface {v5, v6}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v5

    aget v4, v5, v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_2

    :cond_1
    const/16 v5, -0x2bc

    if-eq v4, v5, :cond_2

    const/16 v5, -0x320

    if-ne v4, v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/util/Pair;

    iget v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v6, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/chimera/PerProcessNandswap;->checkProcessStatusForNandswap(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v3

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-interface {v3, v5}, Lcom/android/server/chimera/SystemRepository;->getPackageNameFromUid(I)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    if-ge v5, v4, :cond_6

    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->isFilteredNativePackage([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Landroid/util/Pair;

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, -0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/chimera/PerProcessNandswap;->checkProcessStatusForNandswap(Ljava/lang/String;II)V

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/chimera/PerProcessNandswap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_d

    const/4 v6, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->nandSwapAlwaysRunningProcess(J)V

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v0

    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v6, :cond_3

    move v6, v4

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activity_app_msg: delayed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " app launch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v7}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_5
    iget-object v7, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v7}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v8, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v8}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_6

    :goto_2
    move v0, v4

    move v4, v5

    goto/16 :goto_3

    :cond_6
    :try_start_4
    invoke-virtual {p0, v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->canDoNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v0, v5

    move v4, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->getNandswapActivityAppType()I

    move-result v0

    const/16 v7, 0x9

    invoke-virtual {p0, v8, v7, v0, v4}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v9

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "activity_app_msg: delayed:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " iter: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pid:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v8, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ret:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " pending apps:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delayed apps:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    cmp-long v0, v9, v1

    if-lez v0, :cond_a

    move v0, v5

    goto :goto_3

    :cond_a
    if-gez v0, :cond_7

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_b

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0, v8, v3}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    goto/16 :goto_6

    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0, v8}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$mnandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0, v8, v5}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v9}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v9

    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v10, v4, :cond_e

    goto :goto_4

    :cond_e
    move v4, v5

    :goto_4
    if-eqz v4, :cond_f

    iget-object v10, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v10}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    goto :goto_5

    :cond_f
    iget-object v10, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v10}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    :goto_5
    iput-wide v7, v10, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "non_activity_app_msg: delayed:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v10, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(pid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") action:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " app launch:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v9, :cond_11

    if-nez v4, :cond_12

    invoke-virtual {p0, v10, v6, v0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->nandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v10, v6, v0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->getNandswapNonActivityAppType(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v10, v6, v0, v5}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0, v10, v3}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_6
    return-void
.end method

.method public final isFilteredNativePackage([Ljava/lang/String;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    aget-object v4, p1, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final isReachReclaimProcThrottleQuick(II)Z
    .locals 10

    invoke-static {p1}, Landroid/os/Process;->getRss(I)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-nez v2, :cond_0

    aget-wide v8, v0, v6

    cmp-long v2, v8, v4

    if-nez v2, :cond_0

    aget-wide v8, v0, v3

    cmp-long v2, v8, v4

    if-nez v2, :cond_0

    aget-wide v8, v0, v7

    cmp-long v2, v8, v4

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-ne p2, v7, :cond_1

    aget-wide v2, v0, v3

    aget-wide v4, v0, v7

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    if-ne p2, v6, :cond_2

    aget-wide v2, v0, v3

    goto :goto_0

    :cond_2
    aget-wide v2, v0, v7

    :goto_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p2

    const-wide/16 v4, 0x1388

    if-eqz p2, :cond_3

    cmp-long p2, v2, v4

    if-gtz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Quota PPN skip: reclaim throttle quick "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    cmp-long p0, v2, v4

    if-lez p0, :cond_4

    move v1, v6

    :cond_4
    return v1
.end method

.method public final isReachReclaimProcThrottleSlow(IJJJ)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    cmp-long v0, p6, v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x1388

    if-nez v0, :cond_1

    add-long/2addr p4, p6

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    cmp-long p2, p2, v4

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x672

    move-wide p4, p6

    :goto_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    cmp-long p2, p4, v1

    if-gtz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Quota PPN skip: reclaim throttle slow "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    cmp-long p0, p4, v1

    if-lez p0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public final nandSwapAlwaysRunningProcess(J)V
    .locals 36

    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sget v0, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    const/4 v8, 0x1

    add-int/2addr v0, v8

    sput v0, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v13, 0x0

    cmp-long v0, p1, v13

    if-lez v0, :cond_19

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->resizeRemainReleaseTargetIfNesseray(J)J

    move-result-wide v15

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide v3, v13

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, " KB"

    const-string v1, " process, reclaim "

    if-eqz v0, :cond_17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v13, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v14, 0xc8

    if-lt v0, v14, :cond_1

    const/16 v8, 0x12c

    if-gt v0, v8, :cond_1

    if-eqz v6, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    const/16 v14, 0xa

    goto :goto_5

    :cond_1
    if-eqz v6, :cond_6

    const/16 v8, 0x64

    if-lt v0, v8, :cond_2

    if-ge v0, v14, :cond_2

    const/16 v14, 0xb

    goto :goto_3

    :cond_2
    const/16 v8, -0x2bc

    if-eq v0, v8, :cond_5

    const/16 v8, -0x320

    if-ne v0, v8, :cond_3

    goto :goto_2

    :cond_3
    const/16 v8, -0x3e8

    if-ne v0, v8, :cond_4

    const/16 v14, 0xd

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    goto :goto_4

    :cond_5
    :goto_2
    const/16 v14, 0xc

    :goto_3
    const/4 v8, 0x2

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/4 v14, 0x0

    :goto_5
    const-string v7, " "

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Quota PPN skip: none_type "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v1, -0x1

    const-string v2, "NANDSWAP_TYPE_NONE"

    move-object/from16 v0, p0

    move-wide v6, v3

    move-wide v3, v10

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_8
    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v0}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quota PPN skip: app launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v1, -0x1

    const-string v2, "app launched"

    move-object/from16 v0, p0

    move-wide v13, v3

    move-wide v3, v10

    move-wide v6, v13

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    sub-long v0, v15, v13

    const-wide/32 v2, 0xc800

    cmp-long v2, v0, v2

    if-lez v2, :cond_a

    iget-object v2, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v2, v0, v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$mdelayAlwaysRunningQuotaPPN(Lcom/android/server/chimera/PerProcessNandswap;J)V

    :cond_a
    return-void

    :cond_b
    invoke-virtual {v9, v13, v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->isReachReclaimProcThrottleQuick(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quota PPN skip: reclaim throttle quick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_6
    move-wide/from16 v31, v3

    move/from16 v22, v6

    move-wide/from16 v29, v10

    move-wide/from16 v23, v15

    const/4 v15, 0x0

    move v11, v5

    goto/16 :goto_7

    :cond_d
    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v20, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v1, :cond_e

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quota PPN skip: no nandswap record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    invoke-static {v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v21

    move-wide/from16 v22, v3

    move-object v4, v2

    int-to-long v2, v8

    const/16 v24, 0x0

    aget-wide v25, v21, v24

    const/4 v0, 0x1

    aget-wide v27, v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v29, v10

    move-object/from16 v11, v20

    move-object v10, v1

    move v1, v13

    move-wide/from16 v31, v22

    move-object/from16 v33, v4

    move v11, v5

    move-wide/from16 v4, v25

    move/from16 v22, v6

    move-wide/from16 v34, v15

    move-object/from16 v16, v7

    move/from16 v15, v24

    move-wide/from16 v23, v34

    move-wide/from16 v6, v27

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->isReachReclaimProcThrottleSlow(IJJJ)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quota PPN skip: reclaim throttle slow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_7
    move v5, v11

    move/from16 v6, v22

    move-wide/from16 v15, v23

    move-wide/from16 v10, v29

    move-wide/from16 v3, v31

    const/4 v8, 0x1

    const-wide/16 v13, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v9, v10, v14, v8, v15}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;IIZ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    add-int/lit8 v5, v11, 0x1

    sget v0, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/chimera/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    const/4 v2, 0x2

    invoke-virtual {v0, v10, v2}, Lcom/android/server/chimera/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    invoke-static {v13}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    move-result-object v0

    aget-wide v2, v21, v15

    aget-wide v6, v21, v1

    add-long/2addr v2, v6

    aget-wide v6, v0, v15

    sub-long/2addr v2, v6

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Quota PPN reclaimed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v7, v21, v15

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget-wide v10, v21, v7

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v15

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v0, v7

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const/4 v7, 0x1

    :goto_8
    const-wide/16 v18, 0x0

    cmp-long v0, v2, v18

    if-lez v0, :cond_14

    move-wide/from16 v0, v31

    add-long v10, v0, v2

    cmp-long v0, v10, v23

    if-ltz v0, :cond_13

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quota PPN complete: nandswap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v1, 0x1

    const-string v2, "complete"

    move-object/from16 v0, p0

    move-wide/from16 v3, v29

    move-wide v6, v10

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_13
    move-wide v3, v10

    goto :goto_9

    :cond_14
    move-wide/from16 v0, v31

    move-wide v3, v0

    goto :goto_9

    :cond_15
    move-wide/from16 v5, v31

    const/4 v7, 0x1

    const-wide/16 v18, 0x0

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quota PPN failed: ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nandswapAction "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nandswapType "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-wide v3, v5

    move v5, v11

    :goto_9
    move v8, v7

    move-wide/from16 v13, v18

    move/from16 v6, v22

    move-wide/from16 v15, v23

    move-wide/from16 v10, v29

    goto/16 :goto_0

    :cond_17
    move-wide/from16 v29, v10

    move v11, v5

    move-wide v5, v3

    move-object v3, v2

    move-object v2, v1

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v9, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quota PPN reclaim not enough: nandswap "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/4 v1, 0x0

    const-string/jumbo v2, "not enough"

    move-object/from16 v0, p0

    move-wide/from16 v3, v29

    move-wide v13, v5

    move v5, v11

    move-wide v6, v13

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void

    :cond_19
    move-wide/from16 v29, v10

    const/4 v1, -0x1

    const-string v2, "Target < 0"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, v29

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    return-void
.end method

.method public final nandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapNonActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1388

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    const-string p1, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {p8, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p8

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-long/2addr v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p3, v3

    move-object p4, p2

    move-object p5, v0

    move-object p6, v1

    move-object p7, v4

    move-object p8, v2

    filled-new-array/range {p3 .. p8}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x13d6e9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public final resizeRemainReleaseTargetIfNesseray(J)J
    .locals 6

    const-wide/32 v0, 0x7d000

    cmp-long v2, p1, v0

    const-string/jumbo v3, "sizeToReclaim is too big: "

    if-lez v2, :cond_1

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",reset to max value: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide p1, v0

    :cond_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramWritebackLimit()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    mul-long/2addr v0, v4

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",reset to zramWriteBacklimitKb: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-wide p1, v0

    :cond_3
    return-wide p1
.end method
