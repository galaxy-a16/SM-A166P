.class public Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 143
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 144
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    .line 145
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 146
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 147
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 148
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 149
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .locals 8

    .line 194
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    .line 196
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "BiometricTestSessionImpl"

    const-string p1, "No faces, returning"

    .line 199
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 202
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    .line 203
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .locals 3

    .line 238
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    .line 240
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .locals 7

    .line 176
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    move v4, v0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz v4, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onEnrollResult(JIII)V

    return-void

    .line 181
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v4

    goto :goto_0
.end method

.method public notifyAcquired(II)V
    .locals 6

    .line 220
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 222
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    return-void
.end method

.method public notifyError(II)V
    .locals 6

    .line 229
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 231
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    return-void
.end method

.method public notifyVendorAcquired(II)V
    .locals 6

    .line 268
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorAcquired_enforcePermission()V

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v1, 0x0

    const/16 v4, 0x16

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    return-void
.end method

.method public notifyVendorError(II)V
    .locals 6

    .line 279
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyVendorError_enforcePermission()V

    .line 281
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v1, 0x0

    const/16 v4, 0x8

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .locals 6

    .line 211
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .locals 0

    .line 156
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 158
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .locals 10

    .line 165
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/16 v3, 0x45

    new-array v3, v3, [B

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x0

    new-array v7, p0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, p1

    .line 167
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    return-void
.end method
