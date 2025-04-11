.class public Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;
.super Ljava/lang/Thread;
.source "FlashNotificationsController.java"


# instance fields
.field public mColor:I

.field public final mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

.field public mForceStop:Z

.field public mShouldDoCameraFlash:Z

.field public mShouldDoScreenFlash:Z

.field public final synthetic this$0:Lcom/android/server/accessibility/FlashNotificationsController;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 916
    iput p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 918
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    .line 919
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    .line 922
    iput-object p2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    .line 923
    iput-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;-><init>(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "FlashNotifController"

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run canceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    .line 1006
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1007
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final delay(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 1015
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    :catch_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1021
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long p1, v2, p1

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    :cond_2
    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "FlashNotifController"

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    .line 929
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 930
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmColor(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    .line 932
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmNotiType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 933
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    const-string v0, "FlashNotifController"

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShouldDoScreenFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldDoCameraFlash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    monitor-enter p0

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 948
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->startFlashNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 950
    :try_start_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 953
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    :try_start_4
    const-string v0, "FlashNotifController"

    const-string v1, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    .line 955
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 960
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmFlashNotifications(Lcom/android/server/accessibility/FlashNotificationsController;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 961
    :try_start_5
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmThread(Lcom/android/server/accessibility/FlashNotificationsController;)Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_2

    .line 962
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmThread(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;)V

    .line 967
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v1, :cond_3

    .line 968
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-virtual {v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->tryUnlinkToDeath()Z

    .line 969
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fputmCurrentFlashNotification(Lcom/android/server/accessibility/FlashNotificationsController;Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)V

    .line 971
    :cond_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v0, "FlashNotifController"

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {p0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmTag(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 971
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    .line 950
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 951
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 953
    :try_start_8
    iget-object v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v1}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$fgetmWakeLock(Lcom/android/server/accessibility/FlashNotificationsController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catch_1
    :try_start_9
    const-string v1, "FlashNotifController"

    const-string v2, "Error while releasing FlashNotificationsController wakelock (already released by the system?)"

    .line 955
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_2
    throw v0

    :catchall_2
    move-exception v0

    .line 959
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public final startFlashNotification()V
    .locals 3

    .line 976
    monitor-enter p0

    .line 977
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-nez v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmType(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fputmRepeat(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;I)V

    if-nez v1, :cond_0

    goto :goto_1

    .line 984
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoScreenFlash:Z

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    iget v1, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mColor:I

    iget-object v2, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v2}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmForceStartScreenFlash(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;IZ)V

    .line 988
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mShouldDoCameraFlash:Z

    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOn(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmOnDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    .line 992
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoScreenFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 993
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->this$0:Lcom/android/server/accessibility/FlashNotificationsController;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController;->-$$Nest$mdoCameraFlashNotificationOff(Lcom/android/server/accessibility/FlashNotificationsController;)V

    .line 994
    iget-boolean v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mForceStop:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 997
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->mFlashNotification:Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;

    invoke-static {v0}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;->-$$Nest$fgetmOffDuration(Lcom/android/server/accessibility/FlashNotificationsController$FlashNotification;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/FlashNotificationsController$FlashNotificationThread;->delay(J)V

    goto :goto_0

    .line 999
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
