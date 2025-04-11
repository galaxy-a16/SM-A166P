.class public interface abstract Landroid/hidl/manager/V1_0/IServiceManager;
.super Ljava/lang/Object;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "android.hidl.manager@1.0::IServiceManager"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hidl.manager@1.0::IServiceManager"

    .line 34
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    instance-of v3, v2, Landroid/hidl/manager/V1_0/IServiceManager;

    if-eqz v3, :cond_1

    .line 37
    check-cast v2, Landroid/hidl/manager/V1_0/IServiceManager;

    return-object v2

    .line 40
    :cond_1
    new-instance v2, Landroid/hidl/manager/V1_0/IServiceManager$Proxy;

    invoke-direct {v2, p0}, Landroid/hidl/manager/V1_0/IServiceManager$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 43
    :try_start_0
    invoke-interface {v2}, Landroid/hidl/manager/V1_0/IServiceManager;->interfaceChain()Ljava/util/ArrayList;

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

    .line 44
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

.method public static castFrom(Landroid/os/IHwInterface;)Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "default"

    .line 100
    invoke-static {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->getService(Ljava/lang/String;)Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 90
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1

    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    .line 73
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hidl/manager/V1_0/IServiceManager;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hidl/manager/V1_0/IServiceManager;
    .locals 1

    const-string v0, "default"

    .line 80
    invoke-static {v0, p0}, Landroid/hidl/manager/V1_0/IServiceManager;->getService(Ljava/lang/String;Z)Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z
.end method

.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
.end method

.method public abstract debugDump()Ljava/util/ArrayList;
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
.end method

.method public abstract getTransport(Ljava/lang/String;Ljava/lang/String;)B
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract list()Ljava/util/ArrayList;
.end method

.method public abstract listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract notifySyspropsChanged()V
.end method

.method public abstract ping()V
.end method

.method public abstract registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
.end method

.method public abstract registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHALInstrumentation()V
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
