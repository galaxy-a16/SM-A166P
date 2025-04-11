.class public Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;
.source "UserAwareBiometricScheduler.java"


# instance fields
.field public final mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

.field public mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

.field public final mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fputmStopUserClient(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/StopUserClient;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/server/biometrics/sensors/SemConcurrentBiometricScheduler;-><init>(Ljava/lang/String;ILandroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 114
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    .line 115
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    return-void
.end method


# virtual methods
.method public getStopUserClient()Lcom/android/server/biometrics/sensors/StopUserClient;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UaBiometricScheduler/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onUserStopped()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unexpected onUserStopped"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnUserStopped]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/StopUserClient;->onUserStopped()V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    return-void
.end method

.method public startNextOperationIfIdle()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not idle, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No operations, returning to idle"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mCurrentUserRetriever:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$CurrentUserRetriever;->getCurrentUserId()I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getTargetUserId()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 149
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startNextOperationIfIdle()V

    goto/16 :goto_0

    :cond_2
    const/16 v2, -0x2710

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 152
    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Starting User] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    if-eqz v2, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Waiting for StopUser] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mUserSwitchCallback:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;

    .line 165
    invoke-interface {v2, v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$UserSwitchCallback;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 166
    new-instance v4, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler$ClientFinishedCallback;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Stopping User] current: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", next: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-direct {v0, v1, v4, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;I)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 173
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    invoke-virtual {p0, v4}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    :goto_0
    return-void
.end method
