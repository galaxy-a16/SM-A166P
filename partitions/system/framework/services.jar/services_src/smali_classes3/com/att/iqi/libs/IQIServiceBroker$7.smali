.class Lcom/att/iqi/libs/IQIServiceBroker$7;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implementation service connected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " binder service "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {v0, p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/att/iqi/libs/IQIServiceBroker$7$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIServiceBroker$7$1;-><init>(Lcom/att/iqi/libs/IQIServiceBroker$7;)V

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "Exception while linking IBinder to death"

    invoke-static {v1, p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "Implementation service unexpectedly disconnected"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$7;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
