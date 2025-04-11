.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "SemTpaTestSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;


# direct methods
.method public static synthetic $r8$lambda$wiaKciEC71jvtGr9ogaMVI6Ve_s(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;->lambda$cancel$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$cancel$0()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->-$$Nest$fgetmIsCancellation(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestSession$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "a9ebb97f5abea1dc6800b69d821ef61944e80e65"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method
