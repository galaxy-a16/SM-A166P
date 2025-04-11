.class public interface abstract Lvendor/samsung/hardware/health/V2_0/ISehHealth;
.super Ljava/lang/Object;
.source "ISehHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_1/IHealth;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "vendor.samsung.hardware.health@2.0::ISehHealth"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;

    invoke-direct {v2, p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->interfaceChain()Ljava/util/ArrayList;

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

.method public static getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;
    .locals 1

    const-string/jumbo v0, "vendor.samsung.hardware.health@2.0::ISehHealth"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract sehGetHealthInfo_2_1(Lvendor/samsung/hardware/health/V2_0/ISehHealth$sehGetHealthInfo_2_1Callback;)V
.end method

.method public abstract sehWriteEnableToParam(IZ)I
.end method
