.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;
.super Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;
.source "SemTpaTestHal.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;
    .locals 0

    new-instance p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    invoke-direct {p1}, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;-><init>()V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->-$$Nest$fgetmRequestActionTable(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    iput p0, p1, Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;->retValue:I

    return-object p1
.end method
