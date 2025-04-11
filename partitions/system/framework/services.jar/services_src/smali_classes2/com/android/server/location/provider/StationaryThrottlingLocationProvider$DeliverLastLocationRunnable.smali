.class public Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;
.super Ljava/lang/Object;
.source "StationaryThrottlingLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mDeliverLastLocationCallback:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;

    if-eq v2, p0, :cond_0

    .line 271
    monitor-exit v0

    return-void

    .line 273
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 274
    monitor-exit v0

    return-void

    .line 277
    :cond_1
    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 280
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeed()V

    .line 282
    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeedAccuracy()V

    .line 286
    :cond_2
    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    invoke-virtual {v1}, Landroid/location/Location;->removeBearing()V

    .line 288
    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    invoke-virtual {v1}, Landroid/location/Location;->removeBearingAccuracy()V

    .line 294
    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 296
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v3, "isThrottling"

    const/4 v4, 0x1

    .line 298
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iput-object v1, v2, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mLastLocation:Landroid/location/Location;

    .line 303
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    iget-wide v3, v3, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;->mThrottlingIntervalMs:J

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object p0, p0, Lcom/android/server/location/provider/StationaryThrottlingLocationProvider$DeliverLastLocationRunnable;->this$0:Lcom/android/server/location/provider/StationaryThrottlingLocationProvider;

    filled-new-array {v1}, [Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    return-void

    :catchall_0
    move-exception p0

    .line 304
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
