.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "PlaybackActivityMonitor.java"


# instance fields
.field public final mUseStrongDuck:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZZ)V
    .locals 0

    .line 1413
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 1414
    iput-boolean p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    return-void
.end method


# virtual methods
.method public getVSAction()Ljava/lang/String;
    .locals 0

    .line 1408
    iget-boolean p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    if-eqz p0, :cond_0

    const-string p0, "ducking (strong)"

    goto :goto_0

    :cond_0
    const-string p0, "ducking"

    :goto_0
    return-object p0
.end method
