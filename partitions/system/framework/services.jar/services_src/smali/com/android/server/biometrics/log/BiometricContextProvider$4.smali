.class public Lcom/android/server/biometrics/log/BiometricContextProvider$4;
.super Ljava/lang/Object;
.source "BiometricContextProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayMonitor$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayOff()V
    .locals 2

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BiometricContextProvider"

    const-string/jumbo v1, "onDisplayOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$4;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmIBiometricContextListener(Lcom/android/server/biometrics/log/BiometricContextProvider;)Landroid/hardware/biometrics/IBiometricContextListener;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/IBiometricContextListener;->onDisplayStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisplayOn()V
    .locals 0

    return-void
.end method
