.class public Lcom/samsung/android/server/audio/VolumeMonitorService;
.super Ljava/lang/Object;
.source "VolumeMonitorService.java"


# static fields
.field public static final authority:Landroid/net/Uri;

.field public static sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;


# instance fields
.field public mAvrcpAbsVolSupported:Z

.field public mBluetoothVolumeIndex:I

.field public mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field public mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public mVolumeHandler:Landroid/os/Handler;

.field public mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method public static synthetic $r8$lambda$aKnCPlxj7r3IDX_IGX8kF6dV3ts(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->lambda$resetByDataClear$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/samsung/android/server/audio/VolumeMonitorService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateLock(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmState(Lcom/samsung/android/server/audio/VolumeMonitorService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;Landroid/os/Handler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misMusicPlaying(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendVolumeData(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->sendVolumeData()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.volumemonitorprovider.VolumeMonitorProvider"

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 44
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    .line 63
    iput v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mState:I

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;
    .locals 2

    const-class v0, Lcom/samsung/android/server/audio/VolumeMonitorService;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 71
    :cond_0
    sget-object p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->sInstance:Lcom/samsung/android/server/audio/VolumeMonitorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$resetByDataClear$0()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetData()V

    return-void
.end method


# virtual methods
.method public audioServerDied()V
    .locals 2

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->release()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    const/4 v1, 0x0

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getUserContext()Landroid/content/Context;
    .locals 4

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    .line 288
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    .line 287
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 290
    :catch_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final initLocked(Z)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    :try_start_0
    new-instance v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const/4 v2, -0x3

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;-><init>(II)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AS.VolumeMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    return v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    if-nez p1, :cond_1

    .line 102
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeMonitorThread:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    .line 103
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->waitForVolumeHandlerCreation()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isMusicPlaying()Z
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/PlaybackActivityMonitor;->isMusicPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetByDataClear()V
    .locals 1

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    if-nez v0, :cond_0

    .line 160
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->resetData()V

    .line 163
    new-instance v0, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final resetData()V
    .locals 4

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string/jumbo v1, "resetData()"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetData() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.VolumeMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final sendVolumeData()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    const-string v1, "AS.VolumeMonitor"

    if-nez v0, :cond_0

    const-string p0, "SemVolumeMonitor is null"

    .line 263
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0xf4

    const/16 v3, 0x3c

    .line 268
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->getOneMinScoreStatus(II)[B

    move-result-object v0

    .line 270
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getUserContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/server/audio/VolumeMonitorService;->authority:Landroid/net/Uri;

    const-string/jumbo v3, "setVolumeData()"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVolumeData() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setDeviceVolumeForBluetooth(IZ)V
    .locals 2

    .line 168
    iput p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    if-eq v0, p2, :cond_0

    .line 172
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    .line 178
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v1, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    if-eqz v0, :cond_2

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {p0, p2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaybackActivityMonitor(Lcom/android/server/audio/PlaybackActivityMonitor;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mPlaybackActivityMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-void
.end method

.method public setVolumeMonitorOnOff(Z)V
    .locals 1

    .line 110
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 115
    :cond_0
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->initLocked(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    monitor-exit p0

    return-void

    .line 121
    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->onOff(Z)V

    if-eqz p1, :cond_3

    const-string v0, "l_volume_monitor_onoff=true"

    .line 127
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v0, "l_volume_monitor_onoff=false"

    .line 130
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mBluetoothVolumeIndex:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setBluetoothVolume(I)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mSemVolumeMonitor:Lcom/samsung/android/media/audiofx/SemVolumeMonitor;

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setAbsoluteVolumeState(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->isMusicPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->triggerMonitoring()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public triggerMonitoring()V
    .locals 2

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 81
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final waitForVolumeHandlerCreation()V
    .locals 2

    .line 187
    monitor-enter p0

    .line 188
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService;->mVolumeHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 191
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "AS.VolumeMonitor"

    const-string v1, "Interrupted while waiting on volume handler."

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
