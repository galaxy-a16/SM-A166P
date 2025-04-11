.class public Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SemFaceBrightManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.server.biometrics.BIOMETRICS_FACE_NOTIFICATION_SCREEN_FLASH"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "user"

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "screen_flash_notification_action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFaceBrightManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "close"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p2, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$mcancelNotification(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p2, p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$mhandleGoToSettingAction(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->-$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    iget-object p2, p2, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager$2;->this$0:Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/SemFaceBrightManager;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    return-void
.end method
