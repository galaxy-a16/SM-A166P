.class public Lcom/android/server/desktopmode/McfManager;
.super Ljava/lang/Object;
.source "McfManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

.field public final mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

.field public mBleAdvertiserServiceTimeout:J

.field public final mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public mBleScannerState:Ljava/lang/String;

.field public mBleStartScanReason:I

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mIsRequestingBindMcfAdapter:Z

.field public mLastBleScanFailedErrorCode:I

.field public mLastBleScanResult:Ljava/lang/String;

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mRegisterIntent:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakeLockTimeout:J

.field public final mWirelessDeXBleAddressSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBleAdvertiserServiceTimeout(Lcom/android/server/desktopmode/McfManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMcfHandler(Lcom/android/server/desktopmode/McfManager;)Lcom/android/server/desktopmode/McfManager$McfHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastBleScanFailedErrorCode(Lcom/android/server/desktopmode/McfManager;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanFailedErrorCode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastBleScanResult(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanResult:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAirplaneModeChanged(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handleAirplaneModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleBleAdvertiserServiceUnbind(Lcom/android/server/desktopmode/McfManager;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/McfManager;->handleBleAdvertiserServiceUnbind(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDualModeStopLoadingScreen(Lcom/android/server/desktopmode/McfManager;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->handleDualModeStopLoadingScreen(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterScannerScanResult(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handleMcfAdapterScannerScanResult()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterServiceConnected(Lcom/android/server/desktopmode/McfManager;ILcom/samsung/android/mcf/McfAdapter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/McfManager;->handleMcfAdapterServiceConnected(ILcom/samsung/android/mcf/McfAdapter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfAdapterServiceDisconnected(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handleMcfAdapterServiceDisconnected()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMcfServiceStateChanged(Lcom/android/server/desktopmode/McfManager;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->handleMcfServiceStateChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNearbyScanningChanged(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handleNearbyScanningChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePackageStateChanged(Lcom/android/server/desktopmode/McfManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handlePackageStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSemBleStateChanged(Lcom/android/server/desktopmode/McfManager;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->handleSemBleStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleWirelessDexBleMacAddressChanged(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->handleWirelessDexBleMacAddressChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [B

    .line 63
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/desktopmode/McfManager;->mScanFilterData:[B

    new-array v0, v0, [B

    .line 67
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/desktopmode/McfManager;->mScanFilterDataMask:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/desktopmode/BleAdvertiserServiceManager;)V
    .locals 3

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    .line 114
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 117
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    const-wide/16 v1, 0x0

    .line 119
    iput-wide v1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 124
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 126
    new-instance v0, Lcom/android/server/desktopmode/McfManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/McfManager$1;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    new-instance v0, Lcom/android/server/desktopmode/McfManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/McfManager$2;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 176
    new-instance v1, Lcom/android/server/desktopmode/McfManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$3;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    .line 187
    new-instance v1, Lcom/android/server/desktopmode/McfManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$4;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    .line 213
    new-instance v1, Lcom/android/server/desktopmode/McfManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/desktopmode/McfManager$5;-><init>(Lcom/android/server/desktopmode/McfManager;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    .line 233
    new-instance v1, Lcom/android/server/desktopmode/McfManager$6;

    const-string v2, "ble_mac_address_list"

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/McfManager$6;-><init>(Lcom/android/server/desktopmode/McfManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mWirelessDeXBleAddressSettingChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 246
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    .line 248
    new-instance v2, Lcom/android/server/desktopmode/McfManager$McfHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p0, p2}, Lcom/android/server/desktopmode/McfManager$McfHandler;-><init>(Lcom/android/server/desktopmode/McfManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 249
    iput-object p3, p0, Lcom/android/server/desktopmode/McfManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 250
    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 251
    iput-object p4, p0, Lcom/android/server/desktopmode/McfManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 252
    invoke-virtual {p4, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 253
    iput-object p5, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    const-string/jumbo p2, "power"

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "DesktopMode:McfManager"

    .line 256
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final acquireWakeLock(J)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2710

    add-long/2addr p1, v0

    .line 602
    iput-wide p1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 603
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public final bindMcfAdapter(I)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->isAirplaneModeOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    :cond_0
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMcfAdapter reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->bleStartScanReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    iput p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleStartScanReason:I

    .line 301
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapterListener:Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;

    invoke-static {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    :cond_2
    return-void
.end method

.method public final bleMacAddressListExists()Z
    .locals 3

    .line 334
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "ble_mac_address_list"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 336
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bleMacAddressListExists bleMacAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bleScannerStopScan()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const-string v0, "BLE_SCANNER_STATE_STOP_SCAN_REQUEST"

    .line 329
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final bleStartScanReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "BLE_START_SCAN_REASON_NEARBY_SCANNING_CHANGED"

    return-object p0

    :pswitch_1
    const-string p0, "BLE_START_SCAN_REASON_PACKAGE_STATE_CHANGED"

    return-object p0

    :pswitch_2
    const-string p0, "BLE_START_SCAN_REASON_BLUETOOTH_STATUS_CHANGED"

    return-object p0

    :pswitch_3
    const-string p0, "BLE_START_SCAN_REASON_AIRPLANE_MODE_CHANGED"

    return-object p0

    :pswitch_4
    const-string p0, "BLE_START_SCAN_REASON_DEX_BLE_ADDRESS_CHANGED"

    return-object p0

    :pswitch_5
    const-string p0, "BLE_START_SCAN_REASON_BOOT_COMPLETE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deinitialize()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unregisterIntent()V

    .line 268
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unbindMcfAdapter()V

    const-wide/16 v0, 0x0

    .line 269
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/McfManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBleAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->isBleAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBleScannerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBleStartScanReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleStartScanReason:I

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/McfManager;->bleStartScanReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBleAdvertiserServiceTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWakeLockTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastBleScanFailedErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanFailedErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 698
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastBleScanResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mLastBleScanResult:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 701
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBleMacAddressList()[Ljava/lang/String;
    .locals 2

    .line 341
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "ble_mac_address_list"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 347
    :cond_0
    sget-object p0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v0, "There is no bleMacAddress"

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public final handleAirplaneModeChanged()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->isAirplaneModeOff(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    :cond_0
    return-void
.end method

.method public final handleBleAdvertiserServiceUnbind(J)V
    .locals 3

    .line 442
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBleAdvertiserServiceUnbind timeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mBleScannerState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    const-string p2, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "BLE_SCANNER_STATE_SCAN_TIMEOUT"

    .line 444
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    :cond_1
    const-wide/16 p1, -0x1

    .line 446
    iput-wide p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 447
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->unbindService()V

    .line 448
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->releaseWakeLock()V

    return-void
.end method

.method public final handleDualModeStopLoadingScreen(Z)V
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleMacAddressListExists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 412
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->isBound()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    .line 415
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->isBleAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    const-wide/32 v0, 0xafc8

    .line 418
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleMcfAdapterScannerScanResult()V
    .locals 3

    const-string v0, "BLE_SCANNER_STATE_SCAN_RESULT"

    .line 520
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v1}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 523
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 524
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v1, "handleMcfAdapterScannerScanResult bindService"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceManager:Lcom/android/server/desktopmode/BleAdvertiserServiceManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/BleAdvertiserServiceManager;->bindService()V

    :cond_1
    const-wide/32 v0, 0xea60

    .line 527
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void
.end method

.method public final handleMcfAdapterServiceConnected(ILcom/samsung/android/mcf/McfAdapter;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "BLE_SCANNER_STATE_MCF_ADAPTER_BIND"

    .line 484
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 485
    iput-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    .line 488
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz p2, :cond_6

    .line 489
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleMcfAdapterServiceConnected mMcfAdapter"

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez p2, :cond_3

    .line 492
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleMcfAdapterServiceConnected getBleAdapter"

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_2
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdapterCallback:Lcom/samsung/android/mcf/ble/BleAdapterCallback;

    const/16 v1, 0x23

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 496
    :cond_3
    iget-object p2, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    .line 497
    invoke-interface {p2, v0}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->getBleMacAddressList()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->tryBleScannerStartScan([Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->retryBleScannerStartScan(I)V

    goto :goto_0

    .line 503
    :cond_5
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string p1, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_6
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string p1, "handleMcfAdapterServiceConnected mMcfAdapter null"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 509
    sget-object p1, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMcfAdapterServiceConnected Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public final handleMcfAdapterServiceDisconnected()V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->unbindMcfAdapter()V

    const-string v0, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    .line 515
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 516
    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/McfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void
.end method

.method public final handleMcfServiceStateChanged(I)V
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    .line 474
    invoke-interface {p0, p1}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 475
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string p1, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :cond_0
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string p1, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to check unbind"

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final handleNearbyScanningChanged()V
    .locals 2

    .line 559
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v1, "handleNearbyScanningChanged"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3ee

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->handleMcfAdapterServiceDisconnected()V

    :goto_0
    return-void
.end method

.method public final handlePackageStateChanged()V
    .locals 1

    const/16 v0, 0x3ed

    .line 425
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    return-void
.end method

.method public final handleSemBleStateChanged(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    .line 546
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 549
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSemBleStateChanged STATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    :cond_1
    const/16 p1, 0x3ec

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    :cond_2
    return-void
.end method

.method public final handleWirelessDexBleMacAddressChanged(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 453
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleWirelessDexBleMacAddressChanged deleted."

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->deinitialize()V

    goto :goto_0

    .line 456
    :cond_1
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string v0, "handleWirelessDexBleMacAddressChanged changed."

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez p1, :cond_3

    const/16 p1, 0x3ea

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->initialize(I)V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleScannerStopScan()V

    const-string p1, "BLE_SCANNER_STATE_SCAN_FILTER_CHANGE"

    .line 463
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 464
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    const/16 v0, 0x12d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 465
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public initialize(I)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleMacAddressListExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->registerIntent()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/McfManager;->bindMcfAdapter(I)V

    :cond_0
    return-void
.end method

.method public final isAirplaneModeOff(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    :cond_1
    :goto_0
    return p0
.end method

.method public final isBleAvailable()Z
    .locals 1

    .line 616
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 617
    invoke-interface {p0, v0}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p0

    goto :goto_1

    .line 619
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 620
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move p0, v0

    :goto_1
    return p0
.end method

.method public final isNearbyScanningOn(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    .line 571
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "nearby_scanning_enabled"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p1

    .line 575
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method public final registerIntent()V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    if-nez v0, :cond_1

    .line 274
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerIntent"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.nearbyscanning"

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public final releaseWakeLock()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 609
    iput-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLockTimeout:J

    .line 610
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public final retryBleScannerStartScan(I)V
    .locals 3

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const-string v0, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY_YET"

    .line 399
    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    .line 401
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string p1, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY"

    .line 405
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final tryBleAdvertiserServiceUnbind(J)V
    .locals 3

    .line 429
    iget-wide v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 430
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryBleAdvertiserServiceUnbind timeout changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iput-wide p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleAdvertiserServiceTimeout:J

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->releaseWakeLock()V

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/McfManager;->acquireWakeLock(J)V

    .line 435
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfHandler:Lcom/android/server/desktopmode/McfManager$McfHandler;

    .line 437
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 436
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final tryBleScannerStartScan([Ljava/lang/String;)V
    .locals 10

    .line 354
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_5

    .line 355
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_5

    .line 357
    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    .line 359
    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v0

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 365
    array-length v4, p1

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p1, v1

    .line 366
    invoke-static {v5}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 367
    sget-boolean v6, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tryBleScannerStartScan valid splitBleMac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    new-instance v6, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    .line 370
    sget-object v7, Lcom/android/server/desktopmode/McfManager;->mScanFilterData:[B

    sget-object v8, Lcom/android/server/desktopmode/McfManager;->mScanFilterDataMask:[B

    const/16 v9, 0x75

    invoke-virtual {v6, v9, v7, v8}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 372
    invoke-virtual {v6, v5}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    .line 373
    invoke-virtual {v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v5

    .line 375
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 378
    :cond_1
    sget-object v6, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tryBleScannerStartScan invalid splitBleMac="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 384
    iget-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iget-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScanCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    move-result p1

    .line 386
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 387
    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryBleScannerStartScan BLE_SCANNER_STATE_START_SCAN_REQUEST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p1, "BLE_SCANNER_STATE_START_SCAN_REQUEST"

    .line 388
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    goto :goto_2

    .line 390
    :cond_4
    sget-object p1, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "tryBleScannerStartScan BLE_SCANNER_STATE_NO_SCAN_TARGET"

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "BLE_SCANNER_STATE_NO_SCAN_TARGET"

    .line 391
    iput-object p1, p0, Lcom/android/server/desktopmode/McfManager;->mBleScannerState:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method public final unbindMcfAdapter()V
    .locals 2

    .line 309
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unbindMcfAdapter"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/desktopmode/McfManager;->bleScannerStopScan()V

    .line 313
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    .line 315
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    .line 320
    iput-object v1, p0, Lcom/android/server/desktopmode/McfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mIsRequestingBindMcfAdapter:Z

    :cond_2
    return-void
.end method

.method public final unregisterIntent()V
    .locals 2

    .line 285
    iget-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    if-eqz v0, :cond_1

    .line 286
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/McfManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterIntent"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/android/server/desktopmode/McfManager;->mRegisterIntent:Z

    .line 288
    iget-object v0, p0, Lcom/android/server/desktopmode/McfManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/desktopmode/McfManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
