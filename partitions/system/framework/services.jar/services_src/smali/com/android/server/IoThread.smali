.class public final Lcom/android/server/IoThread;
.super Lcom/android/server/ServiceThread;
.source "IoThread.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/IoThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.io"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 3

    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/IoThread;

    invoke-direct {v0}, Lcom/android/server/IoThread;-><init>()V

    sput-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    sget-object v0, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ServiceThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/IoThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/IoThread;
    .locals 2

    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/IoThread;->sInstance:Lcom/android/server/IoThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/IoThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/android/server/IoThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/IoThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/server/IoThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
