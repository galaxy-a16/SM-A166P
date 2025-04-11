.class public interface abstract Landroid/hardware/biometrics/face/ISessionCallback;
.super Ljava/lang/Object;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$biometrics$face$ISessionCallback"

    .line 832
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/biometrics/face/ISessionCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
.end method

.method public abstract onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
.end method

.method public abstract onAuthenticatorIdInvalidated(J)V
.end method

.method public abstract onAuthenticatorIdRetrieved(J)V
.end method

.method public abstract onChallengeGenerated(J)V
.end method

.method public abstract onChallengeRevoked(J)V
.end method

.method public abstract onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
.end method

.method public abstract onEnrollmentProgress(II)V
.end method

.method public abstract onEnrollmentsEnumerated([I)V
.end method

.method public abstract onEnrollmentsRemoved([I)V
.end method

.method public abstract onError(BI)V
.end method

.method public abstract onFeatureSet(B)V
.end method

.method public abstract onFeaturesRetrieved([B)V
.end method

.method public abstract onInteractionDetected()V
.end method

.method public abstract onLockoutCleared()V
.end method

.method public abstract onLockoutPermanent()V
.end method

.method public abstract onLockoutTimed(J)V
.end method

.method public abstract onSessionClosed()V
.end method
