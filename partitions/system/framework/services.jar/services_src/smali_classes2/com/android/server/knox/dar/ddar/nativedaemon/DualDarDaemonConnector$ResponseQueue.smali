.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"


# instance fields
.field public mMaxCount:I

.field public final mPendingCmds:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 379
    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;)V
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 386
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    .line 393
    :goto_1
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v1, v2, :cond_2

    const-string v1, "DualDarDaemonConnector"

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 395
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 394
    invoke-static {v1, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const-string v2, "DualDarDaemonConnector"

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 403
    :cond_2
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_3
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_4

    .line 409
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 410
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :try_start_1
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p0

    .line 410
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public remove(ILjava/lang/String;I)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 422
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    .line 428
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_2
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_3

    .line 434
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long p1, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p0

    :catch_0
    if-nez v3, :cond_4

    const-string p0, "DualDarDaemonConnector"

    const-string p1, "Timeout waiting for response"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 441
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4
    return-object v3

    :catchall_0
    move-exception p0

    .line 435
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
