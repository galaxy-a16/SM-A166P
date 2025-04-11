.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTimeUpdateService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "New default network %s; checking time."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmLock(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {v1, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/net/Network;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string/jumbo p1, "network available"

    invoke-static {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmLock(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/net/Network;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
