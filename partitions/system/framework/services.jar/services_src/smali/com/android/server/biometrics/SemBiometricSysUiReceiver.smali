.class public Lcom/android/server/biometrics/SemBiometricSysUiReceiver;
.super Ljava/lang/Object;
.source "SemBiometricSysUiReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# instance fields
.field public final mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiReceiver;)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSysUiListener()Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-object p0
.end method

.method public onDeviceCredentialPressed()V
    .locals 1

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onDeviceCredentialPressed: No implementation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogAnimatedIn(Z)V
    .locals 0

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onDialogAnimatedIn: No implementation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .locals 0

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onTryAgainPressed: No implementation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModalitySwitched(I)V
    .locals 0

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onModalitySwitched: No implementation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartFingerprintNow()V
    .locals 1

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onStartFingerprintNow: No implementation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSysUiError(II)V
    .locals 0

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onSysUiError: No implementation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSystemEvent(I)V
    .locals 0

    const-string p0, "BiometricService"

    const-string/jumbo p1, "onSystemEvent: No implementation"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTryAgainPressed()V
    .locals 1

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onTryAgainPressed: No implementation"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
