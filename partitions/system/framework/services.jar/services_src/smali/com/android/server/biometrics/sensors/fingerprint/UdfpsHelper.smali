.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;
.super Ljava/lang/Object;
.source "UdfpsHelper.java"


# direct methods
.method public static isValidAcquisitionMessage(Landroid/content/Context;II)Z
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V
    .locals 1

    .line 38
    instance-of v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_1

    const-string/jumbo p0, "onFingerDown | failed to cast the HIDL to V2_3"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IIFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onFingerDown | RemoteException: "

    .line 53
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .locals 2

    .line 59
    instance-of v0, p0, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_1

    const-string/jumbo p0, "onFingerUp | failed to cast the HIDL to V2_3"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "onFingerUp | RemoteException: "

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
