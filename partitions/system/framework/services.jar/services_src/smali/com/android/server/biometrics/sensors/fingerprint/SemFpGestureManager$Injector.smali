.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGestureCalibrator(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;
    .locals 0

    .line 120
    new-instance p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V

    return-object p0
.end method

.method public getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;
    .locals 0

    .line 115
    const-class p0, Landroid/app/SemStatusBarManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    return-object p0
.end method

.method public isDexMode(Landroid/content/Context;)Z
    .locals 0

    .line 124
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isDexMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isEnabledGestureSettingForSamsungPay(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string p0, "fingerprint_gesture_spay"

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 138
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 141
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz p0, :cond_1

    const-string p0, "fingerprint_gesture_spay_visible"

    .line 142
    invoke-static {p1, p0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public isEnabledGestureSettingForStatusBar(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 p0, -0x2

    const-string v0, "fingerprint_gesture_quick"

    const/4 v1, 0x0

    .line 132
    invoke-static {p1, v0, v1, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public isFoldedInFlipType(Landroid/content/Context;)Z
    .locals 0

    .line 128
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .locals 0

    .line 86
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 87
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public isProximityPositive()Z
    .locals 0

    .line 91
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    .line 92
    invoke-virtual {p0}, Landroid/os/PowerManagerInternal;->isProximityPositive()Z

    move-result p0

    return p0
.end method

.method public registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    .line 110
    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerUserSwitchObserver(Landroid/app/SynchronousUserSwitchObserver;)V
    .locals 1

    const-string p0, "FingerprintService.Gesture"

    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to register user switch observer"

    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendBigDataForCollapseStatusBar()V
    .locals 4

    .line 159
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "FPGT"

    const-string v3, "CollapseNotificationPanel"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForExpandQuickSetting()V
    .locals 4

    .line 171
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "FPGT"

    const-string v3, "ExpandQuickSettingsPanel"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForExpandStatusBar()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "FPGT"

    const-string v3, "ExpandNotificationPanel"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public sendBigDataForSamsungPay()V
    .locals 4

    .line 153
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    const-string v2, "FPGT"

    const-string v3, "SimpleSamsungPay"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public userActivityTouchEvent(Landroid/content/Context;)V
    .locals 3

    .line 96
    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method
