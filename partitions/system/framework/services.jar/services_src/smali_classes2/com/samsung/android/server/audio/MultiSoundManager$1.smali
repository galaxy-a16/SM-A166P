.class public Lcom/samsung/android/server/audio/MultiSoundManager$1;
.super Landroid/app/TaskStackListener;
.source "MultiSoundManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->-$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    return-void
.end method
