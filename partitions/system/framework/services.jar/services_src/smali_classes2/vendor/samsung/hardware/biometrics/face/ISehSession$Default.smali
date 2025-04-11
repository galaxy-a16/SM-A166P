.class public Lvendor/samsung/hardware/biometrics/face/ISehSession$Default;
.super Ljava/lang/Object;
.source "ISehSession.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public authenticateForIssuance(JI[BZLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public getTaInfo()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWrappedData()[B
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWrappedDataFromMemory()Landroid/hardware/common/Ashmem;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isTAUnloaded()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public loadTA()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public resume()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setFaceTag(I[B)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setRotation(I)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unloadTA()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
