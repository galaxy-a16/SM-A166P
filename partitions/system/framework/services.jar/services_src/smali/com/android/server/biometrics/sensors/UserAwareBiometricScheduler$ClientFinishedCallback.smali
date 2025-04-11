.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;
.super Ljava/lang/Object;
.source "UserAwareBiometricScheduler.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;


# direct methods
.method public static synthetic $r8$lambda$bPTI36UoaLM9u7iv2w2mS9YvO7M(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    return-void
.end method

.method private synthetic lambda$onClientFinished$0(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Client finished] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    instance-of p1, p1, Lcom/android/server/biometrics/sensors/StopUserClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StopUserClient failed(), is the HAL stuck? Clearing mStopUserClient"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {p1, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->-$$Nest$fputmStopUserClient(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/StopUserClient;)V

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->mOwner:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isFor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->destroy()V

    .line 84
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iput-object v0, p1, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "operation is already null or different (reset?): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->startNextOperationIfIdle()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;->this$0:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
