.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "SemFpScreenStatusNotifier.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;->-$$Nest$mnotifyScreenStatus(Lcom/android/server/biometrics/sensors/fingerprint/SemFpScreenStatusNotifier;)V

    return-void
.end method
