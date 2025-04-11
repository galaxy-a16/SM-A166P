.class Lcom/android/server/power/PowerManagerService$Injector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAbuseWakeLockDetector(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/AbuseWakeLockDetector$Callback;)Lcom/android/server/power/AbuseWakeLockDetector;
    .locals 1

    const-string/jumbo p0, "window"

    .line 1498
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1497
    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 1499
    new-instance v0, Lcom/android/server/power/AbuseWakeLockDetector;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/server/power/AbuseWakeLockDetector;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/AbuseWakeLockDetector$Callback;Lcom/android/server/wm/WindowManagerService;)V

    return-object v0
.end method

.method public createAmbientDisplayConfiguration(Landroid/content/Context;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 1397
    new-instance p0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createAmbientDisplaySuppressionController(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)Lcom/android/server/power/AmbientDisplaySuppressionController;
    .locals 0

    .line 1402
    new-instance p0, Lcom/android/server/power/AmbientDisplaySuppressionController;

    invoke-direct {p0, p1}, Lcom/android/server/power/AmbientDisplaySuppressionController;-><init>(Lcom/android/server/power/AmbientDisplaySuppressionController$AmbientDisplaySuppressionChangedCallback;)V

    return-object p0
.end method

.method public createBatterySaverController(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverController;
    .locals 6

    .line 1378
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/batterysaver/BatterySaverController;-><init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object p0
.end method

.method public createBatterySaverPolicy(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .locals 0

    .line 1372
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    return-object p0
.end method

.method public createBatterySaverStateMachine(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
    .locals 0

    .line 1384
    new-instance p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;-><init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V

    return-object p0
.end method

.method public createClock()Lcom/android/server/power/PowerManagerService$Clock;
    .locals 1

    .line 1424
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$2;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createCoverManager(Landroid/content/Context;)Lcom/samsung/android/cover/CoverManager;
    .locals 0

    .line 1478
    new-instance p0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 1

    .line 1473
    new-instance p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object p0
.end method

.method public createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    .line 1442
    new-instance p0, Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-object p0
.end method

.method public createInattentiveSleepWarningController()Lcom/android/server/power/InattentiveSleepWarningController;
    .locals 0

    .line 1406
    new-instance p0, Lcom/android/server/power/InattentiveSleepWarningController;

    invoke-direct {p0}, Lcom/android/server/power/InattentiveSleepWarningController;-><init>()V

    return-object p0
.end method

.method public createLowPowerStandbyController(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/power/LowPowerStandbyController;
    .locals 0

    .line 1450
    new-instance p0, Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/LowPowerStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method

.method public createNativeWrapper()Lcom/android/server/power/PowerManagerService$NativeWrapper;
    .locals 0

    .line 1388
    new-instance p0, Lcom/android/server/power/PowerManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method

.method public createNotifier(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)Lcom/android/server/power/Notifier;
    .locals 10

    .line 1359
    new-instance v9, Lcom/android/server/power/Notifier;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/power/FaceDownDetector;Lcom/android/server/power/ScreenUndimDetector;Ljava/util/concurrent/Executor;)V

    return-object v9
.end method

.method public createPermissionCheckerWrapper()Lcom/android/server/power/PowerManagerService$PermissionCheckerWrapper;
    .locals 0

    .line 1454
    new-instance p0, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public createPowerPropertiesWrapper()Lcom/android/server/power/PowerManagerService$PowerPropertiesWrapper;
    .locals 1

    .line 1458
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$3;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createScreenCurtainController(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;)Lcom/android/server/power/ScreenCurtainController;
    .locals 0

    .line 1513
    new-instance p0, Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ScreenCurtainController;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/os/Looper;)V

    return-object p0
.end method

.method public createSuspendBlocker(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .locals 0

    .line 1365
    new-instance p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 1366
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmSuspendBlockers(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createSystemPropertiesWrapper()Lcom/android/server/power/SystemPropertiesWrapper;
    .locals 1

    .line 1410
    new-instance v0, Lcom/android/server/power/PowerManagerService$Injector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$Injector$1;-><init>(Lcom/android/server/power/PowerManagerService$Injector;)V

    return-object v0
.end method

.method public createWirelessChargerDetector(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)Lcom/android/server/power/WirelessChargerDetector;
    .locals 0

    .line 1393
    new-instance p0, Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    return-object p0
.end method

.method public getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 0

    const-string p0, "activity"

    .line 1490
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/INotificationManager;
    .locals 0

    .line 1484
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    return-object p0
.end method

.method public invalidateIsInteractiveCaches()V
    .locals 0

    .line 1446
    invoke-static {}, Landroid/os/PowerManager;->invalidateIsInteractiveCaches()V

    return-void
.end method
