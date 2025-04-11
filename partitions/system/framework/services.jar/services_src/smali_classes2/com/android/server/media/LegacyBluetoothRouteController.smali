.class public Lcom/android/server/media/LegacyBluetoothRouteController;
.super Ljava/lang/Object;
.source "LegacyBluetoothRouteController.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field public final mActiveRoutes:Ljava/util/List;

.field public final mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public final mBluetoothRoutes:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

.field public mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field public mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

.field public final mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

.field public final mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

.field public final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/android/server/media/LegacyBluetoothRouteController;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmA2dpProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHearingAidProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothHearingAid;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLeAudioProfile(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothLeAudio;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddActiveDevices(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveDevices(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mbuildBluetoothRoutes(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->buildBluetoothRoutes()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearActiveRoutesWithType(Lcom/android/server/media/LegacyBluetoothRouteController;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->clearActiveRoutesWithType(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateBluetoothRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/LegacyBluetoothRouteController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->removeActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/media/LegacyBluetoothRouteController;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "LBtRouteProvider"

    const/4 v1, 0x3

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/LegacyBluetoothRouteController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    .line 72
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener-IA;)V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    .line 74
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;

    .line 76
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController;Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    iput-object p3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    const-string p2, "audio"

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->buildBluetoothRoutes()V

    return-void
.end method


# virtual methods
.method public final addActiveDevices(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    .line 401
    iget-object p1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 402
    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 403
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final addActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V
    .locals 3

    const-string v0, "LBtRouteProvider"

    if-nez p1, :cond_0

    const-string p0, "addActiveRoute: btRoute is null"

    .line 352
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_0
    sget-boolean v1, Lcom/android/server/media/LegacyBluetoothRouteController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding active route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "addActiveRoute: btRoute is already added."

    .line 359
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x2

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    .line 363
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildBluetoothRoutes()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 193
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v2

    .line 195
    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final clearActiveDevices()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    :cond_0
    return-void
.end method

.method public final clearActiveRoutesWithType(I)V
    .locals 3

    .line 376
    sget-boolean v0, Lcom/android/server/media/LegacyBluetoothRouteController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing active routes with type. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBtRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 382
    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x0

    .line 384
    invoke-virtual {p0, v1, v2}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;
    .locals 7

    .line 288
    new-instance v0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;-><init>(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo-IA;)V

    .line 289
    invoke-static {v0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmBtDevice(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;Landroid/bluetooth/BluetoothDevice;)V

    .line 291
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    :cond_0
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {v0, v3}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;Landroid/util/SparseBooleanArray;)V

    .line 298
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 301
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v3, :cond_2

    .line 302
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/16 v3, 0x15

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HEARING_AID_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    .line 308
    :goto_0
    iget-object v5, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v5, :cond_3

    .line 309
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 310
    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LE_AUDIO_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mLeAudioProfile:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1a

    .line 316
    :cond_3
    new-instance v5, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v5, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "android.media.route.feature.LIVE_AUDIO"

    .line 317
    invoke-virtual {v5, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const-string v2, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 318
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x104022c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 321
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 323
    invoke-virtual {v1, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 324
    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p0

    .line 325
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    return-object v0
.end method

.method public final findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 172
    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getAllBluetoothRoutes()Ljava/util/List;
    .locals 4

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 235
    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    invoke-static {p0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTransferableRoutes()Ljava/util/List;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v0

    .line 215
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 216
    invoke-static {v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final notifyBluetoothRoutesUpdated()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final removeActiveRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)V
    .locals 2

    .line 367
    sget-boolean v0, Lcom/android/server/media/LegacyBluetoothRouteController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LBtRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/LegacyBluetoothRouteController;->setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V

    :cond_1
    return-void
.end method

.method public selectRoute(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final setRouteConnectionState(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "LBtRouteProvider"

    const-string/jumbo p1, "setRouteConnectionState: route shouldn\'t be null"

    .line 333
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_0
    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    .line 340
    :cond_1
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    invoke-static {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 341
    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 345
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->getRouteType()I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 347
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public start(Landroid/os/UserHandle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 103
    iget-object v1, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 104
    iget-object v1, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    const/16 v4, 0x15

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 105
    iget-object v1, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mProfileListener:Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothProfileListener;

    const/16 v4, 0x16

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 107
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 109
    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v5, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 115
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 116
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 117
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 118
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 120
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    .line 122
    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v11, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public stop()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mAdapterStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$AdapterStateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mDeviceStateChangedReceiver:Lcom/android/server/media/LegacyBluetoothRouteController$DeviceStateChangedReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->clearActiveDevices()V

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/LegacyBluetoothRouteController;->findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "transferTo: Unknown route. ID="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LBtRouteProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_2

    .line 163
    invoke-static {v0}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmBtDevice(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public updateVolumeForDevices(II)Z
    .locals 5

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

    if-eqz p1, :cond_5

    const/16 p1, 0x1a

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    iget-object v0, p0, Lcom/android/server/media/LegacyBluetoothRouteController;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;

    .line 267
    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v4

    if-eq v4, p1, :cond_2

    goto :goto_1

    .line 270
    :cond_2
    new-instance v1, Landroid/media/MediaRoute2Info$Builder;

    invoke-static {v2}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fgetmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    .line 271
    invoke-virtual {v1, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;->-$$Nest$fputmRoute(Lcom/android/server/media/LegacyBluetoothRouteController$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V

    move v1, v3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/android/server/media/LegacyBluetoothRouteController;->notifyBluetoothRoutesUpdated()V

    :cond_4
    return v3

    :cond_5
    return v1
.end method
