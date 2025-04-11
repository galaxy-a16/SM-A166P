.class public Lcom/android/server/companion/presence/BleCompanionDeviceScanner;
.super Ljava/lang/Object;
.source "BleCompanionDeviceScanner.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;


# static fields
.field public static final SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field public mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

.field public final mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

.field public final mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field public mScanning:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmMainThreadHandler(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmScanning(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckBleState(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceFound(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceLost(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->nameForBleScanCallbackType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 454
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v1, 0x6

    .line 455
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 456
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/16 v1, 0x65

    .line 458
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    const/16 v1, -0x4b

    .line 459
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    .line 330
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$2;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 111
    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 112
    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    .line 113
    new-instance p1, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    invoke-direct {p1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    iput-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    return-void
.end method

.method public static nameForBleScanCallbackType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "MATCH_LOST"

    goto :goto_0

    :cond_1
    const-string v0, "FIRST_MATCH"

    goto :goto_0

    :cond_2
    const-string v0, "ALL_MATCHES"

    .line 424
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkBleState()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 159
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_3

    return-void

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :goto_0
    return-void
.end method

.method public final enforceInitialized()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not initialized"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 123
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->checkBleState()V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V

    .line 128
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already initialized"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final notifyDeviceFound(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 278
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 281
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 282
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceFound(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyDeviceLost(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 291
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 295
    iget-object v1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mCallback:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;->onBleCompanionDeviceLost(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 0

    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->restartScan()V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mMainThreadHandler:Lcom/android/server/companion/presence/BleCompanionDeviceScanner$MainThreadHandler;

    new-instance p2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final registerBluetoothStateBroadcastReceiver(Landroid/content/Context;)V
    .locals 2

    .line 300
    new-instance v0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner$1;-><init>(Lcom/android/server/companion/presence/BleCompanionDeviceScanner;)V

    .line 318
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 319
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 320
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restartScan()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 136
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->stopScanIfNeeded()V

    .line 142
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->startScan()V

    return-void
.end method

.method public final startScan()V
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 193
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    const-string v1, "CDM_BleCompanionDeviceScanner"

    if-eqz v0, :cond_0

    const-string p0, "Scan is already in progress."

    .line 194
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_1

    const-string p0, "BLE is not available."

    .line 200
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v2}, Lcom/android/server/companion/AssociationStore;->getAssociations()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 207
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 213
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    .line 226
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    new-instance v4, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v4}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 229
    invoke-virtual {v4, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v3

    .line 231
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    sget-object v3, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->SCAN_SETTINGS:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Exception while starting BLE scanning"

    .line 241
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_7
    const-string p0, "BLE scanning is not turned on"

    .line 244
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final stopScanIfNeeded()V
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->enforceInitialized()V

    .line 252
    iget-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v0

    const-string v1, "CDM_BleCompanionDeviceScanner"

    if-eqz v0, :cond_1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mBleScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception while stopping BLE scanning"

    .line 264
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string v0, "BLE scanning is not turned on"

    .line 267
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 270
    iput-boolean v0, p0, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->mScanning:Z

    return-void
.end method
