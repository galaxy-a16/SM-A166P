.class public Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
.super Ljava/lang/Object;
.source "AidlSession.java"


# instance fields
.field public final mHalInterfaceVersion:I

.field public final mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

.field public final mSession:Landroid/hardware/biometrics/face/ISession;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/hardware/biometrics/face/ISession;ILcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalInterfaceVersion:I

    .line 42
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    .line 43
    iput p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    .line 44
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    return-void
.end method


# virtual methods
.method public getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    return-object p0
.end method

.method public getSession()Landroid/hardware/biometrics/face/ISession;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/face/ISession;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mUserId:I

    return p0
.end method

.method public hasContextMethods()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->mHalSessionCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    if-eqz p0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onLockoutCleared()V

    :cond_0
    return-void
.end method
