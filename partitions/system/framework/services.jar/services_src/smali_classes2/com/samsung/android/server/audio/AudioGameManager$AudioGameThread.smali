.class public Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
.super Ljava/lang/Thread;
.source "AudioGameManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/AudioGameManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/AudioGameManager;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    const-string p1, "AudioGameThread"

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioGameManager;->-$$Nest$fgetmSemGameManager(Lcom/samsung/android/server/audio/AudioGameManager;)Lcom/samsung/android/game/SemGameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->getGameList()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-static {v2}, Lcom/samsung/android/server/audio/AudioGameManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/audio/AudioGameManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioGameManager;->-$$Nest$fgetmUidList(Lcom/samsung/android/server/audio/AudioGameManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_0

    .line 133
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    return-void
.end method
