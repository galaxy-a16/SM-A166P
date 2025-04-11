.class public Lcom/android/server/notification/NotificationManagerService$21;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 11904
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 11907
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 11909
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11911
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11912
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    .line 11914
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v2, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)V

    .line 11915
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11921
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11922
    throw p0

    .line 11921
    :catch_0
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
