.class public Lcom/android/server/notification/NotificationReminder$1$1;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationReminder$1;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Lcom/android/server/notification/NotificationReminder$1;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
