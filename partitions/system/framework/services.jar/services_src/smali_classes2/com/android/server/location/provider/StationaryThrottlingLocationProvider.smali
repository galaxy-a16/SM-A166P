.class public final Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;
.super Lcom/android/server/location/provider/DelegateLocationProvider;
.source "StationaryThrottlingLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;
.implements Lcom/android/server/DeviceIdleInternal$StationaryListener;


# instance fields
.field public mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

.field public mDeviceIdle:Z

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

.field public mDeviceStationary:Z

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

.field public mDeviceStationaryRealtimeMs:J

.field public mIncomingRequest:Landroid/location/provider/ProviderRequest;

.field public mLastLocation:Landroid/location/Location;

.field public final mLock:Ljava/lang/Object;

.field public final mName:Ljava/lang/String;

.field public mOutgoingRequest:Landroid/location/provider/ProviderRequest;

.field public mThrottlingIntervalMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/location/provider/DelegateLocationProvider;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 63
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    const/4 p3, 0x0

    .line 69
    iput-boolean p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 71
    iput-boolean p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 73
    iput-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 75
    sget-object p3, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 77
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    const-wide v0, 0x7fffffffffffffffL

    .line 79
    iput-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    const/4 p3, 0x0

    .line 81
    iput-object p3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 90
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    .line 91
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceIdleHelper()Lcom/android/server/location/injector/DeviceIdleHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    .line 92
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getDeviceStationaryHelper()Lcom/android/server/location/injector/DeviceStationaryHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    .line 95
    invoke-virtual {p0}, Lcom/android/server/location/provider/DelegateLocationProvider;->initializeDelegate()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 246
    iget-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stationary throttled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "stationary throttled=false"

    .line 249
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-nez v0, :cond_1

    const-string v0, " (not idle)"

    .line 251
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-nez v0, :cond_2

    const-string v0, " (not stationary)"

    .line 254
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 259
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceIdleChanged(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-ne p1, v1, :cond_0

    .line 156
    monitor-exit v0

    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDeviceStationaryChanged(Z)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-ne v1, p1, :cond_0

    .line 168
    monitor-exit v0

    return-void

    .line 171
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    if-eqz p1, :cond_1

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x8000000000000000L

    .line 175
    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    :goto_0
    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 178
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->onReportLocation(Landroid/location/LocationResult;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSetRequest(Landroid/location/provider/ProviderRequest;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 149
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStart()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    .line 112
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->addListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1}, Lcom/android/server/location/injector/DeviceIdleHelper;->isDeviceIdle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    .line 115
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;->addListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    const-wide/high16 v2, -0x8000000000000000L

    .line 117
    iput-wide v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->onThrottlingChangedLocked(Z)V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 0

    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/server/location/provider/DelegateLocationProvider;->onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryHelper:Lcom/android/server/location/injector/DeviceStationaryHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceStationaryHelper;->removeListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdleHelper:Lcom/android/server/location/injector/DeviceIdleHelper;

    invoke-virtual {v1, p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->removeListener(Lcom/android/server/location/injector/DeviceIdleHelper$DeviceIdleListener;)V

    .line 129
    sget-object v1, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 130
    iput-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    const-wide v1, 0x7fffffffffffffffL

    .line 131
    iput-wide v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    .line 133
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 134
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 138
    :cond_0
    iput-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/location/provider/LocationProviderController;->stop()V

    return-void

    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onThrottlingChangedLocked(Z)V
    .locals 7

    .line 184
    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationary:Z

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceIdle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->isLocationSettingsIgnored()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeviceStationaryRealtimeMs:J

    .line 186
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 193
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mIncomingRequest:Landroid/location/provider/ProviderRequest;

    .line 198
    :goto_1
    iget-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v5}, Landroid/location/provider/ProviderRequest;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    .line 200
    iget-object v0, p0, Lcom/android/server/location/provider/DelegateLocationProvider;->mDelegate:Lcom/android/server/location/provider/AbstractLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-interface {v0, v5}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 203
    :cond_2
    iget-wide v5, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    return-void

    .line 208
    :cond_3
    iput-wide v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    cmp-long v0, v3, v1

    const-string v3, "LocationManagerService"

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    cmp-long v0, v5, v1

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider stationary throttled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    if-eqz v0, :cond_5

    .line 219
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    :cond_5
    new-instance v0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;-><init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    .line 223
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-eqz v0, :cond_6

    move v4, v1

    :cond_6
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eqz p1, :cond_7

    .line 226
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 228
    :cond_7
    iget-wide v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    iget-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 229
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    cmp-long p1, v5, v1

    if-eqz p1, :cond_9

    .line 233
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mOutgoingRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderStationaryThrottled(Ljava/lang/String;ZLandroid/location/provider/ProviderRequest;)V

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " provider stationary unthrottled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    :goto_2
    return-void
.end method
