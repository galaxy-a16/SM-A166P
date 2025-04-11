.class public interface abstract Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;
.super Ljava/lang/Object;
.source "ISehBiometricsFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    .line 21
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    instance-of v3, v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    if-eqz v3, :cond_1

    .line 24
    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    return-object v2

    .line 27
    :cond_1
    new-instance v2, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Proxy;

    invoke-direct {v2, p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    :try_start_0
    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService()Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;
    .locals 1

    const-string v0, "default"

    .line 87
    invoke-static {v0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.biometrics.face@3.0::ISehBiometricsFace"

    .line 77
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract sehAuthenticateForIssuance(JILjava/util/ArrayList;ZZ)I
.end method

.method public abstract sehSetCallbackEx(Lvendor/samsung/hardware/biometrics/face/V3_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method
