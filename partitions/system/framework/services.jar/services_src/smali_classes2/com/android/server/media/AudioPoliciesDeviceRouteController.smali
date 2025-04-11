.class public final Lcom/android/server/media/AudioPoliciesDeviceRouteController;
.super Ljava/lang/Object;
.source "AudioPoliciesDeviceRouteController.java"

# interfaces
.implements Lcom/android/server/media/DeviceRouteController;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRoutesObserver:Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mContext:Landroid/content/Context;

.field public mDeviceRoute:Landroid/media/MediaRoute2Info;

.field public mDeviceVolume:I

.field public final mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

.field public mSelectedRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOnDeviceRouteChangedListener(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedRoute(Lcom/android/server/media/AudioPoliciesDeviceRouteController;)Landroid/media/MediaRoute2Info;
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDeviceRoute(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Landroid/media/MediaRoute2Info;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateRouteFromAudioInfo(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;-><init>(Lcom/android/server/media/AudioPoliciesDeviceRouteController;Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver-IA;)V

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mAudioRoutesObserver:Lcom/android/server/media/AudioPoliciesDeviceRouteController$AudioRoutesObserver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mOnDeviceRouteChangedListener:Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;

    iput-object p2, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mAudioService:Landroid/media/IAudioService;

    :try_start_0
    invoke-interface {p3, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "APDeviceRoutesController"

    const-string p3, "Cannot connect to audio service to start listen to routes"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method public final createRouteFromAudioInfo(I)Landroid/media/MediaRoute2Info;
    .locals 5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const v1, 0x1040408

    goto :goto_0

    :cond_0
    const v1, 0x1040409

    goto :goto_0

    :cond_1
    const v1, 0x104040c

    goto :goto_0

    :cond_2
    const v1, 0x104040a

    goto :goto_0

    :cond_3
    const v1, 0x104040b

    :goto_0
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/media/MediaRoute2Info$Builder;

    const-string v3, "DEVICE_ROUTE"

    iget-object v4, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceVolume:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const-string v0, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final createRouteFromAudioInfo(Landroid/media/AudioRoutesInfo;)Landroid/media/MediaRoute2Info;
    .locals 1

    if-eqz p1, :cond_4

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    const/16 p1, 0xd

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    const/16 p1, 0x9

    goto :goto_0

    :cond_3
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    const/16 p1, 0xb

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->createRouteFromAudioInfo(I)Landroid/media/MediaRoute2Info;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getDeviceRoute()Landroid/media/MediaRoute2Info;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isDeviceRouteType(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized selectRoute(Ljava/lang/Integer;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->isDeviceRouteType(I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->createRouteFromAudioInfo(I)Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateVolume(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceVolume:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceVolume:I

    iget-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mSelectedRoute:Landroid/media/MediaRoute2Info;

    :cond_1
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/AudioPoliciesDeviceRouteController;->mDeviceRoute:Landroid/media/MediaRoute2Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
