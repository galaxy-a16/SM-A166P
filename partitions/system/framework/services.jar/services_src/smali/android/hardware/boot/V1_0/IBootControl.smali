.class public interface abstract Landroid/hardware/boot/V1_0/IBootControl;
.super Ljava/lang/Object;
.source "IBootControl.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_0/IBootControl;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hardware.boot@1.0::IBootControl"

    .line 29
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 31
    instance-of v3, v2, Landroid/hardware/boot/V1_0/IBootControl;

    if-eqz v3, :cond_1

    .line 32
    check-cast v2, Landroid/hardware/boot/V1_0/IBootControl;

    return-object v2

    .line 35
    :cond_1
    new-instance v2, Landroid/hardware/boot/V1_0/IBootControl$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/boot/V1_0/IBootControl$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 38
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/boot/V1_0/IBootControl;->interfaceChain()Ljava/util/ArrayList;

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

    .line 39
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

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/boot/V1_0/IBootControl;
    .locals 1

    const-string v0, "android.hardware.boot@1.0::IBootControl"

    .line 68
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/boot/V1_0/IBootControl;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hardware/boot/V1_0/IBootControl;
    .locals 1

    const-string v0, "default"

    .line 75
    invoke-static {v0, p0}, Landroid/hardware/boot/V1_0/IBootControl;->getService(Ljava/lang/String;Z)Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCurrentSlot()I
.end method

.method public abstract getNumberSlots()I
.end method

.method public abstract getSuffix(I)Ljava/lang/String;
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract isSlotBootable(I)I
.end method

.method public abstract isSlotMarkedSuccessful(I)I
.end method

.method public abstract markBootSuccessful()Landroid/hardware/boot/V1_0/CommandResult;
.end method

.method public abstract setActiveBootSlot(I)Landroid/hardware/boot/V1_0/CommandResult;
.end method

.method public abstract setSlotAsUnbootable(I)Landroid/hardware/boot/V1_0/CommandResult;
.end method
