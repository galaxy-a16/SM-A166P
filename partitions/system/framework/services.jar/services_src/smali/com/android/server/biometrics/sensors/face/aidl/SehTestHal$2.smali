.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;
.super Landroid/hardware/biometrics/face/ISession$Stub;
.source "SehTestHal.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

.field public final synthetic val$cb:Landroid/hardware/biometrics/face/ISessionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Landroid/hardware/biometrics/face/ISessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 3

    const-string p1, "authenticate"

    const-string p2, "face.aidl.SehTestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->isEnrolledFace()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    const/16 p1, 0x8

    invoke-interface {p0, p1, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enroll no enrolled : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getAuthActionList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iput v0, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v0

    const/16 v2, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start authenticate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", action size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object p1
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onSessionClosed()V

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "detectInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object v0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 1

    const-string p1, "enroll"

    const-string p2, "face.aidl.SehTestHal"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->getEmptyFaceIdForEnroll()I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;I)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmTestHalHelper(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 p3, 0x0

    iput p3, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    invoke-static {p1, p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputmGlassesOn(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p3, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget p4, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionListPos:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object p3, p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/os/Handler;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p3, p3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {p3}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide p3

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "start enroll: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p3}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", action size = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    iget-object p3, p3, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "enroll : generateChallenge not done"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;)V

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "enumerateEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsEnumerated([I)V

    return-void
.end method

.method public generateChallenge()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "generateChallenge"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeGenerated(J)V

    return-void
.end method

.method public getAuthenticatorId()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "getAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdRetrieved(J)V

    return-void
.end method

.method public final getEmptyFaceIdForEnroll()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object p0
.end method

.method public getFeatures()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "getFeatures"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeaturesRetrieved([B)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public invalidateAuthenticatorId()V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string v1, "invalidateAuthenticatorId"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticatorIdInvalidated(J)V

    return-void
.end method

.method public final isEnrolledFace()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    const-string p0, "face.aidl.SehTestHal"

    const-string/jumbo p1, "onContextChanged"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeEnrollments([I)V
    .locals 2

    const-string v0, "face.aidl.SehTestHal"

    const-string/jumbo v1, "removeEnrollments"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentsRemoved([I)V

    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 1

    const-string p1, "face.aidl.SehTestHal"

    const-string/jumbo v0, "resetLockout"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onLockoutCleared()V

    return-void
.end method

.method public revokeChallenge(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "revokeChallenge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face.aidl.SehTestHal"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fputisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;Z)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onChallengeRevoked(J)V

    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    const-string p1, "face.aidl.SehTestHal"

    const-string/jumbo p3, "setFeature"

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    invoke-interface {p0, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onFeatureSet(B)V

    return-void
.end method
