.class public final Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mClientPid:I

.field public final mClientUid:I

.field public final mPlayerAttr:Landroid/media/AudioAttributes;

.field public final mPlayerIId:I

.field public final mPlayerType:I

.field public final mSessionId:I


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 1

    .line 1361
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 1362
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerIId:I

    .line 1363
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerType:I

    .line 1364
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientUid:I

    .line 1365
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPid:I

    .line 1366
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    .line 1367
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mSessionId:I

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .line 1372
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new player piid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mClientPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerType:I

    .line 1374
    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mPlayerAttr:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$NewPlayerEvent;->mSessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
