.class public final Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;
.super Landroid/database/ContentObserver;
.source "NotificationReminder.java"


# instance fields
.field public final NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

.field public final REMINDER_TYPE:Landroid/net/Uri;

.field public final TIME_KEY:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Handler;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 537
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "notification_reminder_selectable"

    .line 526
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_type"

    .line 528
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_app_list"

    .line 530
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_vibrate"

    .line 532
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    const-string/jumbo p1, "time_key"

    .line 534
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 542
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationReminder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz p1, :cond_0

    .line 548
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 549
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v6, "notification_reminder_selectable"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmEnableReminder(Lcom/android/server/notification/NotificationReminder;Z)V

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update mEnableReminder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 553
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v6, v5, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 554
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    goto :goto_1

    .line 557
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 560
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 561
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v6, "notification_reminder_vibrate"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-static {v5, v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmEnableVibrate(Lcom/android/server/notification/NotificationReminder;Z)V

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update mEnableVibrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableVibrate(Lcom/android/server/notification/NotificationReminder;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz p1, :cond_7

    .line 565
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 566
    :cond_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v3, "time_key"

    const/16 v5, 0xb4

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmInterval(Lcom/android/server/notification/NotificationReminder;I)V

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update mInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmInterval(Lcom/android/server/notification/NotificationReminder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 570
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationReminder;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;

    invoke-direct {v3, p0}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;-><init>(Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    if-eqz p1, :cond_9

    .line 580
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 581
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v3, "notification_reminder_type"

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmReminderType(Lcom/android/server/notification/NotificationReminder;I)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update mReminderType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmReminderType(Lcom/android/server/notification/NotificationReminder;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz p1, :cond_b

    .line 589
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 590
    :cond_b
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v2, "notification_reminder_app_list"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmAppSettingList(Lcom/android/server/notification/NotificationReminder;Ljava/lang/String;)V

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update mAppSettingList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmAppSettingList(Lcom/android/server/notification/NotificationReminder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method
