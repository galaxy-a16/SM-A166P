.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAction(I)V
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onBiometricAction(I)V

    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->val$client:Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    :cond_0
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 1038
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method
