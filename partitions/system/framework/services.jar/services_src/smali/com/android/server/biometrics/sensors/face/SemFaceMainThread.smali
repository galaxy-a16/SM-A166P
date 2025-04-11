.class public final Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;
.super Lcom/android/server/ServiceThread;
.source "SemFaceMainThread.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "biometrics.face"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;
    .locals 2

    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->sInstance:Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is shutting down"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method
