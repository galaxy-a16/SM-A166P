.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:J

.field public static l:Lp5/c;

.field public static m:Ll2/d;

.field public static n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field public final a:Lv4/g;

.field public final b:Landroid/content/Context;

.field public final c:Lu9/a;

.field public final d:Lcom/google/firebase/messaging/q;

.field public final e:Landroidx/emoji2/text/t;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lw1/e;

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:J

    return-void
.end method

.method public constructor <init>(Lv4/g;Lj5/a;Lj5/a;Lk5/d;Ll2/d;Lg5/c;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v8, Lw1/e;

    invoke-virtual/range {p1 .. p1}, Lv4/g;->a()V

    iget-object v9, v7, Lv4/g;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Lw1/e;-><init>(Landroid/content/Context;)V

    new-instance v10, Lu9/a;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lu9/a;-><init>(Lv4/g;Lw1/e;Lj5/a;Lj5/a;Lk5/d;)V

    new-instance v1, Li/c;

    const-string v2, "Firebase-Messaging-Task"

    invoke-direct {v1, v2}, Li/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Li/c;

    const-string v4, "Firebase-Messaging-Init"

    invoke-direct {v3, v4}, Li/c;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const-wide/16 v14, 0x1e

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v5, Li/c;

    const-string v6, "Firebase-Messaging-File-Io"

    invoke-direct {v5, v6}, Li/c;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    move-object/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    sput-object p5, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ll2/d;

    iput-object v7, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    new-instance v6, Landroidx/emoji2/text/t;

    move-object/from16 v11, p6

    invoke-direct {v6, v0, v11}, Landroidx/emoji2/text/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lg5/c;)V

    iput-object v6, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Landroidx/emoji2/text/t;

    invoke-virtual/range {p1 .. p1}, Lv4/g;->a()V

    iget-object v6, v7, Lv4/g;->a:Landroid/content/Context;

    iput-object v6, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/internal/measurement/a1;

    invoke-direct {v11}, Lcom/google/android/gms/internal/measurement/a1;-><init>()V

    iput-object v8, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lw1/e;

    iput-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    iput-object v10, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lu9/a;

    new-instance v12, Lcom/google/firebase/messaging/q;

    invoke-direct {v12, v1}, Lcom/google/firebase/messaging/q;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v12, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/q;

    iput-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Ljava/util/concurrent/Executor;

    iput-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    invoke-virtual/range {p1 .. p1}, Lv4/g;->a()V

    instance-of v1, v9, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v9, Landroid/app/Application;

    invoke-virtual {v9, v11}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Context "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Lcom/google/firebase/messaging/l;

    invoke-direct {v1, v0, v5}, Lcom/google/firebase/messaging/l;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Li/c;

    const-string v5, "Firebase-Messaging-Topics-Io"

    invoke-direct {v3, v5}, Li/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sget v3, Lcom/google/firebase/messaging/x;->j:I

    new-instance v3, Lcom/google/firebase/messaging/w;

    move-object/from16 p1, v3

    move-object/from16 p2, v6

    move-object/from16 p3, v8

    move-object/from16 p4, p0

    move-object/from16 p5, v10

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/google/firebase/messaging/w;-><init>(Landroid/content/Context;Lw1/e;Lcom/google/firebase/messaging/FirebaseMessaging;Lu9/a;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    invoke-static {v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lr3/o;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/messaging/k;

    invoke-direct {v3, v0}, Lcom/google/firebase/messaging/k;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {v1, v2, v3}, Lr3/o;->c(Ljava/util/concurrent/Executor;Lr3/f;)Lr3/o;

    new-instance v1, Lcom/google/firebase/messaging/l;

    invoke-direct {v1, v0, v4}, Lcom/google/firebase/messaging/l;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;I)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Lcom/google/firebase/messaging/t;J)V
    .locals 4

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Li/c;

    const-string v3, "TAG"

    invoke-direct {v2, v3}, Li/c;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getInstance(Lv4/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object p0, p0, Lv4/g;->d:La5/i;

    invoke-interface {p0, v1}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    invoke-static {p0, v1}, Lva/n;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Lcom/google/firebase/messaging/s;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-static {v1}, Lw1/e;->c(Lv4/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/q;

    new-instance v3, Lcom/google/firebase/messaging/m;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/m;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/s;)V

    const-string p0, "Joining ongoing request for: "

    const-string v0, "Making new request for: "

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Lcom/google/firebase/messaging/q;->b:Ll/b;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/h;

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FirebaseMessaging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "FirebaseMessaging"

    invoke-static {p0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FirebaseMessaging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/messaging/m;->a()Lr3/o;

    move-result-object p0

    iget-object v0, v2, Lcom/google/firebase/messaging/q;->a:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/fragment/app/f;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v1}, Landroidx/fragment/app/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lr3/o;->h(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object v4

    iget-object p0, v2, Lcom/google/firebase/messaging/q;->b:Ll/b;

    invoke-virtual {p0, v1, v4}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v2

    :try_start_1
    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b(Lr3/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final c()Lcom/google/firebase/messaging/s;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    if-nez v2, :cond_0

    new-instance v2, Lp5/c;

    invoke-direct {v2, v0}, Lp5/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-virtual {v1}, Lv4/g;->a()V

    const-string v2, "[DEFAULT]"

    iget-object v3, v1, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lv4/g;->d()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-static {p0}, Lw1/e;->c(Lv4/g;)Ljava/lang/String;

    move-result-object p0

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|T|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|*"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/messaging/s;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/s;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final d()V
    .locals 3

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Landroidx/emoji2/text/t;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/emoji2/text/t;->c()V

    iget-object v0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg5/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v1, Lg5/c;

    check-cast v0, Lg5/a;

    check-cast v1, La5/m;

    invoke-virtual {v1, v0}, La5/m;->b(Lg5/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-virtual {v0}, Lv4/g;->a()V

    iget-object v0, v0, Lv4/g;->a:Landroid/content/Context;

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Lcom/google/firebase/messaging/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->f(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized f(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x1e

    :try_start_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->k:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/firebase/messaging/t;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    invoke-static {v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Lcom/google/firebase/messaging/t;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Lcom/google/firebase/messaging/s;)Z
    .locals 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lw1/e;

    invoke-virtual {p0}, Lw1/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/firebase/messaging/s;->c:J

    sget-wide v5, Lcom/google/firebase/messaging/s;->d:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget-object p1, p1, Lcom/google/firebase/messaging/s;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method
