.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$2:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final onUserStarted(ILjava/lang/Object;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1$$ExternalSyntheticLambda2;->f$3:I

    move-object v5, p2

    check-cast v5, Landroid/hardware/biometrics/fingerprint/ISession;

    move v4, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;->$r8$lambda$1Lx7A0SEnKyJfKTbWZMHKnV_uws(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$1;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IILandroid/hardware/biometrics/fingerprint/ISession;I)V

    return-void
.end method
