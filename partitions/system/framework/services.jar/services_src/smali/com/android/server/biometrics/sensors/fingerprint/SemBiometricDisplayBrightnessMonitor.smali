.class public Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;
.source "SemBiometricDisplayBrightnessMonitor.java"


# instance fields
.field public mBrightness:I


# direct methods
.method public static synthetic $r8$lambda$0iKvV7-CATmZFoZEP6IsEgCrLak(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;->lambda$onChanged$0(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/16 p1, 0x7f

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;->mBrightness:I

    return-void
.end method

.method private synthetic lambda$onChanged$0(F)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayBrightnessListener#onChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBiometricDisplayBrightnessMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;->mBrightness:I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;->mBrightness:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;->onBrightnessChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;->mBrightness:I

    return p0
.end method

.method public onChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayBrightnessMonitor;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    return-void
.end method
