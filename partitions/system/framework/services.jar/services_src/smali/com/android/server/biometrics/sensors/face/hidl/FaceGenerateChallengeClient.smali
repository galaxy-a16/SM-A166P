.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FaceGenerateChallengeClient.java"


# static fields
.field public static final EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public mChallengeResult:Ljava/lang/Long;

.field public final mCreatedAt:J

.field public mWaiting:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 63
    iput-wide p10, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    return-wide v0
.end method

.method public reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object p1, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :goto_0
    return-void
.end method

.method public final sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "result not available"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 116
    invoke-interface {p2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "FaceGenerateChallengeClient"

    const-string v1, "Remote exception"

    .line 118
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-interface {p2, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_1
    return-void
.end method

.method public startHalOperation()V
    .locals 7

    const-string v0, "FaceGenerateChallengeClient"

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v5, 0x258

    invoke-interface {v4, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v4, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateChallenge FINISH ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) RESULT: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 81
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/IFaceServiceReceiver;

    .line 82
    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object v3, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "generateChallenge failed"

    .line 85
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_0
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    return-void

    :goto_1
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 89
    throw v0
.end method
