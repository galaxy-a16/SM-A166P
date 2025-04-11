.class public final Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;
.super Landroid/database/ContentObserver;
.source "FlashNotificationsController.java"


# instance fields
.field public final mCameraFlashNotificationUri:Landroid/net/Uri;

.field public final mScreenFlashNotificationUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Landroid/os/Handler;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    .line 1089
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "camera_flash_notification"

    .line 1083
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    const-string/jumbo p1, "screen_flash_notification"

    .line 1085
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 1101
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1102
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;

    move-result-object p2

    .line 1103
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "camera_flash_notification"

    .line 1102
    invoke-static {p2, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    .line 1105
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmIsCameraFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1106
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mprepareForCameraFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;)V

    goto :goto_2

    .line 1108
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsTorchOn(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    .line 1109
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1110
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmTorchCallback(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    goto :goto_2

    .line 1113
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1114
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/content/Context;

    move-result-object p1

    .line 1115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_flash_notification"

    .line 1114
    invoke-static {p1, p2, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {p0, v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmIsScreenFlashNotificationEnabled(Lcom/android/server/accessibility/FlashNotificationsController;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1093
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mCameraFlashNotificationUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashContentObserver;->mScreenFlashNotificationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
