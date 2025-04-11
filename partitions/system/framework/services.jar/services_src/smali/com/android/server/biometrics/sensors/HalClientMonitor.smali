.class public abstract Lcom/android/server/biometrics/sensors/HalClientMonitor;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "HalClientMonitor.java"


# instance fields
.field public final mLazyDaemon:Ljava/util/function/Supplier;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 58
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object v0, p2

    .line 60
    iput-object v0, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 61
    new-instance v0, Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Z)V

    iput-object v0, v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    return-void
.end method

.method public getBiometricContextUnsubscriber()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 1

    .line 98
    new-instance v0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    return-object v0
.end method

.method public getFreshDaemon()Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isCryptoOperation()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/log/BiometricContext;->updateContext(Lcom/android/server/biometrics/log/OperationContextExt;Z)Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object p0

    return-object p0
.end method

.method public isBiometricPrompt()Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCookie()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract startHalOperation()V
.end method

.method public abstract unableToStart()V
.end method

.method public unsubscribeBiometricContext()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/log/BiometricContext;->unsubscribe(Lcom/android/server/biometrics/log/OperationContextExt;)V

    return-void
.end method
