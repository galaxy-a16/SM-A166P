.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl$Injector;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayBrightnessMonitor(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;
    .locals 1

    .line 155
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;

    .line 156
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public createDisplayStateMonitor(Landroid/content/Context;)Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;
    .locals 1

    .line 149
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;

    .line 150
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object p0
.end method

.method public createEnrollSessionMonitor(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;
    .locals 0

    .line 162
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;)V

    return-object p0
.end method

.method public createGestureManager(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;
    .locals 0

    .line 126
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createOneHandModeMonitor(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;
    .locals 0

    .line 144
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOneHandModeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createProtectiveFilmGuide(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;
    .locals 0

    .line 138
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public createSpenConstraintHandler(Landroid/content/Context;Landroid/util/Pair;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;
    .locals 0

    .line 132
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;-><init>(Landroid/content/Context;Landroid/util/Pair;)V

    return-object p0
.end method

.method public getBioAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 0

    .line 120
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    return-object p0
.end method

.method public getSysUiManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .locals 0

    .line 115
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object p0

    return-object p0
.end method

.method public getUdfpsHelper()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
    .locals 0

    .line 105
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    move-result-object p0

    return-object p0
.end method

.method public getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .locals 0

    .line 110
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    return-object p0
.end method

.method public getUserOrWorkProfileId(Landroid/content/Context;I)I
    .locals 0

    .line 100
    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->getUserOrWorkProfileId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
