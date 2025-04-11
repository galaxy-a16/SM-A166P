.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$Injector;
.super Ljava/lang/Object;
.source "SemFpBaseAuthenticationClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireBoosting(Landroid/content/Context;)V
    .locals 1

    .line 180
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p0

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireFingerprintDvfs(Landroid/content/Context;I)V

    return-void
.end method

.method public checkTDDIDoubleTap(Landroid/content/Context;)Z
    .locals 2

    .line 151
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_EARLY_WAKE_UP:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 154
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result p0

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_1

    return v0

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "double_tab_to_wake_up"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public createBiometricNotification(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/biometrics/SemBiometricNotification;
    .locals 1

    .line 132
    new-instance p0, Lcom/android/server/biometrics/SemBiometricNotification;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object p0
.end method

.method public createUdfpsSysUiImpl(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZ)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;
    .locals 6

    .line 125
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public enableEarlyWakeUp(Landroid/content/Context;)V
    .locals 0

    .line 142
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    return-void
.end method

.method public getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .locals 1

    const-string p0, "biometric"

    .line 112
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 115
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBiometricPrompt: failed to get prompt info"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public isFoldedInFlipType(Landroid/content/Context;)Z
    .locals 0

    .line 147
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .locals 0

    .line 137
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 138
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 166
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public releaseBoosting(Landroid/content/Context;)V
    .locals 1

    .line 185
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    return-void
.end method

.method public vibrateError(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x5

    .line 176
    invoke-static {p1, p0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public vibrateSuccess(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x1

    .line 171
    invoke-static {p1, p0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method
