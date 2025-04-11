.class public interface abstract Lcom/android/server/media/BluetoothRouteController;
.super Ljava/lang/Object;
.source "BluetoothRouteController.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteController;
    .locals 4

    .line 45
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bluetooth"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 50
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    new-instance p0, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;-><init>()V

    return-object p0

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaFeatureFlagManager;->getInstance()Lcom/android/server/media/MediaFeatureFlagManager;

    move-result-object v1

    const-string v2, "BluetoothRouteController__enable_legacy_bluetooth_routes_controller"

    const/4 v3, 0x1

    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/android/server/media/MediaFeatureFlagManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v1, Lcom/android/server/media/LegacyBluetoothRouteController;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    return-object v1
.end method


# virtual methods
.method public abstract getAllBluetoothRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract getTransferableRoutes()Ljava/util/List;
.end method

.method public abstract selectRoute(Ljava/lang/String;)Z
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolumeForDevices(II)Z
.end method
