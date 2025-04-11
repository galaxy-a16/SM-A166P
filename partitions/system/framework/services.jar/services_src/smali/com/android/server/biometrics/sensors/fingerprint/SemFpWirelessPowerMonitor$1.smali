.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpWirelessPowerMonitor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->-$$Nest$mhandleActionOfBatteryChanged(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;->-$$Nest$mhandleActionOfWirelessPowerSharing(Lcom/android/server/biometrics/sensors/fingerprint/SemFpWirelessPowerMonitor;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
