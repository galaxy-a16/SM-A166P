.class public final Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;
.super Landroid/os/Handler;
.source "PerProcessNandswap.java"


# instance fields
.field public final LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

.field public final RECENT_ENTRY_PROCESS_COUNT:I

.field public final TAG:Ljava/lang/String;

.field public recentEntryProcessNames:Ljava/util/ArrayList;

.field public final self:Lcom/android/server/chimera/PerProcessNandswap;

.field public final synthetic this$0:Lcom/android/server/chimera/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;)V
    .locals 0

    .line 1940
    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    .line 1941
    invoke-static {p1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmMsgThread(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/ServiceThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "com.sec.android.app.launcher"

    .line 1934
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 1937
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    const/4 p1, 0x2

    .line 1938
    iput p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->RECENT_ENTRY_PROCESS_COUNT:I

    .line 1942
    const-class p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 1943
    iput-object p2, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->self:Lcom/android/server/chimera/PerProcessNandswap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Lcom/android/server/chimera/PerProcessNandswap;)V

    return-void
.end method


# virtual methods
.method public final acceptPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;
    .locals 2

    .line 2348
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_0

    .line 2350
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2355
    :goto_0
    iget-object p0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x1

    .line 2356
    :try_start_0
    iput v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 2357
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final changePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V
    .locals 2

    .line 2326
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2327
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePPRState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ppnState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    iget-object p0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2332
    :try_start_0
    iput p2, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 2333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final checkCanDoPPRForCachedApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 2

    .line 2129
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2132
    :cond_0
    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkTimeoutPPRForCachedApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCanDoPPRForCachedAppPsi(I)Z
    .locals 0

    .line 2119
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    .line 2122
    :cond_0
    iget p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    if-nez p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkDHAHeavyProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 0

    .line 2147
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2148
    iget-object p1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->IsForceKillHeavyProcess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final checkPPRAppCondition(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 3

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nandswap check_ppr_app: pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2305
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkDHAHeavyProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2306
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2307
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny reason: DHA heavy process"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 2309
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->isExceptionApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2310
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2311
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny reason: exception app"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final checkPPRCondition()Z
    .locals 6

    .line 2268
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/chimera/PerProcessNandswap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 2273
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2274
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: pending app count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    .line 2276
    :cond_2
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    .line 2277
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2278
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: delayed app count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {p0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityAppDelayed(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2279
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2278
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    .line 2283
    :cond_4
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 2284
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2285
    iget-object v2, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v2, v0}, Lcom/android/server/chimera/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v2

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2286
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2287
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nandswap check_ppr:  deny reason: swap space not enough - free "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " KB over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2287
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    const/4 p0, 0x1

    return p0

    .line 2269
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2270
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    const-string v0, "Nandswap check_ppr:  deny reason: disabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1
.end method

.method public final checkTimeoutPPRForCachedApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 4

    .line 2140
    iget-wide v0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 2142
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2143
    iget-wide p0, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    sub-long/2addr v1, p0

    const-wide/32 p0, 0xea60

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final denyPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 1

    const/4 v0, 0x0

    .line 2340
    invoke-virtual {p0, p1, v0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1949
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetWRITEBACK_ENABLED(Lcom/android/server/chimera/PerProcessNandswap;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->getSlotCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 1952
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, " pid: "

    const/4 v2, 0x2

    const-string v3, " pid:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2110
    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    goto/16 :goto_5

    .line 1970
    :pswitch_0
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1973
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez p1, :cond_2

    return-void

    .line 1977
    :cond_2
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1978
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try_to_nandswap_by_freeze_event_msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByFreezeEvent(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    goto/16 :goto_7

    .line 1955
    :pswitch_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 1958
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez p1, :cond_5

    return-void

    .line 1962
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1963
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try_to_nandswap_by_bg_event_msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByBgEvent(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    goto/16 :goto_7

    .line 1985
    :pswitch_2
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPsiEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1988
    :cond_7
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1989
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1990
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try_to_nandswap_by_psi_event_msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByPsiEvent()V

    goto/16 :goto_7

    .line 2066
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2070
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    array-length v1, v0

    move v3, v5

    :goto_0
    if-ge v3, v1, :cond_a

    aget-object v6, v0, v3

    .line 2071
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v4, v5

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    :goto_1
    if-nez v4, :cond_c

    .line 2077
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2078
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_entry_msg: reject launcher app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void

    :cond_c
    move v0, v5

    .line 2084
    :goto_2
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 2085
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2086
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2088
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v4, v5

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2093
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_10

    .line 2095
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2096
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_entry_msg: reject recent app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    .line 2100
    :cond_10
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_11

    .line 2101
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2103
    :cond_11
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2104
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_entry_msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2047
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2048
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_12

    return-void

    .line 2053
    :cond_12
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v1}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2054
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmKeyApps(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    :cond_13
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2058
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_died_msg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_14
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 2012
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2013
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_15

    return-void

    .line 2018
    :cond_15
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v1}, Lcom/android/server/chimera/PerProcessNandswap;->isKeyAppEnable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2019
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$sfgetSTATUS_ALREADY_PPN()Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmKeyApps(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v6, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2020
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmKeyApps(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/Map;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$sfgetSTATUS_KEY_APP()Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    :cond_16
    iget v1, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->ppnState:I

    if-eq v1, v4, :cond_17

    if-eq v1, v2, :cond_17

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 2027
    :cond_17
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2028
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_reentry_msg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_18
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isPrefetchActionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2032
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "madvise_prefetch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$sfgetFAST_MADVISE_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2034
    invoke-static {p1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$smprefetchProcessFast(I)J

    goto :goto_4

    .line 2036
    :cond_19
    invoke-static {p1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$smprefetchProcess(I)J

    .line 2041
    :cond_1a
    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    goto :goto_7

    .line 1997
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    .line 1998
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1999
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2000
    iget-object v2, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 2001
    iget v4, v0, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    .line 2003
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2004
    iget-object v5, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change_ppr_state_msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ppnState:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;I)V

    goto :goto_7

    .line 2110
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_1c
    :goto_6
    return-void

    :catch_0
    move-exception p0

    .line 2114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isExceptionApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 5

    .line 2153
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$sfgetNANDSWAP_EXCEPTION_PKGNAMES()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2154
    iget-object v4, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public final startNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 2319
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmPendingNandswapActivityApp(Lcom/android/server/chimera/PerProcessNandswap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2322
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap;->mNandswapHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 2321
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final tryToNandswapByBgEvent(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 2164
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2168
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2169
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try_to_nandswap_by_bg_event not accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final tryToNandswapByFreezeEvent(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 2178
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2181
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2182
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try_to_nandswap_by_freeze_event not accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final tryToNandswapByPsiEvent()V
    .locals 10

    .line 2194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkPPRCondition()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2198
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v1

    .line 2199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v3

    :goto_0
    if-ltz v2, :cond_4

    if-lez v4, :cond_4

    .line 2201
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 2202
    iget-object v6, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v6, :cond_3

    array-length v7, v6

    if-gtz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 2206
    aget-object v6, v6, v7

    .line 2209
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 2213
    :cond_2
    iget v6, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_3

    .line 2214
    iget-object v6, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v6}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/PerProcessNandswap;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v6

    iget v7, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-interface {v6, v7}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v6

    aget v6, v6, v3

    const/16 v7, 0x352

    if-lt v6, v7, :cond_3

    .line 2216
    iget v7, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, v7}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedAppPsi(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2217
    new-instance v7, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    iget-object v8, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v9, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;-><init>(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;II)V

    .line 2218
    invoke-virtual {p0, v7}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public final tryToNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z
    .locals 4

    .line 2233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nandswap check_ppr (pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2235
    invoke-virtual {p0}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkPPRCondition()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2238
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    return v2

    .line 2240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->checkPPRAppCondition(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2243
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    return v2

    .line 2245
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    iget-object v3, p1, Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$misKeyApp(Lcom/android/server/chimera/PerProcessNandswap;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2248
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2249
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " deny by key app"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->denyPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    return v2

    .line 2256
    :cond_3
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2257
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " accept"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->acceptPPRRequest(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;

    move-result-object p1

    .line 2260
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$NandswapMsgHandler;->startNandswapProcess(Lcom/android/server/chimera/PerProcessNandswap$NandswapRecord;)V

    const/4 p0, 0x1

    return p0
.end method
