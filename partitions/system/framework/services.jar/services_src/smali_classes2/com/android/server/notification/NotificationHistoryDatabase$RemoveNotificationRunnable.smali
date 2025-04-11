.class public final Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mNotificationHistory:Landroid/app/NotificationHistory;

.field public mPkg:Ljava/lang/String;

.field public mPostedTime:J

.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 556
    iput-wide p3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 566
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NotiHistoryDatabase"

    const-string v1, "RemoveNotificationRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    .line 571
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 572
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 573
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 577
    :cond_2
    new-instance v3, Landroid/app/NotificationHistory;

    invoke-direct {v3}, Landroid/app/NotificationHistory;-><init>()V

    .line 578
    :goto_1
    new-instance v4, Lcom/android/server/notification/NotificationHistoryFilter$Builder;

    invoke-direct {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;-><init>()V

    .line 579
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryFilter$Builder;->build()Lcom/android/server/notification/NotificationHistoryFilter;

    move-result-object v4

    .line 578
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$smreadLocked(Landroid/util/AtomicFile;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    .line 580
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mPostedTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/NotificationHistory;->removeNotificationFromWrite(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "NotiHistoryDatabase"

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot clean up file on notification removal "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-static {v4, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 588
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setNotificationHistory(Landroid/app/NotificationHistory;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;->mNotificationHistory:Landroid/app/NotificationHistory;

    return-void
.end method
