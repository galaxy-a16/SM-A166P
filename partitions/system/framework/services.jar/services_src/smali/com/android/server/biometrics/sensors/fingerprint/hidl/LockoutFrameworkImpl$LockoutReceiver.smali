.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockoutFrameworkImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resetting lockout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockoutTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.android.server.biometrics.sensors.fingerprint.ACTION_LOCKOUT_RESET"

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "lockout_reset_user"

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutReceiver;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    :cond_0
    return-void
.end method
