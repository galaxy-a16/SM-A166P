.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
.super Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Stub;
.source "Face10.java"


# instance fields
.field public mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

.field public final mContext:Landroid/content/Context;

.field public mHalResultTestHalEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I


# direct methods
.method public static synthetic $r8$lambda$0DD9s0rQICDOP3Ksplwowa6H540(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIIJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onEnrollResult$0(IIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4QLKKKC_Fdr8pfjkklI2sM1ZwSE(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onEnumerate$5(JILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aWufNFze-XYqAOpu0Kh-oaCH0hk(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onError$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$bsB9p0keWXTf2tUgZ4k86T0EdiU(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onAuthenticatedInternal$1(IJLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cv41iiArW8x9SputpIoMVydlSFA(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onRemoved$4(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOsjgueBclC9YQZ0K7M6TZ2NQpg(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onAcquired$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$zVHOz9e42lpQ6d0ejma7uQykbvY(Landroid/os/HidlMemory;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$sehOnAuthenticatedFromMemory$7(Landroid/os/HidlMemory;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHalResultTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedInternal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIILjava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback$Stub;-><init>()V

    const/4 p5, 0x0

    .line 235
    iput-boolean p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    .line 249
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    .line 250
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 251
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    .line 252
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 254
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-void
.end method

.method private synthetic lambda$onAcquired$2(II)V
    .locals 1

    .line 386
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 387
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_0

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAcquired for non-acquire client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    .line 388
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 395
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 398
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatedInternal$1(IJLjava/util/ArrayList;)V
    .locals 6

    .line 335
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 336
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    const-string v1, "Face10"

    if-nez v0, :cond_0

    .line 337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 337
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    const/4 v2, 0x1

    if-lez p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 345
    :goto_0
    new-instance v4, Landroid/hardware/face/Face;

    const-string v5, ""

    invoke-direct {v4, v5, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    if-eqz v3, :cond_3

    .line 349
    instance-of p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    if-eqz p1, :cond_3

    .line 350
    move-object p1, p0

    check-cast p1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    .line 351
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result p2

    if-nez p2, :cond_3

    .line 352
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 353
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semVerifyTopActivity()V

    goto :goto_1

    .line 355
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Background authentication detected, client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    :goto_2
    invoke-static {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monAuthenticatedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    .line 363
    invoke-interface {v0, v4, v3, p4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 366
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$onEnrollResult$0(IIIJ)V
    .locals 3

    const-string v0, "Face10"

    if-nez p1, :cond_0

    .line 275
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    .line 276
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 277
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    .line 279
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonRemove(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p0, "onEnrollResult: remove registered face as enrollment is being cancelled"

    .line 283
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 289
    :cond_0
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v1, v2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 291
    new-instance v1, Landroid/hardware/face/Face;

    invoke-direct {v1, p3, p2, p4, p5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 293
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 294
    instance-of p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    if-nez p4, :cond_1

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollResult for non-enroll client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p4

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monEnrollResultExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V

    .line 304
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    .line 305
    invoke-virtual {p0, v1, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 308
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monEnrollResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$onEnumerate$5(JILjava/util/ArrayList;)V
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnumerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, p1, p2, p4, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdoTemplateSyncForUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;JLjava/util/ArrayList;I)V

    .line 501
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 502
    instance-of p3, p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez p3, :cond_0

    .line 503
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 510
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 513
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    .line 514
    new-instance p3, Landroid/hardware/face/Face;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-direct {p3, v2, v1, p1, p2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 515
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, p3, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 521
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onError$3(II)V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleError, client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    .line 415
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_1

    .line 420
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

    .line 426
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monErrorExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    .line 429
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 430
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string v0, "Got ERROR_HW_UNAVAILABLE"

    .line 433
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    if-eqz p0, :cond_2

    .line 435
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;->onHardwareUnavailable()V

    .line 440
    :cond_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    .line 441
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$onRemoved$4(Ljava/util/ArrayList;J)V
    .locals 10

    .line 455
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 456
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    const-string v2, "Face10"

    if-nez v1, :cond_0

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onRemoved for non-removal consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 457
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 462
    :cond_0
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 464
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v1, v4

    .line 467
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 468
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 469
    new-instance v6, Landroid/hardware/face/Face;

    invoke-direct {v6, v3, v5, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed, faceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-interface {v0, v6, v7}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 475
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monRemovedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    :cond_1
    new-instance p1, Landroid/hardware/face/Face;

    invoke-direct {p1, v3, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-interface {v0, p1, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 487
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "face_unlock_re_enroll"

    const/4 p2, -0x2

    invoke-static {p0, p1, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static synthetic lambda$sehOnAuthenticatedFromMemory$7(Landroid/os/HidlMemory;I)V
    .locals 6

    .line 618
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 619
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object p0

    const-string v1, "Face10"

    if-eqz p0, :cond_3

    .line 620
    array-length v2, p0

    if-lez v2, :cond_3

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sehOnAuthenticatedFromMemory read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-boolean v2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 623
    array-length v2, p0

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, p0

    :goto_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/os/MemoryFile;

    move-result-object v2

    if-nez v2, :cond_2

    .line 629
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v2

    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "auth_preview"

    array-length v5, p0

    invoke-direct {v3, v4, v5}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/MemoryFile;)V

    .line 631
    :cond_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/os/MemoryFile;

    move-result-object v2

    array-length v3, p0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 633
    const-class p0, Landroid/os/MemoryFile;

    const-string v2, "getFileDescriptor"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 634
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmMemoryFileForAuthPreviewResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Landroid/os/MemoryFile;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    .line 635
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    const-string/jumbo v2, "memoryfile_descriptor"

    .line 637
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v2, "Unable to write statistics stream"

    .line 639
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo p0, "sehOnAuthenticatedFromMemory save"

    .line 641
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "sehOnAuthenticatedFromMemory data is null or 0"

    .line 643
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-lez p1, :cond_4

    .line 647
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendSucceeded(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 649
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendFailed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    goto :goto_3

    :cond_5
    const-string/jumbo p0, "sehOnAuthenticated: faceId is less than 0"

    .line 651
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public onAcquired(JIII)V
    .locals 5

    .line 377
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monPreAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string p3, ")"

    const-string v1, "("

    const-string v2, ""

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Face10"

    .line 380
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V
    .locals 6

    .line 323
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v0

    const-string v1, "Face10"

    if-nez v0, :cond_0

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAuthenticated: skip ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    if-eqz p6, :cond_1

    .line 328
    iget-boolean p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    if-nez p4, :cond_1

    .line 329
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmIsAuthenticateResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    return-void

    .line 334
    :cond_1
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;

    move-object v0, p6

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V

    invoke-virtual {p4, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_0

    .line 266
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmDaemonIsCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p3

    move v5, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIIJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .locals 8

    .line 494
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JIII)V
    .locals 0

    .line 408
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monPreError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutChanged(J)V
    .locals 0

    const-string p0, "Face10"

    const-string/jumbo p1, "onLockoutChanged"

    .line 530
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Face10"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sehOnAuthenticated(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sehOnAuthenticated: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    invoke-static {p6}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoResultData(Ljava/util/ArrayList;)V

    :cond_0
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 606
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public sehOnAuthenticatedFromMemory(JIILjava/util/ArrayList;Landroid/os/HidlMemory;)V
    .locals 1

    .line 611
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehOnAuthenticatedFromMemory: ["

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] "

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Face10"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p6, :cond_0

    const-string/jumbo p0, "sehOnAuthenticatedFromMemory: result data is null"

    .line 613
    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 617
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p6, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;-><init>(Landroid/os/HidlMemory;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sehOnPreviewFrame(Landroid/os/HidlMemory;IIII)V
    .locals 1

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehOnPreviewFrame: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face10"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sehOnPreviewUpdated: skip after stop"

    .line 583
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "sehOnPreviewFrame: preview data is null"

    .line 587
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 590
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    if-eqz p0, :cond_2

    const-string/jumbo p0, "sehOnPreviewFrame: previous preview is not processed yet"

    .line 591
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 595
    :cond_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 597
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    return-void
.end method

.method public sehOnPreviewUpdated(Ljava/util/ArrayList;IIII)V
    .locals 2

    .line 557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehOnPreviewUpdated: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face10"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "sehOnPreviewUpdated: skip after stop"

    .line 559
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 562
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 566
    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    if-eqz p0, :cond_2

    const-string/jumbo p0, "sehOnPreviewUpdated: previous preview is not processed yet"

    .line 567
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 571
    :cond_2
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    const/4 p0, 0x0

    .line 572
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    .line 573
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 576
    :cond_3
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    return-void

    :cond_4
    :goto_1
    const-string/jumbo p0, "sehOnPreviewUpdated: preview data is null or size is 0"

    .line 563
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    return-void
.end method
