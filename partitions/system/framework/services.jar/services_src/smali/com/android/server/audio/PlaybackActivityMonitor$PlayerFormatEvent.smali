.class public final Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mFormat:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

.field public final mPlayerIId:I


# direct methods
.method public constructor <init>(ILandroid/media/AudioPlaybackConfiguration$FormatInfo;)V
    .locals 0

    .line 1461
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 1462
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;->mPlayerIId:I

    .line 1463
    iput-object p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;->mFormat:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .line 1468
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "player piid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;->mPlayerIId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " format update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$PlayerFormatEvent;->mFormat:Landroid/media/AudioPlaybackConfiguration$FormatInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
