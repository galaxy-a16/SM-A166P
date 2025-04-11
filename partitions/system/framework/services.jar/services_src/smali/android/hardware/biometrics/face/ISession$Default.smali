.class public Landroid/hardware/biometrics/face/ISession$Default;
.super Ljava/lang/Object;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/face/ISession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public enumerateEnrollments()V
    .locals 0

    return-void
.end method

.method public generateChallenge()V
    .locals 0

    return-void
.end method

.method public getAuthenticatorId()V
    .locals 0

    return-void
.end method

.method public getFeatures()V
    .locals 0

    return-void
.end method

.method public invalidateAuthenticatorId()V
    .locals 0

    return-void
.end method

.method public onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
    .locals 0

    return-void
.end method

.method public removeEnrollments([I)V
    .locals 0

    return-void
.end method

.method public revokeChallenge(J)V
    .locals 0

    return-void
.end method

.method public setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
    .locals 0

    return-void
.end method
