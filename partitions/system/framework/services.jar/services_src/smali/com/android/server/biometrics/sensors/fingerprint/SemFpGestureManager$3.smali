.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;
.super Ljava/lang/Object;
.source "SemFpGestureManager.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalibrationFinished()V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mhandleOnChangeSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    return-void
.end method

.method public onCalibrationStarted()V
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$3;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    return-void
.end method
