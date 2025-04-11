.class public Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public info:Lcom/android/server/ContainerServiceInfo;

.field public mBound:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public mContainerService:Lcom/samsung/android/knox/IContainerService;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/ContainerServiceWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBound(Lcom/android/server/ContainerServiceWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmContainerService(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerRestart(Lcom/android/server/ContainerServiceWrapper;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->triggerRestart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxService::ContainerServiceWrapper"

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    iget p1, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput p1, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->category:Ljava/lang/String;

    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already bound"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const v4, 0x4000001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t bind to container service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public disconnect()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    iput-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Ubinding service is successful..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public isBound()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " action:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final triggerRestart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
