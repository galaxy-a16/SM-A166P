.class public Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
.super Ljava/lang/Object;
.source "ClientMonitorCallbackConverter.java"


# instance fields
.field public mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

.field public mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field public mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/IBiometricSensorReceiver;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/face/IFaceServiceReceiver;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    return-void
.end method


# virtual methods
.method public onAcquired(III)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAcquired(III)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onAcquired(II)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 89
    invoke-interface {p0, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onAuthenticationFailed(I)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 128
    invoke-interface {p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 130
    invoke-interface {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 97
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onSemAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ[B)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_2

    .line 105
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->getFidoResultData()[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 107
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    check-cast p2, Landroid/hardware/face/Face;

    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    check-cast p2, Landroid/hardware/face/Face;

    invoke-interface {p0, p2, p4, p5, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceeded(Landroid/hardware/face/Face;IZ[B)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_3

    .line 119
    check-cast p2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p2, p4, p5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onChallengeGenerated(IIJ)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 181
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onChallengeGenerated(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetected(IIZ)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFaceDetected(IIZ)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 152
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onFingerprintDetected(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 159
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollResult(Landroid/hardware/face/Face;I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 161
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 237
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    :cond_0
    return-void
.end method

.method public onError(IIII)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onError(IIII)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1, p3, p4}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_2

    .line 141
    invoke-interface {p0, p3, p4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFeatureGet(Z[I[Z)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(Z[I[Z)V

    :cond_0
    return-void
.end method

.method public onFeatureSet(ZI)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureSet(ZI)V

    :cond_0
    return-void
.end method

.method public onImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 7

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 257
    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceServiceReceiver;->onSemImageProcessed([BIIIILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onRemoved(Landroid/hardware/face/Face;I)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_1

    .line 171
    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestResult(I)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz p0, :cond_0

    .line 295
    invoke-interface {p0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    :cond_0
    return-void
.end method

.method public onSemAuthenticationFailed()V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 269
    invoke-interface {p0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method public onSemAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ[B)V
    .locals 1

    .line 277
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    if-eqz p4, :cond_3

    .line 278
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    .line 280
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 281
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "KEY_IDENTIFIER_NAME"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p5, "KEY_BIOMETRICS_ID"

    .line 283
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p2

    invoke-virtual {p4, p5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz p6, :cond_2

    const-string p2, "KEY_CHALLENGE_TOKEN"

    .line 286
    invoke-virtual {p4, p2, p6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 288
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    invoke-interface {p0, p1, p3, p4}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onSemAuthenticationSucceededWithBundle(ILandroid/os/Bundle;)V
    .locals 5

    .line 262
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_0

    .line 263
    new-instance v0, Landroid/hardware/face/Face;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-string v4, ""

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1, p2}, Landroid/hardware/face/IFaceServiceReceiver;->onSemAuthenticationSucceededWithBundle(Landroid/hardware/face/Face;IZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSemTrustAppUpdateEvent(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintRequestReceiver:Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;->onResult(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 249
    invoke-interface {p0, p1, v0}, Landroid/hardware/face/IFaceServiceReceiver;->onSemStatusUpdate(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_0

    .line 202
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V

    :cond_0
    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V

    :cond_0
    return-void
.end method
