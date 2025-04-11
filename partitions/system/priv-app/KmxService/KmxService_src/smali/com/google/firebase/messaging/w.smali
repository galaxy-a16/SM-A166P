.class public final synthetic Lcom/google/firebase/messaging/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic c:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic d:Lw1/e;

.field public final synthetic e:Lu9/a;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lw1/e;Lcom/google/firebase/messaging/FirebaseMessaging;Lu9/a;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/w;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/firebase/messaging/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/firebase/messaging/w;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/w;->d:Lw1/e;

    iput-object p4, p0, Lcom/google/firebase/messaging/w;->e:Lu9/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lcom/google/firebase/messaging/w;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/firebase/messaging/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/google/firebase/messaging/w;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v2, p0, Lcom/google/firebase/messaging/w;->d:Lw1/e;

    iget-object v4, p0, Lcom/google/firebase/messaging/w;->e:Lu9/a;

    const-class p0, Lcom/google/firebase/messaging/v;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/messaging/v;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/v;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.appid"

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/messaging/v;

    invoke-direct {v3, v0, v6}, Lcom/google/firebase/messaging/v;-><init>(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledExecutorService;)V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0, v6}, Lb3/r;->a(Landroid/content/SharedPreferences;Ljava/util/concurrent/Executor;)Lb3/r;

    move-result-object v0

    iput-object v0, v3, Lcom/google/firebase/messaging/v;->a:Lb3/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/messaging/v;->c:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move-object v3, v0

    :goto_1
    monitor-exit p0

    new-instance p0, Lcom/google/firebase/messaging/x;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lw1/e;Lcom/google/firebase/messaging/v;Lu9/a;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
