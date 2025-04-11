.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Injector;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableGestureOption(Landroid/content/Context;)V
    .locals 2

    const-string p0, "fingerprint_gesture_quick"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p1, p0, v0, v0, v1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V

    const-string p0, "fingerprint_gesture_spay"

    invoke-static {p1, p0, v0, v0, v1}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public getCalibrationState(Landroid/content/Context;)I
    .locals 3

    const/4 p0, -0x1

    const/4 v0, -0x2

    const-string v1, "fingerprint_gesture_calibration_state"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, p0, v0}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public setCalibrationState(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "fingerprint_gesture_calibration_state"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, p2}, Lcom/android/server/biometrics/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method
