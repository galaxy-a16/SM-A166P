.class public Lcom/android/server/power/ScreenCurtainController$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "ScreenCurtainController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$NotificationListener;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 511
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "call"

    .line 513
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "alarm"

    .line 514
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/android/server/power/ScreenCurtainController$NotificationListener;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p1}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$NotificationListener;->this$0:Lcom/android/server/power/ScreenCurtainController;

    invoke-static {p0}, Lcom/android/server/power/ScreenCurtainController;->-$$Nest$fgetmHandler(Lcom/android/server/power/ScreenCurtainController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x2

    .line 517
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    .line 516
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 516
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    .line 0
    return-void
.end method
