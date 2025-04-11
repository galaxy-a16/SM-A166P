.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpSpenConstraintHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "info"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xe2

    const/16 v0, 0xfa

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-static {p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->-$$Nest$fgetmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->-$$Nest$fputmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;Z)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xe1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->-$$Nest$fgetmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->-$$Nest$fputmIsTspBlocked(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;Z)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSpenConstraintHandler;->handleTspBlockAction(I)V

    :cond_1
    :goto_0
    return-void
.end method
