.class public interface abstract Landroid/hardware/biometrics/face/ISession;
.super Ljava/lang/Object;
.source "ISession.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$biometrics$face$ISession"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/biometrics/face/ISession;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract close()V
.end method

.method public abstract detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end method

.method public abstract enumerateEnrollments()V
.end method

.method public abstract generateChallenge()V
.end method

.method public abstract getAuthenticatorId()V
.end method

.method public abstract getEnrollmentConfig(B)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
.end method

.method public abstract getFeatures()V
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract invalidateAuthenticatorId()V
.end method

.method public abstract onContextChanged(Landroid/hardware/biometrics/common/OperationContext;)V
.end method

.method public abstract removeEnrollments([I)V
.end method

.method public abstract resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
.end method

.method public abstract revokeChallenge(J)V
.end method

.method public abstract setFeature(Landroid/hardware/keymaster/HardwareAuthToken;BZ)V
.end method
