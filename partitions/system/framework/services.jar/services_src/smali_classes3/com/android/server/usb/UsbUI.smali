.class public Lcom/android/server/usb/UsbUI;
.super Ljava/lang/Object;
.source "UsbUI.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public isSupportWirelessCharging:Z

.field public final mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

.field public mBootCompleted:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

.field public final mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

.field public final mHostInterfaceObserver:Landroid/os/UEventObserver;

.field public final mHostPathObserver:Landroid/os/UEventObserver;

.field public mIsEmergencyMode:Z

.field public mIsHiccupState:Z

.field public mIsHostConnected:Z

.field public mIsUsbBlkNotiShown:Z

.field public mIsUsbPortWet:Z

.field public final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final mLoggingLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPortReceiver:Landroid/content/BroadcastReceiver;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSourcePower:Z

.field public mSupportDualRole:Z

.field public mSystemReady:Z

.field public final mUsbCcicObserver:Landroid/os/UEventObserver;

.field public final mUsbControlObserver:Landroid/os/UEventObserver;

.field public final mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetisSupportWirelessCharging(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEmergencyMode(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHiccupState(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsHostConnected(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUsbPortWet(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSourcePower(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportDualRole(Lcom/android/server/usb/UsbUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsEmergencyMode(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHiccupState(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsHostConnected(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsUsbPortWet(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSourcePower(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAllHostNotification(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->cancelAllHostNotification()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/usb/UsbUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloggingUsbWetDetection(Lcom/android/server/usb/UsbUI;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmakeLongToast(Lcom/android/server/usb/UsbUI;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->makeLongToast(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyIncreaseBatteryUsage(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbInterface(Lcom/android/server/usb/UsbUI;Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbRestrict(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyUsbWetDetection(Lcom/android/server/usb/UsbUI;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIIJ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostNotification(Lcom/android/server/usb/UsbUI;IIIJ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOnDisplay(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateChangedLocale(Lcom/android/server/usb/UsbUI;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->updateChangedLocale()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisIncludeOption(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUI;->isIncludeOption(JJ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    new-instance v1, Lcom/android/server/usb/UsbUI$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/usb/UsbUI$2;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbUI$2;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbUI;->mUsbWetStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/usb/UsbUI$3;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbUI$3;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbUI;->mPortReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/usb/UsbUI$4;

    invoke-direct {v4, p0}, Lcom/android/server/usb/UsbUI$4;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbUI;->mBatteryEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/server/usb/UsbUI$5;

    invoke-direct {v5, p0}, Lcom/android/server/usb/UsbUI$5;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbUI;->mEmergencyModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Lcom/android/server/usb/UsbUI$6;

    invoke-direct {v6, p0}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbUI;->mHostPathObserver:Landroid/os/UEventObserver;

    new-instance v7, Lcom/android/server/usb/UsbUI$7;

    invoke-direct {v7, p0}, Lcom/android/server/usb/UsbUI$7;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v7, p0, Lcom/android/server/usb/UsbUI;->mHostInterfaceObserver:Landroid/os/UEventObserver;

    new-instance v8, Lcom/android/server/usb/UsbUI$8;

    invoke-direct {v8, p0}, Lcom/android/server/usb/UsbUI$8;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v8, p0, Lcom/android/server/usb/UsbUI;->mUsbControlObserver:Landroid/os/UEventObserver;

    new-instance v9, Lcom/android/server/usb/UsbUI$9;

    invoke-direct {v9, p0}, Lcom/android/server/usb/UsbUI$9;-><init>(Lcom/android/server/usb/UsbUI;)V

    iput-object v9, p0, Lcom/android/server/usb/UsbUI;->mUsbCcicObserver:Landroid/os/UEventObserver;

    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v10, Lcom/android/server/usb/UsbUI$UsbUIHandler;

    invoke-direct {v10, p0, p2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;-><init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    const/4 v10, 0x1

    const-string v11, "UsbUI"

    invoke-virtual {p2, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance p2, Ljava/io/File;

    const-string v0, "/sys/class/typec"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    const-string p0, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v6, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVTYPE=usb_interface"

    invoke-virtual {v7, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/sec/ccic"

    invoke-virtual {v9, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    invoke-virtual {v8, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static areSettableOptions(J)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x200

    and-long/2addr p0, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

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

.method public static isIncludeOption(JJ)Z
    .locals 0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bootCompleted()V
    .locals 8

    const-string v0, "UsbUI"

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    const-string v7, "add"

    invoke-virtual {p0, v7, v5, v6, v4}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancelAllHostNotification()V
    .locals 1

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    return-void
.end method

.method public final cancelNotification(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 1

    const-string p1, "UsbUI:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSystemReady="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mBootCompleted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSupportDualRole="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsEmergencyMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsHostConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mSourcePower="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsHiccupState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mIsUsbPortWet="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isUsbWet()Z
    .locals 4

    const-string p0, "UsbUI"

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/ccic/water"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsbWet: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    const-string v2, "Can\'t read /sys/class/sec/ccic/water"

    invoke-static {p0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0
.end method

.method public final loggingUsbWetDetection(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd/HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/log/wet_detect.log"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "%s %s%n"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catch_0
    :try_start_3
    const-string p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    :goto_0
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    :goto_1
    :try_start_4
    const-string p1, "UsbUI"

    const-string v1, "Can\'t write to /data/log/wet_detect.log"

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_3
    :try_start_6
    const-string p1, "UsbUI"

    const-string v0, "Can\'t close stream"

    goto :goto_0

    :cond_0
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-void

    :goto_3
    if-eqz v0, :cond_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catch_4
    :try_start_8
    const-string v0, "UsbUI"

    const-string v1, "Can\'t close stream"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public final makeLongToast(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method public final makeShortToast(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method public final notifyIncreaseBatteryUsage(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const p1, 0x1040e9b

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->makeShortToast(I)V

    const/16 v1, 0x6b

    const/4 v2, 0x0

    const v3, 0x1040e9b

    const-wide/16 v4, 0x8a

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x6b

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    :goto_0
    return-void
.end method

.method public final notifyUsbInterface(Ljava/lang/String;III)V
    .locals 9

    const-string v0, "add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "remove"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {v1, p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo p4, "notifyUsbInterface: [%d, %d, %d]"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "UsbUI"

    invoke-static {p4, p3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/16 p4, 0x8

    if-eq p2, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    if-ne p2, p3, :cond_3

    const/16 v4, 0x7c

    const v5, 0x1040e86

    const/4 v6, 0x0

    const-wide/16 v7, 0x2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-ne p2, p3, :cond_3

    const/16 p1, 0x7c

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const/16 v1, 0x6f

    const v2, 0x1040e87

    const/4 v3, 0x0

    const-wide/16 v4, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final notifyUsbRestrict(Z)V
    .locals 7

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    const/16 v1, 0x7d

    const v2, 0x1040ec6

    const/4 v3, 0x0

    const v4, 0x1080ab9

    const-wide/16 v5, 0x8a

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbUI;->postNotification(IIIIJ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    const/16 p1, 0x7d

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    :goto_0
    return-void
.end method

.method public final notifyUsbWetDetection(Z)V
    .locals 13

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const v0, 0x1040edf

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.USB_WET_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->turnOnDisplay()V

    const/16 v6, 0x66

    const v7, 0x1040ee0

    const v8, 0x1040edd

    const v9, 0x1080a90

    new-instance v10, Landroid/app/Notification$Action;

    invoke-direct {v10, v4, p1, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-wide/16 v11, 0xe

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usb/UsbUI;->postNotification(IIIILandroid/app/Notification$Action;J)V

    const-string p1, "WD"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    const-string p1, "DD"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    if-eqz p1, :cond_1

    const-string p1, "UsbUI"

    const-string v0, "Clear USB Restriction Noti by Screen Unlock"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    :cond_1
    return-void
.end method

.method public final postNotification(IIIIJ)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotification(IIIILandroid/app/Notification$Action;J)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotification(IIIJ)V
    .locals 8

    const v4, 0x1080aba

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/Notification$Action;J)V

    return-void
.end method

.method public final postNotificationInternal(IIIILandroid/app/Notification$Action;J)V
    .locals 11

    move-object v8, p0

    move v9, p1

    invoke-static/range {p6 .. p7}, Lcom/android/server/usb/UsbUI;->areSettableOptions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance v10, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-object v0, v10

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usb/UsbUI$NotificationWrapper;-><init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/Notification$Action;J)V

    iget-boolean v0, v8, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    invoke-static {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetongoing(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v10}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, v8, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    move v1, p2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before system ready: title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 5

    const-string v0, "UsbUI"

    const-string/jumbo v1, "system ready"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/usb/UsbUI;->isUsbWet()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "emergency_mode"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    return-void
.end method

.method public final turnOnDisplay()V
    .locals 5

    const-string/jumbo v0, "turnOnDisplay()"

    const-string v1, "UsbUI"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_1
    return-void
.end method

.method public final updateChangedLocale()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
