.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;
.super Ljava/lang/Object;
.source "FaceProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

.field public final synthetic val$requestId:J

.field public final synthetic val$sensorId:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$client:Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthSuccessful()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authEndedFor(IIIJZ)V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->-$$Nest$fgetmAuthSessionCoordinator(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;)Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object p1

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$userId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$sensorId:I

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;->val$requestId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->authStartedFor(IIJ)V

    return-void
.end method
