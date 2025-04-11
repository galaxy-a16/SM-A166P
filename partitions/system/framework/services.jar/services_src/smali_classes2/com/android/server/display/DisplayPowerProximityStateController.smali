.class public final Lcom/android/server/display/DisplayPowerProximityStateController;
.super Ljava/lang/Object;
.source "DisplayPowerProximityStateController.java"


# static fields
.field static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x1

.field static final PROXIMITY_POSITIVE:I = 0x1

.field static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field static final PROXIMITY_UNKNOWN:I = -0x1


# instance fields
.field public mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mDisplayId:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

.field public mIgnoreProximityUntilChanged:Z

.field public mIsEarsenseProximity:Z

.field public mIsProximitySensorOnFoldingSide:Z

.field public mIsViewTypeCover:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNudgeUpdatePowerState:Ljava/lang/Runnable;

.field public mPendingProximity:I

.field public mPendingProximityDebounceTime:J

.field public mPendingWaitForNegativeProximityLocked:Z

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field public mProximityThreshold:F

.field public mScreenOffBecauseOfProximity:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorNegativeDebounceDelay:I

.field public mSensorPositiveDebounceDelay:I

.field public mSkipRampBecauseOfProximityChangeToNegative:Z

.field public final mTag:Ljava/lang/String;

.field public mWaitingForNegativeProximity:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmClock(Lcom/android/server/display/DisplayPowerProximityStateController;)Lcom/android/server/display/DisplayPowerProximityStateController$Clock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximitySensorEnabled(Lcom/android/server/display/DisplayPowerProximityStateController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProximityThreshold(Lcom/android/server/display/DisplayPowerProximityStateController;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTag(Lcom/android/server/display/DisplayPowerProximityStateController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdebounceProximitySensor(Lcom/android/server/display/DisplayPowerProximityStateController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleProximitySensorEvent(Lcom/android/server/display/DisplayPowerProximityStateController;JZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerProximityStateController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;Lcom/android/server/display/DisplayPowerProximityStateController$Injector;)V
    .locals 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerProximityStateController$1;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    const-wide/16 v1, -0x1

    .line 135
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 142
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 160
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 161
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    if-nez p7, :cond_0

    .line 182
    new-instance p7, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    invoke-direct {p7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    .line 184
    :cond_0
    invoke-virtual {p7}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;->createClock()Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    move-result-object p7

    iput-object p7, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    .line 185
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 186
    new-instance p1, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 187
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    .line 188
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 189
    iput p5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DisplayPowerProximityStateController["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 191
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    return-void
.end method

.method public final debounceProximitySensor()V
    .locals 4

    .line 513
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayPowerProximityStateController$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 517
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 518
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 521
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer ignoring proximity ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 525
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 527
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x3

    .line 528
    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    .line 531
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    .line 347
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "DisplayPowerProximityStateController:"

    .line 348
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIgnoreProximityUntilChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 362
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampBecauseOfProximityChangeToNegative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 352
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    return-object p0
.end method

.method public getPendingProximity()I
    .locals 0

    .line 603
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    return p0
.end method

.method public getPendingProximityDebounceTime()J
    .locals 2

    .line 614
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    return-wide v0
.end method

.method public getPendingWaitForNegativeProximityLocked()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 579
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProximity()I
    .locals 0

    .line 608
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    return p0
.end method

.method public getProximitySensorListener()Landroid/hardware/SensorEventListener;
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method public getWaitingForNegativeProximity()Z
    .locals 0

    .line 584
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    return p0
.end method

.method public final handleProximitySensorEvent(JZ)V
    .locals 7

    .line 471
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_6

    .line 472
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    const/16 v2, 0x32

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_4

    .line 484
    iput v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 488
    iget p3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    if-eq p3, v3, :cond_2

    goto :goto_0

    :cond_2
    move p3, v4

    :goto_0
    int-to-long v5, p3

    add-long/2addr p1, v5

    .line 490
    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    int-to-long v1, v2

    add-long/2addr p1, v1

    .line 491
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 493
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    goto :goto_2

    .line 496
    :cond_4
    iput v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 500
    iget p3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    if-eq p3, v3, :cond_5

    move v2, p3

    :cond_5
    int-to-long v1, v2

    add-long/2addr p1, v1

    .line 501
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 503
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 508
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->debounceProximitySensor()V

    :cond_6
    return-void
.end method

.method public ignoreProximitySensorUntilChanged()V
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ignoreProximitySensorUntilChangedInternal()V
    .locals 2

    .line 369
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 373
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    const-string v1, "Ignoring proximity"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public isProximityPositive()Z
    .locals 1

    .line 640
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 3

    .line 417
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 419
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 423
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    if-nez p1, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_3

    .line 426
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    if-nez p0, :cond_3

    if-ne v0, v2, :cond_3

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isScreenOffBecauseOfProximity()Z
    .locals 0

    .line 322
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    return p0
.end method

.method public final loadProximitySensor()V
    .locals 6

    .line 393
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 398
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 399
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    move-result-object v3

    .line 400
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, v3, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    invoke-static {v4, v5, v3, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    .line 406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Palm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 407
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Ear Hover"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    .line 408
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    :cond_4
    return-void
.end method

.method public notifyDisplayDeviceChanged(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 338
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    return-void
.end method

.method public final proximityToString(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    .line 571
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Positive"

    return-object p0

    :cond_1
    const-string p0, "Negative"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method public final sendOnProximityNegativeWithWakelock()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 385
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnProximityNegativeRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendOnProximityPositiveWithWakelock()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 380
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {p0}, Lcom/android/server/display/WakelockController;->getOnProximityPositiveRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPendingWaitForNegativeProximityLocked(Z)Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 230
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 233
    monitor-exit v0

    return p1

    .line 235
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setProximitySensorEnabled(Z)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 439
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_1

    .line 442
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 444
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "setProximitySensorEnabled::registerListener"

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 449
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_1

    .line 452
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    .line 453
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 454
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 455
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 456
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "setProximitySensorEnabled::unregisterListener"

    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 460
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 461
    invoke-virtual {p1, v0}, Lcom/android/server/display/WakelockController;->releaseWakelock(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    .line 464
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldIgnoreProximityUntilChanged()Z
    .locals 0

    .line 589
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    return p0
.end method

.method public shouldSkipRampBecauseOfProximityChangeToNegative()Z
    .locals 0

    .line 315
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    return p0
.end method

.method public updatePendingProximityRequestsLocked()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 203
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz v2, :cond_0

    .line 205
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 207
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateProximityState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V
    .locals 4

    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 248
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 249
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 250
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsViewTypeCover:Z

    .line 255
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_6

    .line 256
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 262
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne p1, v3, :cond_4

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-nez p1, :cond_4

    .line 268
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_2

    .line 271
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne v1, v3, :cond_3

    if-eq p2, v3, :cond_3

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    goto :goto_2

    .line 283
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 284
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 286
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    if-ne p1, v3, :cond_5

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    if-eqz p1, :cond_7

    .line 291
    :cond_5
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_3

    .line 296
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->setProximitySensorEnabled(Z)V

    .line 297
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 298
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 300
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-eqz p1, :cond_7

    .line 303
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    .line 304
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->sendOnProximityNegativeWithWakelock()V

    :cond_7
    :goto_3
    return-void
.end method
