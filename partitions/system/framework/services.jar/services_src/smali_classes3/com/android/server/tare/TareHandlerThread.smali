.class public final Lcom/android/server/tare/TareHandlerThread;
.super Landroid/os/HandlerThread;
.source "TareHandlerThread.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field public static sInstance:Lcom/android/server/tare/TareHandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "tare"

    .line 39
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 3

    .line 43
    sget-object v0, Lcom/android/server/tare/TareHandlerThread;->sInstance:Lcom/android/server/tare/TareHandlerThread;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/tare/TareHandlerThread;

    invoke-direct {v0}, Lcom/android/server/tare/TareHandlerThread;-><init>()V

    sput-object v0, Lcom/android/server/tare/TareHandlerThread;->sInstance:Lcom/android/server/tare/TareHandlerThread;

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    sget-object v0, Lcom/android/server/tare/TareHandlerThread;->sInstance:Lcom/android/server/tare/TareHandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/tare/TareHandlerThread;->sInstance:Lcom/android/server/tare/TareHandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/tare/TareHandlerThread;->sHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/tare/TareHandlerThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/tare/TareHandlerThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/tare/TareHandlerThread;
    .locals 2

    .line 54
    const-class v0, Lcom/android/server/tare/TareHandlerThread;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->ensureThreadLocked()V

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-object v0, Lcom/android/server/tare/TareHandlerThread;->sInstance:Lcom/android/server/tare/TareHandlerThread;

    return-object v0

    :catchall_0
    move-exception v1

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 62
    const-class v0, Lcom/android/server/tare/TareHandlerThread;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->ensureThreadLocked()V

    .line 64
    sget-object v1, Lcom/android/server/tare/TareHandlerThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 70
    const-class v0, Lcom/android/server/tare/TareHandlerThread;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->ensureThreadLocked()V

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    sget-object v0, Lcom/android/server/tare/TareHandlerThread;->sHandler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
