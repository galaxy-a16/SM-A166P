.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

.field public final synthetic val$challenge:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;J)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    iput-wide p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;->val$challenge:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 885
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->-$$Nest$fgetmCallbackCenter(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    .line 886
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p1

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$6;->val$challenge:J

    .line 885
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->onChallengeRevoked(IIJ)V

    :cond_0
    return-void
.end method
