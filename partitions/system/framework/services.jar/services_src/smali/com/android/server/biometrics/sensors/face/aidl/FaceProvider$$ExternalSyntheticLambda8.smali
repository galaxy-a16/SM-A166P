.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIZLcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$3:Z

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$1:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$3:Z

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->$r8$lambda$peTnPgQO1mZazbQe2ZqsHCtM83w(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIZLcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method
