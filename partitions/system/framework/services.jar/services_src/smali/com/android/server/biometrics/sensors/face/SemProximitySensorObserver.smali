.class public abstract Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;
.super Ljava/lang/Object;
.source "SemProximitySensorObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public mIsRegisterListener:Z

.field public mPrxSensor:Landroid/hardware/Sensor;

.field public mSensorThread:Landroid/os/HandlerThread;

.field public mSmgr:Landroid/hardware/SensorManager;

.field public mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mPrxSensor:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public registerListener()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "sensor thread"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mPrxSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FaceService"

    const-string/jumbo v3, "registerListener : failed to register sensor listener"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z

    :cond_0
    return v1
.end method

.method public declared-synchronized unregisterListener()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSmgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "FaceService"

    const-string/jumbo v2, "unregisterListener : failed to unregister sensor listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mSensorThread:Landroid/os/HandlerThread;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/SemProximitySensorObserver;->mIsRegisterListener:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
