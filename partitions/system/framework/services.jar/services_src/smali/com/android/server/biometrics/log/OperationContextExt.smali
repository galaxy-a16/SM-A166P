.class public Lcom/android/server/biometrics/log/OperationContextExt;
.super Ljava/lang/Object;
.source "OperationContextExt.java"


# instance fields
.field public final mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

.field public mDockState:I

.field public mFoldState:I

.field public final mIsBP:Z

.field public mIsDisplayOn:Z

.field public mOrientation:I

.field public mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/common/OperationContext;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    iput v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v0}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;Z)V

    return-void
.end method

.method public static toAidlDisplayState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAuthenticateReason()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x3

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayState()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    return p0
.end method

.method public getDockState()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    return p0
.end method

.method public getFoldState()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    return p0
.end method

.method public getId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    return p0
.end method

.method public getOrderAndIncrement()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getOrderAndIncrement()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return p0
.end method

.method public getReason()B
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-byte p0, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return p0
.end method

.method public getWakeReason()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    return p0
.end method

.method public final getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getWakeReason()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    const/16 v0, 0xa

    const/4 v1, 0x6

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    return v0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAod()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean p0, p0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    return p0
.end method

.method public isCrypto()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean p0, p0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    return p0
.end method

.method public isDisplayOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    return p0
.end method

.method public final setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsBP:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getBiometricPromptSessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x1

    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getKeyguardEntrySessionInfo()Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x2

    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    const/4 p1, 0x0

    iput p1, p0, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iput-byte p1, p0, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    return-void
.end method

.method public toAidlContext()Landroid/hardware/biometrics/common/OperationContext;
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public toAidlContext(Landroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/face/FaceAuthenticateOptions;)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public toAidlContext(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/biometrics/common/OperationContext;
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getAuthReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/biometrics/common/AuthenticateReason;->fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->getWakeReason(Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)I

    move-result p1

    iput p1, v0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    return-object p0
.end method

.method public update(Lcom/android/server/biometrics/log/BiometricContext;Z)Lcom/android/server/biometrics/log/OperationContextExt;
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isAod()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDisplayState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/log/OperationContextExt;->toAidlDisplayState(I)I

    move-result v1

    iput v1, v0, Landroid/hardware/biometrics/common/OperationContext;->displayState:I

    iget-object v0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput-boolean p2, v0, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/OperationContextExt;->setFirstSessionId(Lcom/android/server/biometrics/log/BiometricContext;)V

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->isDisplayOn()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getDockedState()I

    move-result p2

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getFoldState()I

    move-result p2

    iput p2, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    invoke-interface {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getCurrentRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    return-object p0
.end method
