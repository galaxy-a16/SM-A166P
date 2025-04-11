.class public interface abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.super Ljava/lang/Object;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 18
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    instance-of v3, v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-eqz v3, :cond_1

    .line 21
    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object v2

    .line 24
    :cond_1
    new-instance v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1

    const-string v0, "default"

    .line 84
    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1

    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    .line 74
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract authenticate(JI)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll([BII)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract getAuthenticatorId()J
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract postEnroll()I
.end method

.method public abstract preEnroll()J
.end method

.method public abstract remove(II)I
.end method

.method public abstract setActiveGroup(ILjava/lang/String;)I
.end method

.method public abstract setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
.end method
