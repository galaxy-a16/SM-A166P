.class public abstract Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.super Ljava/lang/Object;
.source "AbstractDeviceSyncManager.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

.field public mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

.field public mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public mServiceState:I

.field public final mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$2;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    new-instance v0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;-><init>(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;)Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->notifyStateChanged(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->registerServiceStateListener()V

    return-void
.end method


# virtual methods
.method public abstract bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
.end method

.method public connectServiceAsUser(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;Landroid/os/UserHandle;)Z
    .locals 6

    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "connectServiceAsUser : invalid request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.mcfds"

    const-string v5, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Caller"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p2, v0, v3}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectServiceAsUser : success "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    return v2

    :cond_1
    const-string p0, "connectService : failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disconnectService()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_0

    const-string p0, "disconnectService : invalid request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "disconnectService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->unregisterServiceStateListener()V

    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->stop()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "disconnectService : IllegalArgumentException"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    return-void
.end method

.method public getNearbyDeviceCount(I)I
    .locals 2

    const-string v0, "[MCF_DS_LIB]_DeviceSyncManager"

    const-string v1, "getNearbyDeviceCount"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_INPUT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 p1, 0x3e8

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public getServiceState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceState:I

    return p0
.end method

.method public initMcfDeviceSyncMainController(ILjava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMcfDeviceSyncMainController, bindReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasAutoSwitchDeviceMac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_BIND_REASON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KEY_AUTO_SWITCH_DEVICE"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 p1, 0x3ea

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    move-result p0

    return p0
.end method

.method public final notifyStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mListener:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final registerServiceStateListener()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mServiceStateListener:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "CALLBACK"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v1, 0xa

    invoke-interface {p0, v1, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public final unregisterServiceStateListener()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->obtain(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;->sendMessage(Landroid/os/Message;)I

    return-void
.end method
