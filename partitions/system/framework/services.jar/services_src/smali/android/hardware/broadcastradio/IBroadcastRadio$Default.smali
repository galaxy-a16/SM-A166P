.class public Landroid/hardware/broadcastradio/IBroadcastRadio$Default;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/IBroadcastRadio;


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

.method public cancel()V
    .locals 0

    .line 0
    return-void
.end method

.method public getAmFmRegionConfig(Z)Landroid/hardware/broadcastradio/AmFmRegionConfig;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImage(I)[B
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProperties()Landroid/hardware/broadcastradio/Properties;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isConfigFlagSet(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public registerAnnouncementListener(Landroid/hardware/broadcastradio/IAnnouncementListener;[B)Landroid/hardware/broadcastradio/ICloseHandle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public seek(ZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public setConfigFlag(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setTunerCallback(Landroid/hardware/broadcastradio/ITunerCallback;)V
    .locals 0

    .line 0
    return-void
.end method

.method public startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public step(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public stopProgramListUpdates()V
    .locals 0

    .line 0
    return-void
.end method

.method public tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
    .locals 0

    .line 0
    return-void
.end method
