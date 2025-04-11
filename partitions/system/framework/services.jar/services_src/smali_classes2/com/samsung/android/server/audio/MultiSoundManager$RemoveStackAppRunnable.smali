.class public Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mRemoveTaskId:I

.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->mRemoveTaskId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;->mRemoveTaskId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
