.class public Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;
.super Ljava/lang/Object;
.source "BiometricSchedulerOperation.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Finished / destroy]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricSchedulerOperation"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->-$$Nest$fgetmClientMonitor(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 329
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;->this$0:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->-$$Nest$fputmState(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;I)V

    return-void
.end method
