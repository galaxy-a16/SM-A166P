.class public abstract Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sCount:I


# instance fields
.field public mAlreadyDone:Z

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mContext:Landroid/content/Context;

.field public final mCookie:I

.field public final mHashID:I

.field public mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

.field public final mOwner:Ljava/lang/String;

.field public mRequestId:J

.field public final mSensorId:I

.field public final mSequentialId:I

.field public final mTargetUserId:I

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$htiIZB6uMPqaIIrlF7iytUF2hTY(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->lambda$binderDiedInternal$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 70
    new-instance v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 98
    sget v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->sCount:I

    iput v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    .line 99
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    const-wide/16 v1, -0x1

    .line 101
    iput-wide v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 102
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 103
    iput p4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 104
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 105
    iput p6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 106
    iput p7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 107
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 108
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    if-eqz p2, :cond_0

    .line 116
    :try_start_0
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "BaseClientMonitor"

    const-string p2, "caught remote exception in linkToDeath: "

    .line 119
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$binderDiedInternal$0(Z)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died, operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    if-eqz v0, :cond_0

    const-string p0, "Binder died but client is finished, ignoring"

    .line 205
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Binder died, cancelling client"

    .line 211
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_2

    .line 216
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    :cond_2
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->binderDiedInternal(Z)V

    return-void
.end method

.method public binderDiedInternal(Z)V
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getMainHandlerWithModality()Landroid/os/Handler;

    move-result-object v0

    .line 201
    new-instance v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelWithoutStarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to invoke sendError"

    .line 334
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 336
    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public destroy()V
    .locals 3

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    .line 164
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "here"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "BaseClientMonitor"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    return-object p0
.end method

.method public getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCookie()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    return p0
.end method

.method public getHashID()I
    .locals 0

    .line 353
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    return p0
.end method

.method public final getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    return-object p0
.end method

.method public getLogger()Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    return-object p0
.end method

.method public final getMainHandlerWithModality()Landroid/os/Handler;
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->getStatsModality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 361
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 364
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->get()Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/SemFaceMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getProtoEnum()I
.end method

.method public getRequestId()J
    .locals 2

    .line 276
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-wide v0
.end method

.method public getSensorId()I
    .locals 0

    .line 266
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    return p0
.end method

.method public getTargetUserId()I
    .locals 0

    .line 257
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    return p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public hasRequestId()Z
    .locals 4

    .line 281
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public interruptsPrecedingClients()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAlreadyDone()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    return p0
.end method

.method public isCryptoOperation()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isInterruptable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public markAlreadyDone()V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "marking operation as done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseClientMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mAlreadyDone:Z

    return-void
.end method

.method public final setRequestId(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 294
    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    return-void

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "request id must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 147
    invoke-interface {p1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSequentialId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public waitForCookie(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 0

    .line 0
    return-object p1
.end method
