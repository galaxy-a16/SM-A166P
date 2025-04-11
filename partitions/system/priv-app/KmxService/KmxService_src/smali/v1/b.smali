.class public final Lv1/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final g:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Ljava/util/concurrent/BlockingQueue;

.field public final c:Lw1/d;

.field public final d:Lf9/b;

.field public volatile e:Z

.field public final f:Lv1/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lv1/m;->a:Z

    sput-boolean v0, Lv1/b;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/PriorityBlockingQueue;Lw1/d;Lf9/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/b;->e:Z

    iput-object p1, p0, Lv1/b;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lv1/b;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lv1/b;->c:Lw1/d;

    iput-object p4, p0, Lv1/b;->d:Lf9/b;

    new-instance p1, Lv1/n;

    invoke-direct {p1, p0, p2, p4}, Lv1/n;-><init>(Lv1/b;Ljava/util/concurrent/PriorityBlockingQueue;Lf9/b;)V

    iput-object p1, p0, Lv1/b;->f:Lv1/n;

    return-void
.end method

.method private a()V
    .locals 12

    iget-object v0, p0, Lv1/b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/h;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lv1/h;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv1/h;->m(I)V

    const/4 v2, 0x2

    :try_start_0
    iget-object v3, v0, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v4, v0, Lv1/h;->j:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_0

    :try_start_2
    const-string p0, "cache-discard-canceled"

    invoke-virtual {v0, p0}, Lv1/h;->c(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Lv1/b;->c:Lw1/d;

    invoke-virtual {v0}, Lv1/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lw1/d;->a(Ljava/lang/String;)Lv1/a;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lv1/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lv1/b;->f:Lv1/n;

    invoke-virtual {v1, v0}, Lv1/n;->a(Lv1/h;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_0
    iget-object p0, p0, Lv1/b;->b:Ljava/util/concurrent/BlockingQueue;

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lv1/a;->e:J

    cmp-long v6, v6, v4

    const/4 v7, 0x0

    if-gez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_1
    if-eqz v6, :cond_3

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lv1/h;->a(Ljava/lang/String;)V

    iput-object v3, v0, Lv1/h;->m:Lv1/a;

    iget-object v1, p0, Lv1/b;->f:Lv1/n;

    invoke-virtual {v1, v0}, Lv1/n;->a(Lv1/h;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_3
    const-string v6, "cache-hit"

    invoke-virtual {v0, v6}, Lv1/h;->a(Ljava/lang/String;)V

    new-instance v6, Lv1/f;

    iget-object v8, v3, Lv1/a;->a:[B

    iget-object v9, v3, Lv1/a;->g:Ljava/util/Map;

    invoke-direct {v6, v8, v9}, Lv1/f;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v6}, Lv1/h;->l(Lv1/f;)Lv1/j;

    move-result-object v6

    const-string v8, "cache-hit-parsed"

    invoke-virtual {v0, v8}, Lv1/h;->a(Ljava/lang/String;)V

    iget-object v8, v6, Lv1/j;->d:Ljava/lang/Object;

    check-cast v8, Lcom/android/volley/VolleyError;

    if-nez v8, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    const/4 v9, 0x0

    if-nez v8, :cond_6

    const-string v1, "cache-parsing-failed"

    invoke-virtual {v0, v1}, Lv1/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lv1/b;->c:Lw1/d;

    invoke-virtual {v0}, Lv1/h;->f()Ljava/lang/String;

    move-result-object v3

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1, v3}, Lw1/d;->a(Ljava/lang/String;)Lv1/a;

    move-result-object v4

    if-eqz v4, :cond_5

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lv1/a;->f:J

    iput-wide v5, v4, Lv1/a;->e:J

    invoke-virtual {v1, v3, v4}, Lw1/d;->f(Ljava/lang/String;Lv1/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    monitor-exit v1

    iput-object v9, v0, Lv1/h;->m:Lv1/a;

    iget-object v1, p0, Lv1/b;->f:Lv1/n;

    invoke-virtual {v1, v0}, Lv1/n;->a(Lv1/h;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :goto_3
    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_6
    iget-wide v10, v3, Lv1/a;->f:J

    cmp-long v4, v10, v4

    if-gez v4, :cond_7

    move v7, v1

    :cond_7
    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lv1/h;->a(Ljava/lang/String;)V

    iput-object v3, v0, Lv1/h;->m:Lv1/a;

    iput-boolean v1, v6, Lv1/j;->a:Z

    iget-object v1, p0, Lv1/b;->f:Lv1/n;

    invoke-virtual {v1, v0}, Lv1/n;->a(Lv1/h;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lv1/b;->d:Lf9/b;

    new-instance v3, Landroidx/appcompat/widget/k;

    const/16 v4, 0xd

    invoke-direct {v3, v4, p0, v0}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v6, v3}, Lf9/b;->j(Lv1/h;Lv1/j;Landroidx/appcompat/widget/k;)V

    goto :goto_5

    :cond_9
    :goto_4
    iget-object p0, p0, Lv1/b;->d:Lf9/b;

    invoke-virtual {p0, v0, v6, v9}, Lf9/b;->j(Lv1/h;Lv1/j;Landroidx/appcompat/widget/k;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    :goto_5
    invoke-virtual {v0, v2}, Lv1/h;->m(I)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    invoke-virtual {v0, v2}, Lv1/h;->m(I)V

    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv1/b;->e:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Lv1/b;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lv1/m;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lv1/b;->c:Lw1/d;

    invoke-virtual {v0}, Lw1/d;->d()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lv1/b;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lv1/b;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lv1/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
