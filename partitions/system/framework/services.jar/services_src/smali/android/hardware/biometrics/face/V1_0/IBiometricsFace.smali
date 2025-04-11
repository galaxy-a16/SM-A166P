.class public interface abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.super Ljava/lang/Object;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract authenticate(J)I
.end method

.method public abstract cancel()I
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
.end method

.method public abstract enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
.end method

.method public abstract remove(I)I
.end method

.method public abstract resetLockout(Ljava/util/ArrayList;)I
.end method

.method public abstract revokeChallenge()I
.end method

.method public abstract setActiveUser(ILjava/lang/String;)I
.end method

.method public abstract setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract setFeature(IZLjava/util/ArrayList;I)I
.end method

.method public abstract userActivity()I
.end method
