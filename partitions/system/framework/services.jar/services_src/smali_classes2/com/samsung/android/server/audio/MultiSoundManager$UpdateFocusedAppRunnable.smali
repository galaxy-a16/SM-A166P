.class public Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mTaskId:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AS.MultiSoundManager"

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    invoke-static {v0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$mgetUidByTaskId(Lcom/samsung/android/server/audio/MultiSoundManager;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No app found taskId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1234
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->mTaskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmInterface(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateForegroundUid(I)V

    .line 1237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mForegroundUid = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
