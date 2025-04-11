.class public final Lcom/android/server/power/FaceDownDetector$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FaceDownDetector.java"


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 463
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 464
    invoke-static {p1, p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 465
    invoke-static {p1}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.SCREEN_ON"

    .line 466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 467
    invoke-static {p1, p0}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$fputmInteractive(Lcom/android/server/power/FaceDownDetector;Z)V

    .line 468
    invoke-static {p1}, Lcom/android/server/power/FaceDownDetector;->-$$Nest$mupdateActiveState(Lcom/android/server/power/FaceDownDetector;)V

    :cond_1
    :goto_0
    return-void
.end method
