.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final synthetic f$1:Landroid/hardware/biometrics/face/AuthenticationFrame;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/AuthenticationFrame;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$1:Landroid/hardware/biometrics/face/AuthenticationFrame;

    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$1:Landroid/hardware/biometrics/face/AuthenticationFrame;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->$r8$lambda$pMRoPognQtL4IO9_m7n2WIGlAKA(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/AuthenticationFrame;I)V

    return-void
.end method
