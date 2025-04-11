.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;
.super Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.source "SemTpaTestSession.java"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

.field public mChallenge:J

.field public mCurrentEnrollmentId:I

.field public final mEnrollmentIds:Ljava/util/Set;

.field public final mH:Landroid/os/Handler;

.field public final mHash:Ljava/lang/String;

.field public final mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRandom:Ljava/util/Random;

.field public mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

.field public final mVersion:I


# direct methods
.method public static synthetic $r8$lambda$13P9RMqPV8P2l4YVcQcAOiV6FAA(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->lambda$generateChallenge$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8yDj6pczlXrHUURbdt6chEGfSbw(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->lambda$enroll$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$jOlyI8PSe4hMJAIHWgNLb-RNb9E(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->lambda$revokeChallenge$1(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsCancellation(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private synthetic lambda$enroll$2()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCurrentEnrollmentId:I

    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->getEnrollActionList()Ljava/util/List;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start enrollTPA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCurrentEnrollmentId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fingerprint.aidl.SemTpaTestSession"

    .line 113
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    .line 116
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 120
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->getDelay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 124
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    .line 125
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->isFinishEnroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mEnrollmentIds:Ljava/util/Set;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCurrentEnrollmentId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 127
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCurrentEnrollmentId:I

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method private synthetic lambda$generateChallenge$0()V
    .locals 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mChallenge:J

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeGenerated(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$revokeChallenge$1(J)V
    .locals 0

    .line 73
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mCallback:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onChallengeRevoked(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 4

    .line 82
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .locals 0

    .line 0
    return-void
.end method

.method public generateChallenge()V
    .locals 2

    const-string v0, "fingerprint.aidl.SemTpaTestSession"

    const-string v1, "generateChallenge"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mChallenge:J

    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAuthenticatorId()V
    .locals 0

    .line 0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mHash:Ljava/lang/String;

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mVersion:I

    return p0
.end method

.method public invalidateAuthenticatorId()V
    .locals 0

    .line 0
    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPointerCancelWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPointerDown(IIIFF)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPointerUp(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUiReady()V
    .locals 0

    .line 0
    return-void
.end method

.method public removeEnrollments([I)V
    .locals 0

    .line 0
    return-void
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 0

    .line 0
    return-void
.end method

.method public revokeChallenge(J)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setIgnoreDisplayTouches(Z)V
    .locals 0

    .line 0
    return-void
.end method
