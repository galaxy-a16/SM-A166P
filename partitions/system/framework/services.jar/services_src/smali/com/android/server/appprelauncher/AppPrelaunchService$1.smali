.class public Lcom/android/server/appprelauncher/AppPrelaunchService$1;
.super Ljava/lang/Object;
.source "AppPrelaunchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;


# direct methods
.method public constructor <init>(Lcom/android/server/appprelauncher/AppPrelaunchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "PrelGlobWatchDog"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "PRELService"

    const-string v1, "Global watchDog started"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetAPP_MAX_IDLE_TIME_MIN()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v3}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetHISTORY_TIME_MIN(Lcom/android/server/appprelauncher/AppPrelaunchService;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$sfgetGLOBAL_WATCHDOG_SLEEP_TIME_MIN()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "PRELService"

    const-string v6, "Global watchDog interrupted"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v7}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmLock(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedApps(Lcom/android/server/appprelauncher/AppPrelaunchService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v9}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunchedTimeNs()J

    move-result-wide v10

    sub-long v10, v5, v10

    cmp-long v10, v10, v1

    if-lez v10, :cond_1

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    invoke-virtual {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunchedTimeNs()J

    move-result-wide v8

    sub-long v8, v5, v8

    cmp-long v8, v8, v3

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$fgetmPrelaunchedAppHistory(Lcom/android/server/appprelauncher/AppPrelaunchService;)Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    const-string v6, "PRELService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " unused, kill"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getLock()Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->getPrelaunched()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    const-string v8, "Global watchDog"

    invoke-static {v7, v5, v8}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mkillAppInternal(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;Ljava/lang/String;)V

    const/16 v7, 0x3c

    invoke-virtual {v5, v7}, Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;->setStage(I)V

    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v6, p0, Lcom/android/server/appprelauncher/AppPrelaunchService$1;->this$0:Lcom/android/server/appprelauncher/AppPrelaunchService;

    invoke-static {v6, v5}, Lcom/android/server/appprelauncher/AppPrelaunchService;->-$$Nest$mremovePrelaunchedApp(Lcom/android/server/appprelauncher/AppPrelaunchService;Lcom/android/server/appprelauncher/AppPrelaunchService$PrelaunchedApp;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method
