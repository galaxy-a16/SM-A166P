.class public Lcom/android/server/DeviceIdleController$Injector;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# instance fields
.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field public final mContext:Landroid/content/Context;

.field public mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceIdleController"

    .line 2486
    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 2490
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAnyMotionDetector(Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)Lcom/android/server/AnyMotionDetector;
    .locals 7

    .line 2495
    new-instance v6, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    return-object v6
.end method

.method public getAppStateTracker(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/AppStateTrackerImpl;
    .locals 0

    .line 2499
    new-instance p0, Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object p0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 2503
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2506
    :cond_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getConstants(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .locals 1

    .line 2510
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    if-nez v0, :cond_0

    .line 2511
    new-instance v0, Lcom/android/server/DeviceIdleController$Constants;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    .line 2513
    :cond_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object p0
.end method

.method public getConstraintController(Landroid/os/Handler;Lcom/android/server/DeviceIdleInternal;)Lcom/android/server/deviceidle/ConstraintController;
    .locals 1

    .line 2567
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.leanback_only"

    .line 2568
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2569
    new-instance p2, Lcom/android/server/deviceidle/TvConstraintController;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lcom/android/server/deviceidle/TvConstraintController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 2518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandler(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MyHandler;
    .locals 1

    .line 2529
    new-instance p0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    return-object p0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 2

    .line 2522
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    .line 2525
    :cond_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method public getMotionSensor()Landroid/hardware/Sensor;
    .locals 4

    .line 2533
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Injector;->getSensorManager()Landroid/hardware/SensorManager;

    move-result-object v0

    .line 2535
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 2538
    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 2540
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x1110037

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1a

    .line 2542
    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/16 p0, 0x11

    .line 2547
    invoke-virtual {v0, p0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .line 2554
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public getSensorManager()Landroid/hardware/SensorManager;
    .locals 1

    .line 2558
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 2562
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public isLocationPrefetchEnabled()Z
    .locals 1

    .line 2575
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110038

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public useMotionSensor()Z
    .locals 1

    .line 2580
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110039

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
