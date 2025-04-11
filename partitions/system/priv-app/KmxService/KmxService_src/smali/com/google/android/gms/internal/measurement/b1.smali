.class public final Lcom/google/android/gms/internal/measurement/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile f:Lcom/google/android/gms/internal/measurement/b1;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lp5/c;

.field public c:I

.field public d:Z

.field public volatile e:Lcom/google/android/gms/internal/measurement/g0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/v0;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/measurement/v0;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lp5/c;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v1}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/b1;->b:Lp5/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Lkotlinx/coroutines/a0;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv9/a;->j0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/q0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/q0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_0

    const-string p0, "FA"

    const-string p1, "Unable to register lifecycle notifications. Application null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/measurement/a1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/a1;-><init>(Lcom/google/android/gms/internal/measurement/b1;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/b1;
    .locals 2

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/b1;->f:Lcom/google/android/gms/internal/measurement/b1;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/b1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/b1;->f:Lcom/google/android/gms/internal/measurement/b1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/b1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/b1;->f:Lcom/google/android/gms/internal/measurement/b1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/b1;->f:Lcom/google/android/gms/internal/measurement/b1;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b1;->d:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/b1;->d:Z

    const-string v0, "FA"

    if-eqz p2, :cond_0

    const-string p0, "Data collection startup failed. No data will be collected."

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/measurement/u0;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/u0;-><init>(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/b1;->b(Lcom/google/android/gms/internal/measurement/x0;)V

    :cond_1
    const-string p0, "Error with data collection. Data lost."

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/b1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
