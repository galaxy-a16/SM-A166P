.class public Lcom/android/server/wm/WmScreenshotController$3;
.super Landroid/content/BroadcastReceiver;
.source "WmScreenshotController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WmScreenshotController;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 471
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p2}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$fgetmService(Lcom/android/server/wm/WmScreenshotController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-static {p2, p1}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$mactionToDirection(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->-$$Nest$msendTakeScreenshotRunnable(Lcom/android/server/wm/WmScreenshotController;IIIILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
