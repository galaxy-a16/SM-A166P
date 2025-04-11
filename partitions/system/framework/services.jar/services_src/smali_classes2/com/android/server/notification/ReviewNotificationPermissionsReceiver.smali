.class public Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReviewNotificationPermissionsReceiver.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ReviewNotifPermissions"

    const/4 v1, 0x3

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "REVIEW_NOTIF_ACTION_REMIND"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "REVIEW_NOTIF_ACTION_DISMISS"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "REVIEW_NOTIF_ACTION_CANCELED"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 59
    const-class p0, Landroid/app/NotificationManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const-string p1, "NotificationService"

    const/16 v0, 0x47

    .line 61
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "ReviewNotifPermissions"

    const-string p1, "could not cancel notification: NotificationManager not found"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "REVIEW_NOTIF_ACTION_REMIND"

    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, "review_permissions_notification_state"

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->rescheduleNotification(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->cancelNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "REVIEW_NOTIF_ACTION_DISMISS"

    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->cancelNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "REVIEW_NOTIF_ACTION_CANCELED"

    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->rescheduleNotification(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public rescheduleNotification(Landroid/content/Context;)V
    .locals 3

    const-wide/32 v0, 0x240c8400

    .line 70
    invoke-static {p1, v0, v1}, Lcom/android/server/notification/ReviewNotificationPermissionsJobService;->scheduleJob(Landroid/content/Context;J)V

    .line 72
    sget-boolean p0, Lcom/android/server/notification/ReviewNotificationPermissionsReceiver;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Scheduled review permissions notification for on or after: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p1}, Ljava/time/LocalDateTime;->now(Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 75
    invoke-virtual {p1, v0, v1, v2}, Ljava/time/LocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReviewNotifPermissions"

    .line 73
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
