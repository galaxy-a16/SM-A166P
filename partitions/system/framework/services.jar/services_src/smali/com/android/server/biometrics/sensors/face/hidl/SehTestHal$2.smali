.class public Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;
.super Ljava/lang/Object;
.source "SehTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAcquiredEvent(II)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAcquired(JIII)V
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
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
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
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v5

    move v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnrollResult(JIII)V
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
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
