.class public Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;,
        Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;
    }
.end annotation


# static fields
.field private static mDone:Ljava/util/concurrent/CountDownLatch;

.field private static final mTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mTimerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mDone:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static await(I)V
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mDone:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized refreshTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;ILjava/lang/Runnable;)V
    .locals 6

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;

    invoke-direct {v3, p2, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V

    int-to-long p1, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr p1, v4

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;ILjava/lang/Runnable;)V
    .locals 6

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;

    invoke-direct {v3, p2, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$ChainTimerTask;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V

    int-to-long p1, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr p1, v4

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    if-ne p0, p1, :cond_1

    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mDone:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopTimer(Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;)V
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mTimerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;->NORMAL_MESSAGE:Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool$TimerType;

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/TimerPool;->mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
