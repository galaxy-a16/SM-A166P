.class public interface abstract Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.super Ljava/lang/Object;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/ITunerSession;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    return-object v2

    :cond_1
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->interfaceChain()Ljava/util/ArrayList;

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


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract cancel()V
.end method

.method public abstract close()V
.end method

.method public abstract getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
.end method

.method public abstract scan(ZZ)I
.end method

.method public abstract setConfigFlag(IZ)I
.end method

.method public abstract setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end method

.method public abstract startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I
.end method

.method public abstract step(Z)I
.end method

.method public abstract stopProgramListUpdates()V
.end method

.method public abstract tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I
.end method
