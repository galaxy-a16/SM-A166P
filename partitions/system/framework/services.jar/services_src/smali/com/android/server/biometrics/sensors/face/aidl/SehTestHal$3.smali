.class public Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;
.super Ljava/lang/Object;
.source "SehTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAcquiredEvent(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetisEnrollSessionOpen(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/hardware/biometrics/face/EnrollmentFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/EnrollmentFrame;-><init>()V

    iget-object v1, v0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    int-to-byte p1, p1

    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    iget-object v1, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    int-to-byte p1, p1

    iput-byte p1, v1, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    iput p2, v1, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .locals 1

    if-lez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    const/16 v0, 0x45

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    invoke-interface {p0}, Landroid/hardware/biometrics/face/ISessionCallback;->onAuthenticationFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deliverEnrollResult(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)I

    move-result p0

    invoke-interface {v0, p0, p1}, Landroid/hardware/biometrics/face/ISessionCallback;->onEnrollmentProgress(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deliverErrorEvent(II)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$3;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object p0

    int-to-byte p1, p1

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
