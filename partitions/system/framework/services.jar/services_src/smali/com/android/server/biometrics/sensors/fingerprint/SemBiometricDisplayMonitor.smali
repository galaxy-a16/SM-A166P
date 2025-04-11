.class public Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;
.super Ljava/lang/Object;
.source "SemBiometricDisplayMonitor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mHandler:Landroid/os/Handler;

    .line 51
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method


# virtual methods
.method public onChanged(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFinish(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallback(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
