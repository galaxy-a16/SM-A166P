.class public abstract Lcom/android/server/am/BroadcastLoopers;
.super Ljava/lang/Object;
.source "BroadcastLoopers.java"


# static fields
.field public static final sLoopers:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$4MYuc0pFN2-JmQBSNZCOW5D_3Yo(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastLoopers;->lambda$waitForBarrier$3(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIew2HZ0muKHzNdBiHanIn9J4RQ(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/BroadcastLoopers;->lambda$waitForIdle$0(Ljava/util/concurrent/CountDownLatch;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dF4GHTHa_LqpPlGCpwnd_oKTMWI(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastLoopers;->lambda$waitForIdle$1(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7aU0GJT5g-wwwkfxaHgAK8SyCs(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/BroadcastLoopers;->lambda$waitForBarrier$2(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    return-void
.end method

.method public static addMyLooper()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BroadcastLoopers"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found previously unknown looper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$waitForBarrier$2(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic lambda$waitForBarrier$3(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$waitForIdle$0(Ljava/util/concurrent/CountDownLatch;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$waitForIdle$1(Landroid/os/Looper;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public static waitForBarrier(Ljava/io/PrintWriter;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/am/BroadcastLoopers;->waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V
    .locals 9

    sget-object v0, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    sget-object v4, Lcom/android/server/am/BroadcastLoopers;->sLoopers:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Looper;

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/MessageQueue;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :cond_0
    invoke-interface {p1, v4, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    cmp-long p1, v5, v0

    if-lez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v3

    cmp-long p1, v5, v7

    if-ltz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " loopers to drain..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    move-wide v3, v5

    :cond_2
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :cond_3
    const-string p1, "Loopers drained!"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static waitForIdle(Ljava/io/PrintWriter;)V
    .locals 1

    new-instance v0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/am/BroadcastLoopers;->waitForCondition(Ljava/io/PrintWriter;Ljava/util/function/BiConsumer;)V

    return-void
.end method
