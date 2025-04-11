.class public Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNullBinding : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo p2, "onServiceConnected: Unable to find Knox Proxy Agent!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    monitor-exit p1

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p2, v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmIsNotify(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    iget-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p2, p2, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$monAgentReconnected(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmIsReconnection(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmService(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "KnoxService::ProxyAgentWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Knox Proxy Agent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fgetmInfo(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmProxyAgent(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$fputmBindPending(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;Z)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;->this$0:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;

    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->-$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
