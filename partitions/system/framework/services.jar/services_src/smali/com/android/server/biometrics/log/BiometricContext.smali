.class public interface abstract Lcom/android/server/biometrics/log/BiometricContext;
.super Ljava/lang/Object;
.source "BiometricContext.java"


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ensureBiometricContextListener(Lcom/android/server/biometrics/sensors/fingerprint/SemBiometricDisplayStateMonitor;)V
.end method

.method public abstract getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;
.end method

.method public abstract getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
.end method

.method public abstract getCurrentRotation()I
.end method

.method public abstract getDisplayState()I
.end method

.method public abstract getDockedState()I
.end method

.method public abstract getFoldState()I
.end method

.method public abstract getISessionListener()Lcom/android/internal/statusbar/ISessionListener;
.end method

.method public abstract getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;
.end method

.method public abstract isAod()Z
.end method

.method public abstract isAwake()Z
.end method

.method public abstract isDisplayOn()Z
.end method

.method public abstract subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;)V
.end method

.method public abstract unsubscribe(Lcom/android/server/biometrics/log/OperationContextExt;)V
.end method

.method public abstract updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;
.end method
