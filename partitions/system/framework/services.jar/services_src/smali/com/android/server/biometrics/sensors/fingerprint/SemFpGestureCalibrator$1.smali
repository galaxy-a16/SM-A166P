.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;
.super Ljava/lang/Object;
.source "SemFpGestureCalibrator.java"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(I[B)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;I)V

    return-void
.end method

.method public onError(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnError(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V

    return-void
.end method

.method public onEvent(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;->-$$Nest$mhandleOnSysUiEvent(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureCalibrator;II)V

    return-void
.end method
