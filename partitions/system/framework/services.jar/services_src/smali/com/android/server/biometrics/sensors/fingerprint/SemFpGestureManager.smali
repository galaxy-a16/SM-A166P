.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;


# static fields
.field static final ACTION_FINGERPRINT_GESTURE_SAMSUNG_PAY:Ljava/lang/String; = "com.samsung.android.spay.gesture.fingerprint"

.field static final ACTION_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field static final ACTION_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field static final DB_SPAY_GESTURE_MENU_VISIBLE:Ljava/lang/String; = "fingerprint_gesture_spay_visible"

.field static final PERMISSION_SAMSUNG_PAY_SIMPLE_PAY:Ljava/lang/String; = "com.samsung.android.spay.permission.SIMPLE_PAY"


# instance fields
.field mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field public mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

.field mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

.field public mIsEnabledGestureForSamsungPay:Z

.field public mIsEnabledGestureForStatusBar:Z

.field public mIsEnabledGestureMainSetting:Z

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsEnabledGestureMainSetting(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnChangeSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleOnChangeSettingValue()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenOffBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleScreenOffBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScreenOnBroadcast(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleScreenOnBroadcast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOffGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOffGestureMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mturnOnGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateGestureSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final canHandleGestureEvent(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isCalibrationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "FingerprintService.Gesture"

    if-nez v0, :cond_2

    const-string p0, "handleGestureAction: SKIP gesture action because of interactive status"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "handleGestureAction: SKIP gesture action because of DeX Mode"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isFoldedInFlipType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "handleGestureAction: SKIP gesture action because of flip folded status"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NAVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleOnChangeSettingValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isCalibrationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FingerprintService.Gesture"

    const-string v0, "calibration in progress.."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->hasCalibrationData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->startCalibration()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOffGestureMode()V

    :goto_0
    return-void
.end method

.method public final handleScreenOffBroadcast()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isProximityPositive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    :cond_2
    return-void
.end method

.method public final handleScreenOnBroadcast()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isProximityPositive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    :cond_1
    return-void
.end method

.method public final handleSwipeDownEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForExpandQuickSetting()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForExpandStatusBar()V

    :goto_0
    return-void
.end method

.method public final handleSwipeUpEvent()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->getSemStatusBarManager(Landroid/content/Context;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService.Gesture"

    const-string v2, "handleGestureAction: QuickPanel Expanded"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForCollapseStatusBar()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.spay.gesture.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->sendBigDataForSamsungPay()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onGestureEvent(II)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    const-string v0, "FingerprintService.Gesture"

    const/16 v1, 0x4e22

    const/16 v2, 0x4e21

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->isInverseDirection()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "inverse action"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    move p2, v2

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->canHandleGestureEvent(I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->userActivityTouchEvent(Landroid/content/Context;)V

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleSwipeDownEvent()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->handleSwipeUpEvent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onGestureEvent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onHalStarted(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->turnOnGestureMode()V

    :cond_0
    return-void
.end method

.method public final registerBroadcast()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    const-string v2, "fingerprint_gesture_quick"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    const-string v2, "fingerprint_gesture_spay"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerContentObserveForAllUser(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to register content observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Gesture"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final registerUserSwitchObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mUserSwitchObserver:Landroid/app/SynchronousUserSwitchObserver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->registerUserSwitchObserver(Landroid/app/SynchronousUserSwitchObserver;)V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalLifecycleListener;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->updateGestureSettingValue()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerUserSwitchObserver()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerContentObserver()V

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_GESTURE_CALIBRATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->createGestureCalibrator(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->onBootCompleted(Z)V

    :cond_0
    return-void
.end method

.method public final startCalibration()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->setCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->start(Z)V

    return-void
.end method

.method public final turnOffGestureMode()V
    .locals 7

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->unregisterBroadcast()V

    return-void
.end method

.method public final turnOnGestureMode()V
    .locals 7

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semRequest(III[B[B)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerBroadcast()V

    return-void
.end method

.method public final unregisterBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final updateGestureSettingValue()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isEnabledGestureSettingForStatusBar(Landroid/content/ContentResolver;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$Injector;->isEnabledGestureSettingForSamsungPay(Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureMainSetting:Z

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mCalibrator:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->onGestureSettingChanged(Z)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGestureSettingValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->mIsEnabledGestureForSamsungPay:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FingerprintService.Gesture"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
