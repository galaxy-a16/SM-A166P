.class public Lcom/android/server/media/AudioPoliciesBluetoothRouteController;
.super Ljava/lang/Object;
.source "AudioPoliciesBluetoothRouteController.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController;


# instance fields
.field public final mAdapterStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

.field public final mBluetoothRoutes:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;

.field public final mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

.field public mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

.field public final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->updateBluetoothRoutes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;

    new-instance v0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController;Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    iput-object p4, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->updateBluetoothRoutes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V
    .locals 1

    new-instance v0, Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {v0, p1, p2}, Lcom/android/server/media/BluetoothProfileMonitor;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V

    return-void
.end method


# virtual methods
.method public final createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;
    .locals 7

    new-instance v0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;-><init>(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo-IA;)V

    invoke-static {v0, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {v0, v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/util/SparseBooleanArray;)V

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v4, 0x15

    invoke-virtual {v3, v4, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEARING_AID_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    :goto_0
    iget-object v4, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    const/16 v6, 0x16

    invoke-virtual {v4, v6, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isProfileSupported(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LE_AUDIO_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {v3, v6, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->getGroupId(ILandroid/bluetooth/BluetoothDevice;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1a

    :cond_3
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v4, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x104022c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    return-object v0
.end method

.method public final findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    return-object v2

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAllBluetoothRoutes()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTransferableRoutes()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    return p0
.end method

.method public final notifyBluetoothRoutesUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated(Ljava/util/List;)V

    return-void
.end method

.method public selectRoute(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->updateBluetoothRoutes()V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    monitor-exit p0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    if-nez v1, :cond_1

    const-string v0, "APBtRouteController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find bluetooth route for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    const/4 p1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;I)V

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->updateConnectivityStateForDevicesInTheSameGroup()V

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setRouteConnectionState(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;I)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "APBtRouteController"

    const-string/jumbo p1, "setRouteConnectionState: route shouldn\'t be null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-static {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothProfileMonitor:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {v0}, Lcom/android/server/media/BluetoothProfileMonitor;->start()V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$AdapterStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$DeviceStateChangedReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "APBtRouteController"

    if-nez p1, :cond_0

    const-string/jumbo p0, "transeferTo blocked mBluetoothAdapter.removeActiveDevice() for BT connection"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferTo: Unknown route. ID="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void
.end method

.method public final updateBluetoothRoutes()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateConnectivityStateForDevicesInTheSameGroup()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v3}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;I)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateVolumeForDevices(II)Z
    .locals 2

    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0x17

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    const/16 p1, 0x1a

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    if-eq v0, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->mSelectedBluetoothRoute:Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {v1}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/AudioPoliciesBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/media/AudioPoliciesBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return v1
.end method
