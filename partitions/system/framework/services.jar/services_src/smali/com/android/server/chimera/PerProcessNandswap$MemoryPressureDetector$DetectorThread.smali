.class public final Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;
.super Ljava/lang/Thread;
.source "PerProcessNandswap.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)V
    .locals 0

    .line 2447
    iput-object p1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;-><init>(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: MemoryPressureDetector thread starts"

    .line 2450
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    iget-object v0, v0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-static {v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$mwaitForMemoryPressure(Lcom/android/server/chimera/PerProcessNandswap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2456
    iget-object p0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmAvailable(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;Z)V

    goto/16 :goto_2

    .line 2460
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v1}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2461
    :try_start_1
    iget-object v2, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v2, v0}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmPressureState(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;I)V

    .line 2462
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    goto :goto_1

    .line 2471
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    iget-object v1, v1, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->this$0:Lcom/android/server/chimera/PerProcessNandswap;

    invoke-virtual {v1}, Lcom/android/server/chimera/PerProcessNandswap;->isAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2472
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: ignored in app launch"

    .line 2473
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2477
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2478
    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmRecentNandswapMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v5}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetmTrialThrottlingMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    goto :goto_0

    .line 2481
    :cond_4
    iget-object v3, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v3}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fgetself(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;)Lcom/android/server/chimera/PerProcessNandswap;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/chimera/PerProcessNandswap;->-$$Nest$mtryToPerProcessNandswapByPsi(Lcom/android/server/chimera/PerProcessNandswap;I)V

    .line 2482
    iget-object v0, p0, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector$DetectorThread;->this$1:Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;

    invoke-static {v0, v1, v2}, Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;->-$$Nest$fputmRecentNandswapMS(Lcom/android/server/chimera/PerProcessNandswap$MemoryPressureDetector;J)V

    goto :goto_0

    .line 2466
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MemoryPressureDetector"

    .line 2467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nandswap: ignored ppr-trial by psi: level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 2462
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "MemoryPressureDetector"

    const-string/jumbo v1, "nandswap: MemoryPressureDetector thread crashed!"

    .line 2485
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p0, "MemoryPressureDetector"

    const-string/jumbo v0, "nandswap: MemoryPressureDetector thread terminated!"

    .line 2488
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
