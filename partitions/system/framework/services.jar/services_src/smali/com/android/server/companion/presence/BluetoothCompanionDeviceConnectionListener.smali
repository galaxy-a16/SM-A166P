.class public Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothCompanionDeviceConnectionListener.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

.field public final mPendingConnectedDevices:Landroid/util/SparseArray;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    .line 74
    iput-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 75
    iput-object p3, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    .line 76
    iput-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 82
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 83
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 82
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 84
    iget-object p1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    :cond_0
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Address changes are not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CDM_BluetoothCompanionDeviceConnectionListener"

    const-string v2, "Current user is not in unlocking or unlocked stage yet. Notify the application when the phone is unlocked"

    .line 104
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 109
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    :goto_0
    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 159
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 172
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    if-eqz p2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceConnected(I)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mCallback:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;->onBluetoothCompanionDeviceDisconnected(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 144
    iget-object p2, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    monitor-enter p2

    .line 145
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 147
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/4 p2, 0x0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
