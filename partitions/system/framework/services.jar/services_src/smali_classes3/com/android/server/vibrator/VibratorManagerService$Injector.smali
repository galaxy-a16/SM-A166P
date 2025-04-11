.class Lcom/android/server/vibrator/VibratorManagerService$Injector;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1495
    invoke-static {p1, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    .line 1477
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public createVibratorController(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)Lcom/android/server/vibrator/VibratorController;
    .locals 0

    .line 1491
    new-instance p0, Lcom/android/server/vibrator/VibratorController;

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorController;-><init>(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V

    return-object p0
.end method

.method public getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;
    .locals 0

    const-string p0, "batterystats"

    .line 1481
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    return-object p0
.end method

.method public getFrameworkStatsLogger(Landroid/os/Handler;)Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;
    .locals 0

    .line 1486
    new-instance p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;-><init>(Landroid/os/Handler;)V

    return-object p0
.end method

.method public getNativeWrapper()Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
    .locals 0

    .line 1473
    new-instance p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;

    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;-><init>()V

    return-object p0
.end method
