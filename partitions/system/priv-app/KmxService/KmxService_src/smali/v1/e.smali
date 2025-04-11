.class public final Lv1/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Lva/f;

.field public final c:Lw1/d;

.field public final d:Lf9/b;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Lva/f;Lw1/d;Lf9/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/e;->e:Z

    iput-object p1, p0, Lv1/e;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lv1/e;->b:Lva/f;

    iput-object p3, p0, Lv1/e;->c:Lw1/d;

    iput-object p4, p0, Lv1/e;->d:Lf9/b;

    return-void
.end method

.method private a()V
    .locals 9

    iget-object v0, p0, Lv1/e;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/h;

    iget-object v1, p0, Lv1/e;->d:Lf9/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lv1/h;->m(I)V

    const/4 v4, 0x1

    const/4 v7, 0x4

    :try_start_0
    const-string v5, "network-queue-take"

    invoke-virtual {v0, v5}, Lv1/h;->a(Ljava/lang/String;)V

    iget-object v5, v0, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v6, v0, Lv1/h;->j:Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_0

    :try_start_2
    const-string p0, "network-discard-cancelled"

    :goto_0
    invoke-virtual {v0, p0}, Lv1/h;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v5, v0, Lv1/h;->d:I

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v5, p0, Lv1/e;->b:Lva/f;

    invoke-virtual {v5, v0}, Lva/f;->m(Lv1/h;)Lv1/f;

    move-result-object v5

    const-string v6, "network-http-complete"

    invoke-virtual {v0, v6}, Lv1/h;->a(Ljava/lang/String;)V

    iget-boolean v6, v5, Lv1/f;->e:Z

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lv1/h;->i()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p0, "not-modified"

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lv1/h;->j()V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v5}, Lv1/h;->l(Lv1/f;)Lv1/j;

    move-result-object v5

    const-string v6, "network-parse-complete"

    invoke-virtual {v0, v6}, Lv1/h;->a(Ljava/lang/String;)V

    iget-boolean v6, v0, Lv1/h;->i:Z

    if-eqz v6, :cond_2

    iget-object v6, v5, Lv1/j;->c:Ljava/lang/Object;

    check-cast v6, Lv1/a;

    if-eqz v6, :cond_2

    iget-object p0, p0, Lv1/e;->c:Lw1/d;

    invoke-virtual {v0}, Lv1/h;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v5, Lv1/j;->c:Ljava/lang/Object;

    check-cast v8, Lv1/a;

    invoke-virtual {p0, v6, v8}, Lw1/d;->f(Ljava/lang/String;Lv1/a;)V

    const-string p0, "network-cache-written"

    invoke-virtual {v0, p0}, Lv1/h;->a(Ljava/lang/String;)V

    :cond_2
    iget-object p0, v0, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v4, v0, Lv1/h;->k:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, 0x0

    :try_start_4
    invoke-virtual {v1, v0, v5, p0}, Lf9/b;->j(Lv1/h;Lv1/j;Landroidx/appcompat/widget/k;)V

    invoke-virtual {v0, v5}, Lv1/h;->k(Lv1/j;)V
    :try_end_4
    .catch Lcom/android/volley/VolleyError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catch Lcom/android/volley/VolleyError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catch Lcom/android/volley/VolleyError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    const-string v5, "Unhandled exception %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    const-string v6, "Volley"

    invoke-static {v5, v4}, Lv1/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4, p0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "post-error"

    invoke-virtual {v0, p0}, Lv1/h;->a(Ljava/lang/String;)V

    new-instance v3, Lv1/j;

    invoke-direct {v3, v4}, Lv1/j;-><init>(Lcom/android/volley/VolleyError;)V

    iget-object p0, v1, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v8, La0/a;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {p0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "post-error"

    invoke-virtual {v0, v2}, Lv1/h;->a(Ljava/lang/String;)V

    new-instance v3, Lv1/j;

    invoke-direct {v3, p0}, Lv1/j;-><init>(Lcom/android/volley/VolleyError;)V

    iget-object p0, v1, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v8, La0/a;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {p0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    invoke-virtual {v0}, Lv1/h;->j()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    invoke-virtual {v0, v7}, Lv1/h;->m(I)V

    return-void

    :goto_5
    invoke-virtual {v0, v7}, Lv1/h;->m(I)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lv1/e;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lv1/e;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lv1/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
