.class public final synthetic Ld/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ld/p0;->a:I

    iput-object p2, p0, Ld/p0;->b:Ljava/lang/Object;

    iput-object p3, p0, Ld/p0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ld/q0;Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    const/16 v0, 0xa

    iput v0, p0, Ld/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld/p0;->c:Ljava/lang/Object;

    iput-object p1, p0, Ld/p0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Ld/p0;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    iget-object p0, p0, Ld/p0;->b:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v4

    :pswitch_2
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lj6/c;

    sget v1, Lcom/hivemq/client/internal/mqtt/handler/auth/k;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lj6/c;->a:Ljava/lang/Throwable;

    throw v4

    :pswitch_3
    iget-object p0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;

    sget v0, Lcom/hivemq/client/internal/mqtt/handler/auth/k;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v4

    :pswitch_4
    iget-object p0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;

    sget v0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v4

    :pswitch_5
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/g;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lj6/c;

    sget v1, Lcom/hivemq/client/internal/mqtt/handler/auth/g;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lj6/c;->a:Ljava/lang/Throwable;

    throw v4

    :pswitch_6
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/n;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lr3/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/messaging/n;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr3/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lr3/i;->a:Lr3/o;

    invoke-virtual {p0, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :pswitch_7
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lr3/i;

    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr3/i;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lr3/i;->a:Lr3/o;

    invoke-virtual {p0, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_8
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ld/s0;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/concurrent/g;

    sget v2, Lcom/google/firebase/concurrent/g;->i:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/concurrent/futures/g;->g:Ljava/lang/Object;

    :cond_0
    sget-object v2, Landroidx/concurrent/futures/g;->f:Lp1/f;

    invoke-virtual {v2, v1, v4, v0}, Lp1/f;->s(Landroidx/concurrent/futures/g;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroidx/concurrent/futures/g;->d(Landroidx/concurrent/futures/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Ld/s0;->z(Ljava/lang/Exception;)V

    :cond_1
    :goto_2
    return-void

    :pswitch_9
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/concurrent/a;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    iget v1, v0, Lcom/google/firebase/concurrent/a;->c:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v0, Lcom/google/firebase/concurrent/a;->d:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_a
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, La5/o;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lj5/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, v0, La5/o;->b:Ljava/util/Set;

    if-nez v1, :cond_3

    iget-object v1, v0, La5/o;->a:Ljava/util/Set;

    goto :goto_3

    :cond_3
    iget-object v1, v0, La5/o;->b:Ljava/util/Set;

    invoke-interface {p0}, Lj5/a;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_b
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, La5/p;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lj5/a;

    iget-object v1, v0, La5/p;->b:Lj5/a;

    sget-object v2, La5/p;->d:La5/h;

    if-ne v1, v2, :cond_4

    monitor-enter v0

    :try_start_4
    iget-object v1, v0, La5/p;->a:Lcom/google/firebase/concurrent/h;

    iput-object v4, v0, La5/p;->a:Lcom/google/firebase/concurrent/h;

    iput-object p0, v0, La5/p;->b:Lj5/a;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    invoke-virtual {v0, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :pswitch_d
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ls4/a;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$innerFuture"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-boolean v2, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Z

    if-eqz v2, :cond_5

    iget-object p0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    const-string v0, "future"

    invoke-static {p0, v0}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls1/a;->a:Ljava/lang/String;

    new-instance v0, Landroidx/work/k;

    invoke-direct {v0}, Landroidx/work/k;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/i;->k(Ls4/a;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_e
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ln1/f;

    const-string v1, "$listenersList"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm1/b;

    iget-object v2, p0, Ln1/f;->e:Ljava/lang/Object;

    iput-object v2, v1, Lm1/b;->d:Ljava/lang/Object;

    iget-object v3, v1, Lm1/b;->e:Ll1/c;

    invoke-virtual {v1, v3, v2}, Lm1/b;->d(Ll1/c;Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    return-void

    :pswitch_f
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/i0;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ls4/a;

    iget-object v0, v0, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/a;

    if-eqz v0, :cond_7

    invoke-interface {p0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    return-void

    :pswitch_10
    iget-object v0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast p0, Ld/q0;

    const-string v1, "$command"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {p0}, Ld/q0;->a()V

    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {p0}, Ld/q0;->a()V

    throw v0

    :pswitch_11
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/room/s;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    sget v1, Landroidx/room/q;->d:I

    const-string v1, "this$0"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$tables"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/room/s;->b:Landroidx/room/n;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "tables"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Landroidx/room/n;->j:Lj/g;

    monitor-enter p0

    :try_start_8
    iget-object v0, v0, Landroidx/room/n;->j:Lj/g;

    invoke-virtual {v0}, Lj/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    move-object v1, v0

    check-cast v1, Lj/e;

    invoke-virtual {v1}, Lj/e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lj/e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "(observer, wrapper)"

    invoke-static {v1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/p;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_6

    :cond_8
    monitor-exit p0

    return-void

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_12
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/profileinstaller/ProfileInstallerInitializer;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/profileinstaller/h;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    new-instance v3, Landroidx/profileinstaller/e;

    invoke-direct {v3, p0, v2}, Landroidx/profileinstaller/e;-><init>(Landroid/content/Context;I)V

    add-int/lit16 v1, v1, 0x1388

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_13
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/i;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$runnable"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/lifecycle/i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v0}, Landroidx/lifecycle/i;->d()V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot enqueue any more runnables"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_14
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/strictmode/Violation;

    sget-object v1, Ll0/b;->a:Ll0/a;

    const-string v1, "$violation"

    invoke-static {p0, v1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Policy violation with PENALTY_DEATH in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentStrictMode"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :pswitch_15
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/j;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/y1;

    const-string v2, "$transitionInfo"

    invoke-static {v0, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$operation"

    invoke-static {p0, v2}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    invoke-static {v1}, Landroidx/fragment/app/y0;->I(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition for operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has completed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :pswitch_16
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lp1/l;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/core/view/a0;

    iget-object v2, v0, Lp1/l;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, v2}, Landroidx/core/view/a0;-><init>(Landroid/view/View;)V

    iget-object v0, v0, Lp1/l;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/a;

    invoke-interface {v2, v1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    invoke-interface {p0, v1}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    sget p0, Landroidx/core/view/a0;->c:I

    return-void

    :pswitch_17
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Lp9/d;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Lp9/d;->d0(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_18
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    sget v5, Landroidx/appcompat/widget/Toolbar;->v0:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/core/view/a0;

    invoke-direct {v5, p0}, Landroidx/core/view/a0;-><init>(Landroid/view/View;)V

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/Toolbar;->r(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/d0;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->d:Landroidx/appcompat/widget/d0;

    invoke-static {v2, v6, v2, v7}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroidx/core/view/a0;->a(Landroid/view/View;Landroidx/core/view/z;)V

    move v0, v3

    goto :goto_8

    :cond_c
    move v0, v2

    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_9
    if-ge v7, v6, :cond_e

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v9, :cond_d

    move-object v4, v8

    goto :goto_a

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_11

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_b
    if-ge v7, v6, :cond_11

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, v1

    if-nez v7, :cond_f

    move v9, v0

    goto :goto_c

    :cond_f
    move v9, v2

    :goto_c
    invoke-static {v9, v0, v2, v0}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroidx/core/view/a0;->a(Landroid/view/View;Landroidx/core/view/z;)V

    move v0, v3

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {p0, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_12
    return-void

    :pswitch_19
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Ld/q0;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-virtual {v0}, Ld/q0;->a()V

    return-void

    :catchall_5
    move-exception p0

    invoke-virtual {v0}, Ld/q0;->a()V

    throw p0

    :goto_d
    iget-object v0, p0, Ld/p0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object p0, p0, Ld/p0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/common/analytics/SALog;

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/common/analytics/KmxLogWrapper;->a(Landroid/app/Application;Lcom/samsung/android/kmxservice/common/analytics/SALog;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
