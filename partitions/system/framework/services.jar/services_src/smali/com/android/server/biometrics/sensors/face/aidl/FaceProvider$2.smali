.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 1

    .line 493
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    if-eqz p2, :cond_0

    .line 495
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$userId:I

    invoke-static {p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$mscheduleLoadAuthenticatorIdsForUser(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;II)V

    .line 499
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$sensorId:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$2;->val$userId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInvalidationRequest(II)V

    :cond_0
    return-void
.end method
