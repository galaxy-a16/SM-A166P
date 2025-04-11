.class public final Lcom/android/server/AnimationThread;
.super Lcom/android/server/ServiceThread;
.source "AnimationThread.java"


# static fields
.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/android/server/AnimationThread;


# direct methods
.method public static synthetic $r8$lambda$aBvmCmZNSjM-oaRArFNC1yN46u8()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/AnimationThread;->lambda$dispose$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x4

    const/4 v1, 0x0

    const-string v2, "android.anim"

    .line 35
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static dispose()V
    .locals 5

    .line 67
    const-class v0, Lcom/android/server/AnimationThread;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    if-nez v1, :cond_0

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/AnimationThread$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/AnimationThread$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    .line 73
    sput-object v1, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ensureThreadLocked()V
    .locals 3

    .line 39
    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/server/AnimationThread;

    invoke-direct {v0}, Lcom/android/server/AnimationThread;-><init>()V

    sput-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 43
    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ServiceThread;->makeSharedHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/android/server/AnimationThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static get()Lcom/android/server/AnimationThread;
    .locals 2

    .line 48
    const-class v0, Lcom/android/server/AnimationThread;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/AnimationThread;->ensureThreadLocked()V

    .line 50
    sget-object v1, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 2

    .line 55
    const-class v0, Lcom/android/server/AnimationThread;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/server/AnimationThread;->ensureThreadLocked()V

    .line 57
    sget-object v1, Lcom/android/server/AnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$dispose$0()V
    .locals 1

    .line 72
    sget-object v0, Lcom/android/server/AnimationThread;->sInstance:Lcom/android/server/AnimationThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
