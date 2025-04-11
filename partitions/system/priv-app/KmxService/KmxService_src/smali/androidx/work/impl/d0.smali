.class public final Landroidx/work/impl/d0;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# static fields
.field public static A:Landroidx/work/impl/d0;

.field public static final B:Ljava/lang/Object;

.field public static z:Landroidx/work/impl/d0;


# instance fields
.field public p:Landroid/content/Context;

.field public q:Landroidx/work/b;

.field public r:Landroidx/work/impl/WorkDatabase;

.field public s:Lr1/a;

.field public t:Ljava/util/List;

.field public u:Landroidx/work/impl/p;

.field public v:Lp5/c;

.field public w:Z

.field public x:Landroid/content/BroadcastReceiver$PendingResult;

.field public final y:Lcom/google/firebase/messaging/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/d0;->z:Landroidx/work/impl/d0;

    sput-object v0, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/d0;->B:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Lp1/v;)V
    .locals 13

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lp1/v;->b:Ljava/lang/Object;

    check-cast v3, Lq1/m;

    const-string v4, "context"

    invoke-static {v2, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "queryExecutor"

    invoke-static {v3, v4}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, Landroidx/work/impl/WorkDatabase;

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/room/w;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v4, v6}, Landroidx/room/w;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iput-boolean v5, v1, Landroidx/room/w;->j:Z

    goto :goto_0

    :cond_0
    const-string v1, "androidx.work.workdb"

    invoke-static {v2, v4, v1}, Lva/n;->m(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/w;

    move-result-object v1

    new-instance v4, Landroidx/work/impl/w;

    invoke-direct {v4, v2}, Landroidx/work/impl/w;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Landroidx/room/w;->i:La1/e;

    :goto_0
    iput-object v3, v1, Landroidx/room/w;->g:Ljava/util/concurrent/Executor;

    sget-object v3, Landroidx/work/impl/b;->a:Landroidx/work/impl/b;

    iget-object v4, v1, Landroidx/room/w;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/g;->a:Landroidx/work/impl/g;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    new-instance v4, Landroidx/work/impl/q;

    const/4 v6, 0x3

    const/4 v10, 0x2

    invoke-direct {v4, v2, v10, v6}, Landroidx/work/impl/q;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/h;->a:Landroidx/work/impl/h;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/i;->a:Landroidx/work/impl/i;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    new-instance v4, Landroidx/work/impl/q;

    const/4 v6, 0x5

    const/4 v11, 0x6

    invoke-direct {v4, v2, v6, v11}, Landroidx/work/impl/q;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/j;->a:Landroidx/work/impl/j;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/k;->a:Landroidx/work/impl/k;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    sget-object v4, Landroidx/work/impl/l;->a:Landroidx/work/impl/l;

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    new-instance v4, Landroidx/work/impl/q;

    invoke-direct {v4, v2}, Landroidx/work/impl/q;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v3, v5, [Ly0/a;

    new-instance v4, Landroidx/work/impl/q;

    const/16 v6, 0xa

    const/16 v11, 0xb

    invoke-direct {v4, v2, v6, v11}, Landroidx/work/impl/q;-><init>(Landroid/content/Context;II)V

    aput-object v4, v3, v9

    invoke-virtual {v1, v3}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v2, v5, [Ly0/a;

    sget-object v3, Landroidx/work/impl/d;->a:Landroidx/work/impl/d;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v2, v5, [Ly0/a;

    sget-object v3, Landroidx/work/impl/e;->a:Landroidx/work/impl/e;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/w;->a([Ly0/a;)V

    new-array v2, v5, [Ly0/a;

    sget-object v3, Landroidx/work/impl/f;->a:Landroidx/work/impl/f;

    aput-object v3, v2, v9

    invoke-virtual {v1, v2}, Landroidx/room/w;->a([Ly0/a;)V

    iput-boolean v9, v1, Landroidx/room/w;->l:Z

    iput-boolean v5, v1, Landroidx/room/w;->m:Z

    invoke-virtual {v1}, Landroidx/room/w;->b()Landroidx/room/RoomDatabase;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/work/impl/WorkDatabase;

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroidx/work/o;

    iget v3, v7, Landroidx/work/b;->f:I

    invoke-direct {v2, v3}, Landroidx/work/o;-><init>(I)V

    sget-object v3, Landroidx/work/o;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sput-object v2, Landroidx/work/o;->c:Landroidx/work/o;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lcom/google/firebase/messaging/r;

    invoke-direct {v2, v1, v8}, Lcom/google/firebase/messaging/r;-><init>(Landroid/content/Context;Lp1/v;)V

    iput-object v2, v0, Landroidx/work/impl/d0;->y:Lcom/google/firebase/messaging/r;

    new-array v3, v10, [Landroidx/work/impl/r;

    sget-object v4, Landroidx/work/impl/s;->a:Ljava/lang/String;

    new-instance v4, Lk1/c;

    invoke-direct {v4, v1, p0}, Lk1/c;-><init>(Landroid/content/Context;Landroidx/work/impl/d0;)V

    const-class v6, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v1, v6, v5}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v6

    sget-object v10, Landroidx/work/impl/s;->a:Ljava/lang/String;

    const-string v12, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v6, v10, v12}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v9

    new-instance v4, Li1/b;

    invoke-direct {v4, v1, p2, v2, p0}, Li1/b;-><init>(Landroid/content/Context;Landroidx/work/b;Lcom/google/firebase/messaging/r;Landroidx/work/impl/d0;)V

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v12, Landroidx/work/impl/p;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/p;-><init>(Landroid/content/Context;Landroidx/work/b;Lp1/v;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/impl/d0;->p:Landroid/content/Context;

    iput-object v7, v0, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    iput-object v8, v0, Landroidx/work/impl/d0;->s:Lr1/a;

    iput-object v11, v0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    iput-object v10, v0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    iput-object v12, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    new-instance v2, Lp5/c;

    const/16 v3, 0xf

    invoke-direct {v2, v11, v3}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Landroidx/work/impl/d0;->v:Lp5/c;

    iput-boolean v9, v0, Landroidx/work/impl/d0;->w:Z

    invoke-static {v1}, Landroidx/work/impl/c0;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/work/impl/d0;->s:Lr1/a;

    new-instance v3, Lq1/f;

    invoke-direct {v3, v1, p0}, Lq1/f;-><init>(Landroid/content/Context;Landroidx/work/impl/d0;)V

    invoke-interface {v2, v3}, Lr1/a;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A(Landroid/content/Context;)Landroidx/work/impl/d0;
    .locals 2

    sget-object v0, Landroidx/work/impl/d0;->B:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Landroidx/work/impl/d0;->z:Landroidx/work/impl/d0;

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/work/impl/d0;->A:Landroidx/work/impl/d0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method


# virtual methods
.method public final B()V
    .locals 2

    sget-object v0, Landroidx/work/impl/d0;->B:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/d0;->w:Z

    iget-object v1, p0, Landroidx/work/impl/d0;->x:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/work/impl/d0;->x:Landroid/content/BroadcastReceiver$PendingResult;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final C()V
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/d0;->p:Landroid/content/Context;

    sget-object v1, Lk1/c;->e:Ljava/lang/String;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lk1/c;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lk1/c;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v0

    iget-object v1, v0, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lp1/s;->l:Lp1/r;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v2}, La1/i;->v()I

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v0, v2}, Landroidx/room/f0;->release(La1/i;)V

    iget-object v0, p0, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    iget-object v1, p0, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    iget-object p0, p0, Landroidx/work/impl/d0;->t:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/work/impl/s;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-virtual {v0, v2}, Landroidx/room/f0;->release(La1/i;)V

    throw p0
.end method

.method public final D(Landroidx/work/impl/t;Lva/f;)V
    .locals 8

    iget-object v0, p0, Landroidx/work/impl/d0;->s:Lr1/a;

    new-instance v7, La0/a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {v0, v7}, Lr1/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Ljava/util/List;)Landroidx/work/u;
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/work/impl/u;

    const/4 v3, 0x0

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/u;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;I)V

    invoke-virtual {v0}, Landroidx/work/impl/u;->Q()Landroidx/work/u;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enqueue needs at least one WorkRequest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/w;)Landroidx/work/u;
    .locals 9

    const-string v2, "kmx-service|security-scanner"

    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->UPDATE:Landroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p1, v0, :cond_0

    const-string p1, "workRequest"

    invoke-static {p2, p1}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/work/impl/m;

    invoke-direct {p1}, Landroidx/work/impl/m;-><init>()V

    new-instance v4, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;

    invoke-direct {v4, p2, p0, v2, p1}, Landroidx/work/impl/WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1;-><init>(Landroidx/work/z;Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/impl/m;)V

    iget-object v0, p0, Landroidx/work/impl/d0;->s:Lr1/a;

    check-cast v0, Lp1/v;

    iget-object v0, v0, Lp1/v;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lq1/m;

    new-instance v8, Landroidx/work/impl/e0;

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/work/impl/e0;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8}, Lq1/m;->execute(Ljava/lang/Runnable;)V

    return-object p1

    :cond_0
    sget-object v0, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p1, v0, :cond_1

    sget-object p1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    :goto_0
    new-instance v0, Landroidx/work/impl/u;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p0, v2, p1, p2}, Landroidx/work/impl/u;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/u;->Q()Landroidx/work/u;

    move-result-object p0

    return-object p0
.end method
