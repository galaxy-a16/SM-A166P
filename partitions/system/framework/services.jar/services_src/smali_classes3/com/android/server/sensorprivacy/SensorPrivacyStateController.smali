.class public abstract Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
.super Ljava/lang/Object;
.source "SensorPrivacyStateController.java"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;


# instance fields
.field public mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/server/sensorprivacy/AllSensorStateController;->getInstance()Lcom/android/server/sensorprivacy/AllSensorStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object v0

    sput-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->sInstance:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    return-object v0
.end method

.method public static sendSetStateCallback(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;Z)V
    .locals 1

    .line 145
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController$$ExternalSyntheticLambda0;-><init>()V

    .line 146
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 145
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
.end method

.method public forEachState(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyStateConsumer;)V
.end method

.method public getAllSensorState()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/AllSensorStateController;->getAllSensorStateLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getState(III)Lcom/android/server/sensorprivacy/SensorState;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract getStateLocked(III)Lcom/android/server/sensorprivacy/SensorState;
.end method

.method public persistAll()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {v1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->schedulePersistLocked()V

    .line 83
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->schedulePersistLocked()V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract schedulePersistLocked()V
.end method

.method public setAllSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/AllSensorStateController;->setAllSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAllSensorState(Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mAllSensorStateController:Lcom/android/server/sensorprivacy/AllSensorStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/AllSensorStateController;->setAllSensorStateLocked(Z)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setSensorPrivacyListenerLocked(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V
.end method

.method public setState(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract setStateLocked(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V
.end method
