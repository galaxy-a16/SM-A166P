.class public Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;
.end method


# virtual methods
.method public finalize()V
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeFinalize(J)V

    .line 44
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public loadModules()Ljava/util/List;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 8

    .line 61
    invoke-static {}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string p0, "BcRadio1Srv"

    const-string p1, "Cannot open tuner on HAL 1.x client for non-current user"

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot open tuner for non-current user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
