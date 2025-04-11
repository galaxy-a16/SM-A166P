.class public final Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mIsProxActive:Z

.field public final mProximitySensorName:Ljava/lang/String;

.field public final mProximitySensorType:Ljava/lang/String;

.field public final mSensorObserverLock:Ljava/lang/Object;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V
    .locals 1

    .line 2562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2547
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v0, "android.sensor.proximity"

    .line 2548
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mProximitySensorType:Ljava/lang/String;

    .line 2553
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    .line 2555
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2559
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2563
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    .line 2564
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 2565
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "  SensorObserver"

    .line 2615
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2617
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsProxActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    mDozeStateByDisplay:"

    .line 2618
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2619
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2620
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 2621
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    .line 2622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2624
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

.method public observe()V
    .locals 8

    .line 2579
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2580
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2582
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2583
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2584
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 2586
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2588
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v7, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2590
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void

    :catchall_0
    move-exception p0

    .line 2590
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDisplayAdded(I)V
    .locals 3

    .line 2629
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v0

    .line 2630
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2631
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2633
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayChanged(I)V
    .locals 5

    .line 2638
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2639
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2640
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 2641
    invoke-interface {v3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->isDozeState(Landroid/view/Display;)Z

    move-result v3

    .line 2640
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2642
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    if-eq v0, p1, :cond_0

    .line 2643
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2645
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 2650
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2652
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2653
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProximityActive(Z)V
    .locals 2

    .line 2570
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mSensorObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2571
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eq v1, p1, :cond_0

    .line 2572
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2573
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->recalculateVotesLocked()V

    .line 2575
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

.method public final recalculateVotesLocked()V
    .locals 7

    .line 2598
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2599
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2600
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 2602
    iget-boolean v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDozeStateByDisplay:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2603
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mProximitySensorName:Ljava/lang/String;

    const-string v6, "android.sensor.proximity"

    .line 2604
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2607
    iget v5, v4, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v4, v4, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v5, v4}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2610
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SensorObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v6, 0x11

    invoke-virtual {v5, v3, v6, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
