.class public Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;
.super Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;
.source "SemBiometricDisplayStateMonitor.java"


# instance fields
.field public mDisplayState:I


# direct methods
.method public static synthetic $r8$lambda$suMUurfG3taxyT2HggfEAbXkqsw(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->lambda$onFinish$1(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$vzBgiCInm7Xi2qBQctEorTY9DUg(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->lambda$onStart$0(III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->mDisplayState:I

    return-void
.end method

.method private synthetic lambda$onFinish$1(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayStateListener#onFinish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBiometricDisplayStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->mDisplayState:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;->onFinishDisplayState(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStart$0(III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayStateListener#onStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBiometricDisplayStateMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->mDisplayState:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;->onDisplayOn()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;->onDisplayOff()V

    :cond_1
    :goto_1
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;->onStartDisplayState(III)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDisplayState()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;->mDisplayState:I

    return p0
.end method

.method public isInteractive()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public onFinish(III)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(III)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method
