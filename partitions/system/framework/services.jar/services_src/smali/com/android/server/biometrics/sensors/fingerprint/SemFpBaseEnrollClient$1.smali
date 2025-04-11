.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;
.super Ljava/lang/Object;
.source "SemFpBaseEnrollClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysUiDismissed()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    return-void
.end method

.method public onSysUiError(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;->onError(II)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseEnrollClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    return-void
.end method
