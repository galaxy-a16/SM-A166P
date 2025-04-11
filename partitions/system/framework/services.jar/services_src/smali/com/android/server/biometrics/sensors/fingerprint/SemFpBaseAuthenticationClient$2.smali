.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFpBaseAuthenticationClient.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$2;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$mhandleNotificationAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;Landroid/content/Intent;)V

    return-void
.end method
