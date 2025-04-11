.class public Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;->this$1:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;->this$1:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver$1;->this$1:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/16 v1, 0x3ec

    invoke-static {p0, v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msendMessage(Lcom/android/server/notification/NotificationReminder;I)V

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
