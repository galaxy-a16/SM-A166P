.class public Lcom/android/server/notification/NotificationReminder$5;
.super Ljava/lang/Object;
.source "NotificationReminder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    new-instance v0, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$5;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 254
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
