.class public final Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;
.super Ljava/lang/Object;
.source "NotificationHistoryDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationHistoryDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 493
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmHistoryDir(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->run(Landroid/util/AtomicFile;)V

    return-void
.end method

.method public run(Landroid/util/AtomicFile;)V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmLock(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 498
    :try_start_0
    invoke-static {}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotiHistoryDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriteBufferRunnable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v2, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    invoke-static {v1, p1, v2}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$mwriteLocked(Lcom/android/server/notification/NotificationHistoryDatabase;Landroid/util/AtomicFile;Landroid/app/NotificationHistory;)V

    .line 502
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    iget-object v1, v1, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 503
    iget-object p1, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    iput-object v1, p1, Lcom/android/server/notification/NotificationHistoryDatabase;->mBuffer:Landroid/app/NotificationHistory;

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 507
    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {v3}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmUris(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->updatePostedTime(JLjava/util/ArrayList;)Z

    .line 508
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;->this$0:Lcom/android/server/notification/NotificationHistoryDatabase;

    invoke-static {p0}, Lcom/android/server/notification/NotificationHistoryDatabase;->-$$Nest$fgetmUris(Lcom/android/server/notification/NotificationHistoryDatabase;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "NotiHistoryDatabase"

    const-string v1, "Failed to write buffer to disk. not flushing buffer"

    .line 511
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
