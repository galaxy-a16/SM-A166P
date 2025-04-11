.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# static fields
.field public static mPrevSvcLedState:I

.field public static mSvcLedColor:I

.field public static mSvcLedMode:I

.field public static mSvcLedOffMS:I

.field public static mSvcLedOnMS:I

.field public static mSvcLedState:I


# instance fields
.field public final LED_LOW_POWER_PATH:Ljava/lang/String;

.field public isLightSensorEnabled:Z

.field public mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

.field public mCoverOpened:Z

.field public mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field public mCoverType:I

.field public mDelayForcedSvcLEDTask:I

.field public mH:Landroid/os/Handler;

.field public mInitCompleteForSvcLED:Z

.field public mInitializedWakeLockPath:Z

.field public mIsLEDChanged:Z

.field public mLastSvcLedId:I

.field public mLedLowPower:I

.field public mLightListener:Landroid/hardware/SensorEventListener;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsById:Landroid/util/SparseArray;

.field public final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final mNewWakeLockPaths:[Ljava/lang/String;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mService:Lcom/android/server/lights/LightsManager;

.field public mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field public final mSvcLEDThread:Landroid/os/HandlerThread;

.field public mUpdateSvcLEDDelay:I

.field public mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field public mUseLEDAutoBrightness:Z

.field public mUsePatternLED:Z

.field public mUseSoftwareAutoBrightness:Z

.field public final mVintfLights:Ljava/util/function/Supplier;

.field public final mVintfSehLights:Ljava/util/function/Supplier;

.field public mWakeLockAcquired:Z

.field public mWakeLockPath:Ljava/lang/String;

.field public mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlarmManagerForSvcLED(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverBatteryLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverNotiLight(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverOpened(Lcom/android/server/lights/LightsService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCoverType(Lcom/android/server/lights/LightsService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsLEDChanged(Lcom/android/server/lights/LightsService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsById(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLightsByType(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSvcLEDHandler(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSvcLEDThread(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateSvcLEDDelay(Lcom/android/server/lights/LightsService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateSvcLEDPendingIntent(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsePatternLED(Lcom/android/server/lights/LightsService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVintfSehLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCoverBatteryLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverNotiLight(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverOpened(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCoverType(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDelayForcedSvcLEDTask(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInitCompleteForSvcLED(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsLEDChanged(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSvcLEDHandler(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseLEDAutoBrightness(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsePatternLED(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUseSoftwareAutoBrightness(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSvcLedStateLocked(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableSvcLEDLightSensorLocked(Lcom/android/server/lights/LightsService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleForcedSvcLEDTask(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSvcLedLightLocked(Lcom/android/server/lights/LightsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSvcLedStateLocked(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmSvcLedState()I
    .locals 1

    .line 0
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcallerInfoToString()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 738
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService$VintfHalCache-IA;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/lights/LightsService$VintfExtHalCache;

    invoke-direct {v3, v1}, Lcom/android/server/lights/LightsService$VintfExtHalCache;-><init>(Lcom/android/server/lights/LightsService$VintfExtHalCache-IA;)V

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
    .locals 5

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v1, 0x2bc

    .line 113
    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 124
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v1, 0x1

    .line 125
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    .line 126
    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    const/4 v2, 0x0

    .line 129
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 130
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const/4 v3, 0x2

    .line 131
    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 164
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    .line 167
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 168
    aget-object v4, v3, v0

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 169
    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 170
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    .line 174
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 175
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 865
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 988
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1013
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 1033
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v1, "/sys/class/sec/led/led_lowpower"

    .line 1082
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    const/4 v1, -0x1

    .line 1083
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v1, 0x3

    .line 1084
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1208
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 746
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 747
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 748
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, v2

    :goto_1
    iput-object p4, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 751
    new-instance p2, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p2, p0, v2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$LightsManagerBinderService-IA;)V

    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 754
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 755
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 756
    new-instance p1, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo p2, "mSvcLEDThread"

    invoke-direct {p1, p0, p2}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 783
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 784
    monitor-enter p1

    .line 785
    :catch_0
    :goto_2
    :try_start_0
    iget-boolean p2, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    .line 787
    :try_start_1
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 792
    :cond_2
    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static callerInfoToString()Ljava/lang/String;
    .locals 4

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native setLight_native(IIIIII)V
.end method


# virtual methods
.method public final acquireWakeLockForLED()V
    .locals 2

    .line 1211
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_0

    const-string p0, "acquireWakeLockForLED : WakeLock path is not initialized"

    .line 1212
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1216
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method public final clearSvcLedStateLocked(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 1252
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method public convertToBitMask(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p0, -0x3a

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x10

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final enableSvcLEDLightSensorLocked(Z)V
    .locals 3

    .line 1015
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1019
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p1, :cond_1

    .line 1020
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez p1, :cond_2

    .line 1021
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    .line 1022
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_0

    .line 1025
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz p1, :cond_2

    .line 1026
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 1027
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final handleForcedSvcLEDTask()V
    .locals 2

    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    .line 1162
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1163
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    const/16 v0, 0x13

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method public final initCoverState()V
    .locals 3

    const-string v0, "initCoverState()start"

    const-string v1, "LightsService"

    .line 970
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 975
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCoverState() coverstate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "initCoverState() : state is null"

    .line 979
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "initCoverState() : mCoverManager is null!!!!"

    .line 983
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initializeWakeLockPath()V
    .locals 3

    .line 1187
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "LightsService"

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1197
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 1204
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wake_unlock path does not exists "

    .line 1200
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo p0, "wake_lock path does not exists"

    .line 1192
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 846
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v0, "lights"

    .line 847
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final populateAvailableLights(Landroid/content/Context;)V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 806
    :goto_0
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    .line 809
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-static {v0}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v0

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-ltz v0, :cond_1

    .line 811
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 812
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsService$LightImpl;

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .locals 8

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;

    invoke-interface {v0}, Lvendor/samsung/hardware/light/ISehLights;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 823
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;Lcom/android/server/lights/LightsService$LightImpl-IA;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LightsService"

    const-string v0, "Unable to get lights from HAL"

    .line 826
    invoke-static {p1, v0, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final releaseWakeLockForLED()V
    .locals 3

    .line 1228
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "releaseWakeLockForLED: WakeLock path is not initialized"

    .line 1229
    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1233
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1238
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method public final setSvcLedLightLocked(I)V
    .locals 6

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v2, :cond_1

    .line 1090
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    move p1, v1

    .line 1094
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq p1, v0, :cond_2

    .line 1095
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const-string v0, "/sys/class/sec/led/led_lowpower"

    .line 1096
    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1097
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_2
    move p1, v1

    :goto_1
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    .line 1104
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v0, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1111
    :cond_4
    :goto_2
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v0, :cond_5

    .line 1112
    iget p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    :goto_3
    move v2, v1

    goto :goto_6

    :cond_5
    const/4 v0, 0x3

    if-eqz p1, :cond_b

    const/4 v3, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_7

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    const/16 v1, 0xe

    goto :goto_5

    :cond_7
    const/16 v1, 0xd

    goto :goto_5

    :cond_8
    const/16 v1, 0xa

    goto :goto_5

    .line 1126
    :cond_9
    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    goto :goto_4

    :cond_a
    const/16 v1, 0xc

    :goto_4
    move v2, v1

    move p1, v3

    goto :goto_6

    :cond_b
    const/16 v1, 0xb

    :goto_5
    move p1, v0

    goto :goto_3

    .line 1147
    :goto_6
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v0, p1

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->-$$Nest$msetLightLocked(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    .line 1149
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const-string v1, "LightsService"

    if-eq v0, p1, :cond_c

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedLightLocked : priority changed! SvcLED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {p0, v2}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") OUT; ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") IN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1153
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedLightLocked : Current SvcLED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") maintains its priority right"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_7
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    return-void
.end method

.method public final setSvcLedStateLocked(IIIIIZ)V
    .locals 9

    .line 1256
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const/4 v1, 0x3

    const-string v2, "LightsService"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 1275
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[SvcLED] setSvcLedStateLocked : Not Support, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_2

    const/16 v1, 0xc

    if-ne p3, v1, :cond_1

    or-int/lit8 p2, v0, 0x2

    .line 1266
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 1268
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->writeSvcLedData(IIIII)V

    goto :goto_0

    :cond_2
    and-int/lit8 p2, v0, -0x7

    .line 1271
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_0

    :cond_3
    and-int/lit8 p2, v0, -0x3a

    .line 1260
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_4

    .line 1261
    invoke-virtual {p0, p3}, Lcom/android/server/lights/LightsService;->convertToBitMask(I)I

    move-result p3

    or-int/2addr p2, p3

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1278
    :cond_4
    :goto_0
    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq p2, p3, :cond_5

    const/4 p2, 0x1

    .line 1279
    iput-boolean p2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1282
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[SvcLED] setSvcLedStateLocked : SvcLEDState: 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -> 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1283
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " | SvcLED("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") set "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_6

    const-string p0, "On"

    goto :goto_1

    :cond_6
    const-string p0, "Off"

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1282
    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public systemReady()V
    .locals 7

    const-string v0, "[SvcLED] systemReady"

    const-string v1, "LightsService"

    .line 938
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 941
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 944
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 945
    iget-boolean v4, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    .line 946
    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 950
    :cond_0
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 951
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    .line 952
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 953
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "initLightsService() : mCoverManager is null!!!!"

    .line 955
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    .line 962
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 963
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDReceiver-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public translateID(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "translateID error"

    return-object p0

    :pswitch_1
    const-string p0, "COUNT"

    return-object p0

    :pswitch_2
    const-string p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_3
    const-string p0, "WIFI"

    return-object p0

    :pswitch_4
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_5
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_6
    const-string p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_7
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_8
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_9
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_a
    const-string p0, "BACKLIGHT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public translateLightType(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "translateLightType error"

    return-object p0

    :pswitch_1
    const-string p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_2
    const-string p0, "WIFI"

    return-object p0

    :pswitch_3
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_4
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_5
    const-string p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_6
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_7
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_8
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_9
    const-string p0, "BACKLIGHT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public translateMode(I)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p0, "translateMode error"

    return-object p0

    :pswitch_0
    const-string p0, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    return-object p0

    :pswitch_1
    const-string p0, "LIGHT_SEC_FLASH_LOW_BATTERY"

    return-object p0

    :pswitch_2
    const-string p0, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    return-object p0

    :pswitch_3
    const-string p0, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "LIGHT_SEC_FLASH_CHARGING"

    return-object p0

    :cond_0
    const-string p0, "LIGHT_FLASH_HARDWARE"

    return-object p0

    :cond_1
    const-string p0, "LIGHT_FLASH_TIMED"

    return-object p0

    :cond_2
    const-string p0, "LIGHT_FLASH_NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeSvcLedData(IIIII)V
    .locals 0

    .line 1402
    sget p0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/2addr p0, p1

    sput p0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1403
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 1404
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1405
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 1406
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void
.end method
