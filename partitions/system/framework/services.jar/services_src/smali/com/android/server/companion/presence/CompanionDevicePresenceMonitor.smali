.class public Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
.super Ljava/lang/Object;
.source "CompanionDevicePresenceMonitor.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;
.implements Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
.implements Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

.field public final mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

.field public final mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

.field public final mConnectedBtDevices:Ljava/util/Set;

.field public final mNearbyBleDevices:Ljava/util/Set;

.field public final mReportedSelfManagedDevices:Ljava/util/Set;

.field public final mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

.field public final mSimulated:Ljava/util/Set;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSimulated(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monDeviceGone(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/UserManager;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    .line 91
    new-instance v0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;-><init>(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    .line 96
    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 97
    iput-object p3, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    .line 98
    new-instance p3, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;-><init>(Landroid/os/UserManager;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V

    iput-object p3, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    .line 100
    new-instance p1, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p1, p2, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V

    iput-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .locals 2

    .line 304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither Shell nor Root"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "Companion Device Present: "

    .line 314
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 315
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "<empty>\n"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 316
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 317
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    :cond_0
    const-string v0, "\n"

    .line 321
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, "  Connected Bluetooth Devices: "

    .line 324
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 325
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "    "

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 328
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 329
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 330
    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 331
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "  Nearby BLE Devices: "

    .line 335
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 336
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    .line 339
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 340
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 341
    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 342
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_2

    :cond_4
    :goto_3
    const-string v2, "  Self-Reported Devices: "

    .line 346
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 347
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_5

    .line 350
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 351
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 352
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v2, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 353
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method

.method public final enforceAssociationExists(I)V
    .locals 2

    .line 225
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPendingConnectedDevices()Landroid/util/SparseArray;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    iget-object v0, v0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    iget-object p0, p0, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->mPendingConnectedDevices:Landroid/util/SparseArray;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 300
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 108
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->init(Landroid/bluetooth/BluetoothAdapter;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_0

    :cond_0
    const-string p1, "CDM_CompanionDevicePresenceMonitor"

    const-string v0, "BluetoothAdapter is NOT available."

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public isDevicePresent(I)Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 278
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBleCompanionDeviceFound(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBleCompanionDeviceLost(I)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceConnected(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceDisconnected(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionDevicePresenceMonitor"

    const-string v1, "Bluetooth device disconnect was detected. Pre-emptively marking the BLE device as lost."

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public final onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevice_Gone() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDevicePresenceMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Association with id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was NOT reported as present by this source ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Device id ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") is still present."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceDisappeared(I)V

    return-void
.end method

.method public final onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevice_Present() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDevicePresenceMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deviceid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") already present."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Association with id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is ALREADY reported as present by this source ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceAppeared(I)V

    return-void
.end method

.method public onSelfManagedDeviceConnected(I)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceDisconnected(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceReporterBinderDied(I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public simulateDeviceAppeared(I)V
    .locals 2

    .line 199
    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    .line 203
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    return-void
.end method

.method public simulateDeviceDisappeared(I)V
    .locals 2

    .line 215
    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    .line 219
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    .line 221
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method
