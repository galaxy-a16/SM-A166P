.class public interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "DeviceRouteController.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)Lcom/android/server/media/DeviceRouteController;
    .locals 5

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    invoke-static {}, Lcom/android/server/media/MediaFeatureFlagManager;->getInstance()Lcom/android/server/media/MediaFeatureFlagManager;

    move-result-object v2

    const-string v3, "BluetoothRouteController__enable_legacy_bluetooth_routes_controller"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/media/MediaFeatureFlagManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/server/media/AudioPoliciesDeviceRouteController;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    return-object v2
.end method


# virtual methods
.method public abstract getDeviceRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract selectRoute(Ljava/lang/Integer;)Z
.end method

.method public abstract updateVolume(I)Z
.end method
