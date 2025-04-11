.class public Lcom/samsung/android/server/audio/AudioGameManager;
.super Ljava/lang/Object;
.source "AudioGameManager.java"


# instance fields
.field public mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

.field public mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mContext:Landroid/content/Context;

.field public mSemGameManager:Lcom/samsung/android/game/SemGameManager;

.field public mUidList:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/audio/AudioGameManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSemGameManager(Lcom/samsung/android/server/audio/AudioGameManager;)Lcom/samsung/android/game/SemGameManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidList(Lcom/samsung/android/server/audio/AudioGameManager;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 48
    new-instance p1, Lcom/samsung/android/game/SemGameManager;

    invoke-direct {p1}, Lcom/samsung/android/game/SemGameManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;-><init>(Lcom/samsung/android/server/audio/AudioGameManager;)V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioGameThread:Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addGameUid(IZ)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteGameUid(I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isGamePackager(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "dolbygametest"

    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :catch_0
    :cond_2
    return p0
.end method

.method public setParamGameUidList()V
    .locals 5

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "g_game_uid"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "|"

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v1, "AudioGameManager"

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    if-eqz p0, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
