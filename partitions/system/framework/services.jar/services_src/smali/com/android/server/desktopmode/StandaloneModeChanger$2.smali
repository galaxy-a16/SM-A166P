.class public Lcom/android/server/desktopmode/StandaloneModeChanger$2;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "StandaloneModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

.field public final synthetic val$enter:Z


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/StandaloneModeChanger;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$2;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$2;->val$enter:Z

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$2;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$2;->this$0:Lcom/android/server/desktopmode/StandaloneModeChanger;

    iget-object v0, v0, Lcom/android/server/desktopmode/ModeChanger;->mHandler:Landroid/os/Handler;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/StandaloneModeChanger$2;->val$enter:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
