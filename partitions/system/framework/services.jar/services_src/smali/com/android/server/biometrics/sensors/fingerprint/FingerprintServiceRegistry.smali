.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;
.super Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;
.source "FingerprintServiceRegistry.java"


# instance fields
.field public final mService:Landroid/hardware/fingerprint/IFingerprintService;


# direct methods
.method public static synthetic $r8$lambda$EKsGrOFqZW84i33JA_-3dSn2o6o(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Ljava/util/function/Supplier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->lambda$registerAll$0(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintService;Ljava/util/function/Supplier;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;-><init>(Ljava/util/function/Supplier;)V

    .line 51
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    return-void
.end method

.method private synthetic lambda$registerAll$0(Ljava/util/function/Supplier;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerAllInBackground(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public invokeRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;Ljava/util/List;)V
    .locals 0

    .line 71
    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;->onAllAuthenticatorsRegistered(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic invokeRegisteredCallback(Landroid/os/IInterface;Ljava/util/List;)V
    .locals 0

    .line 39
    check-cast p1, Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->invokeRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;Ljava/util/List;)V

    return-void
.end method

.method public registerAll(Ljava/util/function/Supplier;)V
    .locals 2

    .line 77
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Ljava/util/function/Supplier;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/biometrics/SensorPropertiesInternal;)V
    .locals 0

    .line 39
    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    return-void
.end method

.method public registerService(Landroid/hardware/biometrics/IBiometricService;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V
    .locals 4

    .line 57
    iget v0, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    .line 58
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->propertyStrengthToAuthenticatorStrength(I)I

    move-result v0

    .line 60
    :try_start_0
    iget v1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget v3, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-direct {v2, p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintAuthenticator;-><init>(Landroid/hardware/fingerprint/IFingerprintService;I)V

    const/4 p0, 0x2

    invoke-interface {p1, v1, p0, v0, v2}, Landroid/hardware/biometrics/IBiometricService;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Remote exception when registering sensorId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintServiceRegistry"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
