.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# static fields
.field public static final TAG:Ljava/lang/String; = "WiredAccessoryManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBikeMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field public final mHandler:Landroid/os/Handler;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public mSwitchValues:I

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHeadsetState(Lcom/android/server/WiredAccessoryManager;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseDevInputEventForAudioJack(Lcom/android/server/WiredAccessoryManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBikeMode(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->handleBikeMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->onSystemReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowToast(Lcom/android/server/WiredAccessoryManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager;->showToast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLocked(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smupdateBit([IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateBit([IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 282
    new-instance v0, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    const-string/jumbo v1, "power"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "WiredAccessoryManager"

    .line 105
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "audio"

    .line 107
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1110236

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 113
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    .line 114
    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 115
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 117
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz p2, :cond_0

    .line 118
    new-instance p2, Lcom/android/server/WiredAccessoryManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v1}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "isBikeMode"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public static updateBit([IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 621
    aget v1, p0, v0

    or-int/2addr v1, p1

    aput v1, p0, v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 623
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 624
    aget p2, p0, v2

    or-int/2addr p1, p2

    aput p1, p0, v2

    goto :goto_0

    .line 625
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 626
    aget p2, p0, v0

    or-int/2addr p2, p1

    aput p2, p0, v0

    .line 627
    aget p2, p0, v2

    not-int p1, p1

    and-int/2addr p1, p2

    aput p1, p0, v2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleBikeMode()V
    .locals 5

    .line 642
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    .line 644
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 646
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_1

    .line 648
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v3, "Earphones are disabled in bike mode"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-eqz v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 652
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 655
    :cond_1
    iget v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    .line 656
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    move v2, v0

    .line 659
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string v4, "h2w"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-nez v0, :cond_3

    .line 664
    iput v2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    :cond_3
    return-void
.end method

.method public notifyWiredAccessoryChanged(JII)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 174
    :try_start_0
    iget p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int p4, p4

    and-int/2addr p2, p4

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 p2, p2, 0x54

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    const/4 p4, 0x4

    if-eq p2, p4, :cond_2

    const/16 p4, 0x10

    const/4 v0, 0x1

    if-eq p2, p4, :cond_1

    const/16 p4, 0x14

    if-eq p2, p4, :cond_1

    const/16 p4, 0x40

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x20

    goto :goto_0

    :cond_1
    move p3, v0

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    :cond_3
    :goto_0
    const-string p2, "h2w"

    .line 202
    iget p4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 p4, p4, -0x24

    or-int/2addr p3, p4

    invoke-virtual {p0, p2, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V

    .line 204
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 6

    .line 131
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/16 v3, -0x100

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x10

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x6

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    .line 144
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(JII)V

    .line 149
    :cond_3
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->init()V

    return-void
.end method

.method public final setDeviceStateLocked(IIILjava/lang/String;)V
    .locals 3

    and-int/2addr p2, p1

    and-int/2addr p3, p1

    if-eq p2, p3, :cond_8

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v1, 0x4

    if-ne p1, p3, :cond_1

    const v0, -0x7ffffff0

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    const/16 v2, 0x8

    if-ne p1, p3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 p3, 0x20

    if-ne p1, p3, :cond_3

    const/high16 v1, 0x20000

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/16 v1, 0x800

    goto :goto_1

    :cond_4
    if-ne p1, v2, :cond_5

    const/16 v1, 0x1000

    goto :goto_1

    :cond_5
    const/16 p3, 0x10

    if-ne p1, p3, :cond_7

    const/16 v1, 0x400

    :goto_1
    const-string p1, ""

    if-eqz v1, :cond_6

    .line 356
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, v1, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_8

    .line 359
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0, p2, p1, p4}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 346
    :cond_7
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setDeviceState() invalid headset type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return-void
.end method

.method public final setDevicesState(IILjava/lang/String;)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/16 v2, 0x3f

    :goto_0
    if-eqz v2, :cond_1

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    .line 312
    :try_start_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryManager;->setDeviceStateLocked(IIILjava/lang/String;)V

    not-int v3, v1

    and-int/2addr v2, v3

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showToast()V
    .locals 3

    .line 669
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 671
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x104057c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public systemReady()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 212
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 213
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLocked(Ljava/lang/String;I)V
    .locals 7

    and-int/lit8 p2, p2, 0x3f

    and-int/lit8 v0, p2, 0x4

    and-int/lit8 v1, p2, 0x8

    and-int/lit8 v2, p2, 0x23

    .line 241
    iget v3, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    if-ne v3, p2, :cond_0

    .line 242
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "No state change."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x23

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    .line 250
    sget-object v4, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v6, "Invalid combination, unsetting h2w flag"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    const/4 v6, 0x4

    if-ne v0, v6, :cond_2

    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    .line 256
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "Invalid combination, unsetting usb flag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    if-nez v4, :cond_3

    if-nez v0, :cond_3

    .line 260
    sget-object p0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "invalid transition, returning ..."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 266
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_4

    if-eqz v2, :cond_6

    .line 268
    sget-object p1, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v0, "Bike mode is ON. Earphones disabled"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 272
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz v0, :cond_5

    if-nez v2, :cond_6

    .line 273
    :cond_5
    sget-object v0, Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "MSG_NEW_DEVICE_STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v0, v5, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    :cond_6
    :goto_2
    iput p2, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method
