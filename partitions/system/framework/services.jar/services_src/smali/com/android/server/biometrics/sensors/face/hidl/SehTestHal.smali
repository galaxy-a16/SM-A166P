.class public Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;
.super Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;
.source "SehTestHal.java"


# static fields
.field public static mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# instance fields
.field public currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

.field public currentActionList:Ljava/util/List;

.field public currentActionListPos:I

.field public isEnrollSessionOpen:Z

.field public isTASessionOpen:Z

.field public mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

.field public final mContext:Landroid/content/Context;

.field public mFaceId:I

.field public mGlassesOn:Z

.field public mH:Landroid/os/Handler;

.field public final mSensorId:I

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public mThread:Lcom/android/server/ServiceThread;

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$dV2qI4OOMV7boGD-_FSaIfWD3EI(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->initActions()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoAction(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->doAction()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 79
    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$Stub;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 80
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    .line 83
    new-instance p1, Lcom/android/server/ServiceThread;

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "face.hidl.SehTestHal"

    invoke-direct {p1, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    .line 85
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance p1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->InitTPA(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;
    .locals 2

    const-class v0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;-><init>(Landroid/content/Context;I)V

    sput-object v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    .line 76
    :cond_0
    sget-object p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSehTestHal:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final InitTPA(I)V
    .locals 3

    .line 378
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V

    .line 416
    new-instance v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;-><init>(ILcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 417
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    sget-boolean p0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 420
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SehTestHal: constructed, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "face.hidl.SehTestHal"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public authenticate(J)I
    .locals 2

    const-string v0, "face.hidl.SehTestHal"

    const-string v1, "authenticate"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->sehAuthenticate(JILjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method public cancel()I
    .locals 8

    const-string v0, "face.hidl.SehTestHal"

    const-string v1, "cancel"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x0

    .line 196
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final doAction()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    if-nez v0, :cond_0

    const-string p0, "face.hidl.SehTestHal"

    const-string v0, "doAction : currentAction is null"

    .line 427
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 433
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 434
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 435
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getVendorCode()I

    move-result v0

    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_1

    .line 436
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    goto :goto_0

    .line 437
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getCallbackType()Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 439
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getValue()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    return-void

    .line 444
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 446
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 4

    const-string p1, "enroll"

    const-string p2, "face.hidl.SehTestHal"

    .line 129
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->getEmptyFaceIdForEnroll()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    .line 132
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    .line 133
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 134
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mGlassesOn:Z

    .line 135
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 137
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start enroll: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", action size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "enroll : generateChallenge not done"

    .line 141
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p3
.end method

.method public enumerate()I
    .locals 4

    const-string v0, "face.hidl.SehTestHal"

    const-string v1, "enumerate"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3, v1, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnumerate(JLjava/util/ArrayList;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p1, "face.hidl.SehTestHal"

    const-string v0, "generateChallenge"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 2

    .line 186
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    const-wide/16 v0, 0x0

    .line 188
    iput-wide v0, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-object p0
.end method

.method public final getEmptyFaceIdForEnroll()I
    .locals 5

    .line 147
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-nez v2, :cond_2

    .line 152
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 153
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

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .locals 0

    .line 178
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    const/4 p1, 0x0

    .line 179
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    return-object p0
.end method

.method public final initActions()V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    if-eqz p0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    :cond_0
    return-void
.end method

.method public postUpdateAction()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(I)I
    .locals 4

    const-string v0, "face.hidl.SehTestHal"

    const-string/jumbo v1, "remove"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    if-nez p1, :cond_1

    .line 217
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 218
    invoke-virtual {p1, v0, v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    .line 221
    invoke-virtual {v3}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    invoke-interface {p1, v1, v2, v0, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    goto :goto_1

    .line 225
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    .line 225
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onRemoved(JLjava/util/ArrayList;I)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .locals 0

    const-string p0, "face.hidl.SehTestHal"

    const-string/jumbo p1, "resetLockout"

    .line 250
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized revokeChallenge()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "face.hidl.SehTestHal"

    const-string/jumbo v1, "revokeChallenge"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isEnrollSessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sehAuthenticate(JILjava/util/ArrayList;)I
    .locals 3

    const-string/jumbo p1, "sehAuthenticate"

    const-string p2, "face.hidl.SehTestHal"

    .line 274
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getAuthActionList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    const/4 p3, 0x0

    .line 277
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionListPos:I

    .line 278
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentAction:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 280
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v1

    invoke-virtual {p4, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "start authenticate: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mFaceId:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", action size = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->currentActionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3
.end method

.method public declared-synchronized sehCloseTaSession()I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 294
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isTASessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sehConfigurePreview(ILjava/util/ArrayList;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehFinishTaInstallation(Ljava/util/ArrayList;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehGetEngineVersion()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sehGetFaceTagList(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagListCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 256
    invoke-interface {p1, p0, v0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;->onValues(II)V

    return-void
.end method

.method public sehGetServicePid()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehGetTaInfo()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public sehInstallTaDataChunk(Landroid/os/HidlMemory;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehIsTaSessionClosed()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized sehOpenTaSession()I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 288
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->isTASessionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sehPauseEnrollment()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehPrepareTaInstallation()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehResumeEnrollment()I
    .locals 3

    .line 310
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mH:Landroid/os/Handler;

    const/16 v0, 0x64

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p0, 0x0

    return p0
.end method

.method public sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 267
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 268
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 269
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public sehSetFaceTag(ILjava/util/ArrayList;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehSetRotation(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public sehSetSecurityLevel(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .locals 1

    const-string p2, "face.hidl.SehTestHal"

    const-string/jumbo v0, "setActiveUser"

    .line 112
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mUserId:I

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .locals 0

    .line 104
    check-cast p1, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->mCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 105
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->status:I

    .line 107
    new-instance p0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    return-object p0
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .locals 0

    const-string p0, "face.hidl.SehTestHal"

    const-string/jumbo p1, "setFeature"

    .line 172
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public userActivity()I
    .locals 1

    const-string p0, "face.hidl.SehTestHal"

    const-string/jumbo v0, "userActivity"

    .line 244
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
