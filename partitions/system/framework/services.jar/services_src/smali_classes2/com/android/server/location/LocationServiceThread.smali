.class public final Lcom/android/server/location/LocationServiceThread;
.super Lcom/android/server/ServiceThread;
.source "LocationServiceThread.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/location/LocationServiceThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "LocationProviderManagerThread"

    .line 45
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static declared-synchronized ensureThreadLocked()V
    .locals 6

    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/android/server/location/LocationServiceThread;

    invoke-direct {v1}, Lcom/android/server/location/LocationServiceThread;-><init>()V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 51
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 52
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/32 v2, 0x80000

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    .line 54
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 56
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    .line 57
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 76
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 78
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 69
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 71
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
