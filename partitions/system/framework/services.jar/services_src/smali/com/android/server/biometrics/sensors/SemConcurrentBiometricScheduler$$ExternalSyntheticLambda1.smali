.class public final synthetic Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;->$r8$lambda$TcE-DeeNrm45frnwbdfdLlrTtCw(Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method
