.class public abstract Lcom/samsung/android/server/continuity/common/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# static fields
.field public static sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static sHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$ntrOVvXEAe-nDsQWNnBh-aiq09I(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->lambda$start$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static executeOnIO(Ljava/lang/Runnable;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->wrapRunnable(Ljava/lang/Runnable;)Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static executeOnMain(Ljava/lang/Runnable;)V
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static synthetic lambda$start$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p0, 0x4

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 p0, 0x1

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Executor IO:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static start()V
    .locals 9

    .line 28
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x40

    const/16 v2, 0x40

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/samsung/android/server/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/samsung/android/server/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static wrapRunnable(Ljava/lang/Runnable;)Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;
    .locals 2

    .line 80
    new-instance v0, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Ljava/lang/Runnable;Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable-IA;)V

    return-object v0
.end method
