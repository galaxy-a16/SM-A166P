.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;
.super Ljava/lang/Object;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    const-string p1, "FaceAuthenticationClient"

    const-string/jumbo v0, "mSemCancelDaemonCallback.onClientFinished"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->access$100(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result p1

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v2

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(IIIJZ)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4

    const-string p1, "FaceAuthenticationClient"

    const-string/jumbo v0, "mSemCancelDaemonCallback.onClientStarted"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->access$000(Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getRequestId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authStartedFor(IIJ)V

    return-void
.end method
