.class public final Lcom/android/server/am/BatteryStatsService$LocalService;
.super Landroid/os/BatteryStatsInternal;
.source "BatteryStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/os/BatteryStatsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    return-void
.end method


# virtual methods
.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getMobileIfaces()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object p0

    return-object p0
.end method

.method public getWifiIfaces()[Ljava/lang/String;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiIfaces()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public noteBinderCallStats(IJLjava/util/Collection;)V
    .locals 8

    .line 563
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 565
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v5, p4

    .line 564
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteBinderThreadNativeIds([I)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBinderThreadNativeIds([I)V

    .line 574
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V
    .locals 3

    const-string v0, "BatteryStatsService"

    if-gez p4, :cond_0

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid uid for waking network packet: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->-$$Nest$fgetmContext(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 549
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 550
    invoke-virtual {p0, v1}, Lcom/android/server/am/BatteryStatsService$LocalService;->transportToSubsystem(Landroid/net/NetworkCapabilities;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not map transport for network: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while attributing wakeup by packet sent to uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    filled-new-array {p4}, [I

    move-result-object p1

    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public noteJobsDeferred(IIJ)V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteJobsDeferred(IIJ)V

    return-void
.end method

.method public varargs noteWakingAlarmBatch(J[I)V
    .locals 1

    .line 584
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public noteWakingSoundTrigger(JI)V
    .locals 1

    .line 579
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x3

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void
.end method

.method public final transportToSubsystem(Landroid/net/NetworkCapabilities;)I
    .locals 0

    const/4 p0, 0x1

    .line 534
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 536
    invoke-virtual {p1, p0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
