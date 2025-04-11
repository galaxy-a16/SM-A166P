.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;
.super Ljava/lang/Object;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    const-string p1, "FaceAuthenticationClient"

    const-string/jumbo p2, "mSemCancelDaemonCallback.onClientFinished"

    .line 518
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$mdismissNotification(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    .line 520
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 521
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getServiceExtImpl()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->-$$Nest$fgetmCancellationSignal(Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->daemonCancel(Landroid/hardware/biometrics/common/ICancellationSignal;Z)V

    :cond_0
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 0
    return-void
.end method
