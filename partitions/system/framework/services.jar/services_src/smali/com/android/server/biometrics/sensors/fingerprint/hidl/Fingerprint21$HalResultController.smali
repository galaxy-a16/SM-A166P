.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
.super Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;
.source "Fingerprint21.java"


# instance fields
.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

.field public final mContext:Landroid/content/Context;

.field public mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

.field public final mHandler:Landroid/os/Handler;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I


# direct methods
.method public static synthetic $r8$lambda$Dw5AUggO66H-LCDFKfzXUtMtNL4(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onAcquired_2_2$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$RRDMGxnqCLJlVjP2gA87sx9blD8(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onAuthenticated$2(IIJLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XheGLGui9oppLVpQVGYGYwH4_TI(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onError$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$muWELKignVCG39EZOHhiExC9HW0(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onEnumerate$5(IIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1obKNDQHT9KAliTxU4gCpbVFt4(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onEnrollResult$0(IIJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7lGBLJ7twUUVB8uIkngm3uArp0(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->lambda$onRemoved$4(IIIJ)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback$Stub;-><init>()V

    .line 275
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    .line 276
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    .line 277
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    .line 278
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-void
.end method

.method private synthetic lambda$onAcquired_2_2$1(II)V
    .locals 6

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAcquired: acquiredInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsInternalClientFreeEvent(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->handleInternalClientFreeEvent(I)V

    return-void

    .line 335
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsRequestCommandEvent(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->handleRequestEvent(I)V

    return-void

    .line 340
    :cond_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3

    .line 341
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semIsSkipEvent(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 344
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semUpdateVendorInfo(II)I

    move-result p2

    :cond_3
    move v5, p2

    .line 348
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p2

    .line 349
    instance-of v0, p2, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_4

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAcquired for non-acquisition client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 350
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_4
    check-cast p2, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 356
    invoke-virtual {p2, p1, v5}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 359
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz v0, :cond_5

    .line 360
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    .line 361
    invoke-virtual {p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v3

    move v4, p1

    .line 360
    invoke-interface/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onAcquire(IIIII)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$onAuthenticated$2(IIJLjava/util/ArrayList;)V
    .locals 12

    move-object v0, p0

    move v7, p1

    .line 426
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v8

    .line 427
    instance-of v1, v8, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {v8}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    .line 428
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 433
    :cond_0
    move-object v9, v8

    check-cast v9, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAuthenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    move v3, p2

    .line 440
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getFingerprintName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 443
    new-instance v11, Landroid/hardware/fingerprint/Fingerprint;

    move-object v1, v11

    move v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object/from16 v1, p5

    .line 444
    invoke-interface {v9, v11, v10, v1}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 447
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz v1, :cond_2

    .line 448
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-virtual {v8}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onAuthenticated(III)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onEnrollResult$0(IIJI)V
    .locals 10

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 296
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    if-nez v1, :cond_0

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onEnrollResult for non-enroll client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 297
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 303
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 305
    new-instance v1, Landroid/hardware/fingerprint/Fingerprint;

    move-object v4, v1

    move v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 307
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    .line 308
    invoke-virtual {v0, v1, p5}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    if-nez p5, :cond_1

    .line 311
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz p1, :cond_1

    .line 312
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p2

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onEnrolled(II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onEnumerate$5(IIIJ)V
    .locals 8

    .line 507
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 508
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    const-string v1, "Fingerprint21"

    if-nez v0, :cond_0

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 509
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnumerate, fingerId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    move-object v2, v0

    move v4, p3

    move v5, p1

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 517
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 518
    invoke-interface {p0, v0, p2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method private synthetic lambda$onError$3(II)V
    .locals 8

    .line 458
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    .line 459
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_0

    .line 464
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onError for non-error consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 469
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    .line 472
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    if-eqz v1, :cond_1

    .line 474
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;->onHardwareUnavailable()V

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz v2, :cond_2

    .line 480
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v4

    .line 481
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    move-result v5

    move v6, p1

    move v7, p2

    .line 480
    invoke-interface/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onError(IIIII)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onRemoved$4(IIIJ)V
    .locals 8

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed, fingerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 492
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v0, :cond_0

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onRemoved for non-removal consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 498
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    move-object v2, v0

    move v4, p3

    move v5, p1

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 499
    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 500
    invoke-interface {p0, v0, p2}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method


# virtual methods
.method public final handleInternalClientFreeEvent(I)V
    .locals 1

    const/16 v0, 0x4e21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4e22

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7531

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7532

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz v0, :cond_2

    .line 375
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onSpenEvent(II)V

    goto :goto_0

    .line 382
    :cond_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    if-eqz v0, :cond_2

    .line 384
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mSensorId:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;->onGestureEvent(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final handleRequestEvent(I)V
    .locals 1

    .line 394
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 395
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    if-nez v0, :cond_0

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SensorTestEvent for non-request client: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fingerprint21"

    .line 396
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 400
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;

    .line 402
    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpRequestCommands;->onRequestResult(I)V

    return-void
.end method

.method public onAcquired(JII)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->onAcquired_2_2(JII)V

    return-void
.end method

.method public onAcquired_2_2(JII)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 11

    move-object v1, p0

    .line 411
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 413
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 414
    instance-of v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    if-eqz v2, :cond_0

    .line 415
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->useEarlyAuthenticationResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->handleEarlyAuthenticationResult()V

    const-wide/16 v2, 0xa

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v7, v2

    .line 425
    iget-object v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJLjava/util/ArrayList;)V

    invoke-virtual {v9, v10, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9

    .line 294
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move v4, p3

    move-wide v5, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIJI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JIII)V
    .locals 9

    .line 506
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, p5

    move v5, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JII)V
    .locals 0

    .line 457
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JIII)V
    .locals 9

    .line 489
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, p5

    move v5, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;IIIJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;

    return-void
.end method

.method public setHalListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->mHalListener:Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    return-void
.end method
