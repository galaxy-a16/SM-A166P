.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;
.super Ljava/lang/Object;
.source "SemFpBaseAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysUiDismissed()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    return-void
.end method

.method public onSysUiError(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$fputmErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V

    .line 323
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/16 p2, 0x1388

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$fputmVendorErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthAttempted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    goto :goto_1

    .line 328
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    :goto_1
    return-void
.end method
