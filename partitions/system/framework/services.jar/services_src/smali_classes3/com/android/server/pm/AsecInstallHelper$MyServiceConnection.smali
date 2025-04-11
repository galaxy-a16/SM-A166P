.class public Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;
.super Ljava/lang/Object;
.source "AsecInstallHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;


# instance fields
.field public mBinding:Z

.field public mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

.field public mUnbindingRunnable:Ljava/lang/Runnable;


# direct methods
.method public static bridge synthetic -$$Nest$fputmUnbindingRunnable(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;
    .locals 1

    sget-object v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;
    .locals 2

    const-class v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    invoke-direct {v1}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;-><init>()V

    sput-object v1, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    :cond_0
    sget-object v1, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->sInstance:Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindAndWaitUntilBound(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$sfgetCONTAINER_COMPONENT()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    :catch_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    const-wide/16 v2, 0x64

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->isBound()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    monitor-exit p0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public cancelAutoUnbound(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public getContainerService()Lcom/samsung/android/core/pm/containerservice/IContainerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    return-object p0
.end method

.method public final isBound()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/core/pm/containerservice/IContainerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mBinding:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mContainerService:Lcom/samsung/android/core/pm/containerservice/IContainerService;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public scheduleAutoUnbound(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection$1;-><init>(Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/AsecInstallHelper$MyServiceConnection;->mUnbindingRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->-$$Nest$sfgetUNBIND_DELAY()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
