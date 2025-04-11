.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "FingerprintService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

.field public final synthetic val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$userId:I

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownAcquiredCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x6

    invoke-interface {p0, v0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, "Remote exception in onAuthenticationAcquired()"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->isKnownErrorCode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/16 p2, 0x8

    invoke-interface {p0, p2, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "Remote exception in onAuthenticationError()"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FingerprintService"

    const-string v1, "Remote exception in onAuthenticationFailed()"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->onAuthenticationAcquired(I)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 4

    new-instance p1, Landroid/hardware/fingerprint/Fingerprint;

    const-wide/16 v0, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$props:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$1;->val$userId:I

    invoke-interface {v0, p1, p0, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FingerprintService"

    const-string v0, "Remote exception in onAuthenticationSucceeded()"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
