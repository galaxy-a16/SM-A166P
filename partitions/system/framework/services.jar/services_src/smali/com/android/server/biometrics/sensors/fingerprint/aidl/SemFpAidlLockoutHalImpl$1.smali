.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpAidlLockoutHalImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

.field public final synthetic val$callback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;->val$callback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resetting lockout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintService"

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "lockout_reset_user"

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 79
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl;->getLockoutModeForUser(I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$1;->val$callback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;

    invoke-interface {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFpAidlLockoutHalImpl$LockoutResetCallback;->onLockoutReset(I)V

    :cond_0
    return-void
.end method
