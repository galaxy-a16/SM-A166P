.class public Lcom/att/iqi/libs/WorkerThread;
.super Landroid/os/HandlerThread;
.source "WorkerThread.java"


# static fields
.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/att/iqi/libs/WorkerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    const-string/jumbo v0, "worker.bg"

    const/16 v1, 0xa

    .line 33
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .locals 5

    .line 37
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/att/iqi/libs/WorkerThread;

    invoke-direct {v0}, Lcom/att/iqi/libs/WorkerThread;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    sget-object v0, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/att/iqi/libs/WorkerThread;
    .locals 2

    .line 49
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 51
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sInstance:Lcom/att/iqi/libs/WorkerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 56
    const-class v0, Lcom/att/iqi/libs/WorkerThread;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->ensureThreadLocked()V

    .line 58
    sget-object v1, Lcom/att/iqi/libs/WorkerThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
