.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;
.super Ljava/lang/Object;
.source "Sensor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field public final synthetic val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final synthetic val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final synthetic val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public static synthetic $r8$lambda$1Lx7A0SEnKyJfKTbWZMHKnV_uws(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/fingerprint/ISession;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/fingerprint/ISession;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$B7P7ogOIb9_8Bi-QZdoSh9VYmtU(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->lambda$getStopUserClient$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TmX1gdWRMs2PfanMNYsqz68IF0k(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->lambda$getStartUserClient$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$getStartUserClient$1()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Got ERROR_HW_UNAVAILABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method

.method private synthetic lambda$getStartUserClient$2(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/fingerprint/ISession;I)V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New session created for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with hal version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-direct {v1, p6, p5, p4, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;-><init>(ILandroid/hardware/biometrics/fingerprint/ISession;ILcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    .line 733
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;

    invoke-direct {p5, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    invoke-virtual {p1, p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->setLazySehFingerprint(Ljava/util/function/Supplier;)V

    .line 735
    invoke-static {p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object p1

    iget-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object p5

    .line 736
    invoke-virtual {p1, p5, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isInvalidationInProgress(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 737
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Scheduling unfinished invalidation request for sensor: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", user: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInvalidationRequest(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getStopUserClient$0()V
    .locals 1

    .line 704
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mCurrentSession:Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    return-void
.end method


# virtual methods
.method public getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;
    .locals 13

    .line 710
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 712
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmTag(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmLockoutCache(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/LockoutCache;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$lockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 715
    invoke-interface {v1}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v10

    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;)V

    move-object v1, v12

    move v6, v0

    move v7, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;)V

    .line 721
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->getHalListener()Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->setHalListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;)V

    .line 722
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmLockoutHalImpl(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->setLockoutImpl(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;)V

    .line 725
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v12, v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V

    .line 747
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$provider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v1

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    .line 749
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v1, v0

    move v5, p1

    move-object v9, v12

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStartUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/biometrics/fingerprint/ISessionCallback;Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;)V

    return-object v0
.end method

.method public getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 10

    .line 701
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmLazySession(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Ljava/util/function/Supplier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmToken(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object v0

    iget v5, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)Landroid/content/Context;

    move-result-object v0

    .line 703
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->val$biometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;)V

    move-object v0, v9

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintStopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    return-object v9
.end method
