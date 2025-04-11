.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/c;


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public a:Landroidx/work/impl/d0;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/android/gms/internal/measurement/h3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/h3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/h3;-><init>(I)V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lcom/google/android/gms/internal/measurement/h3;

    return-void
.end method

.method public static a(Landroid/app/job/JobParameters;)Lp1/j;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lp1/j;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v0, p0}, Lp1/j;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final c(Lp1/j;Z)V
    .locals 4

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lp1/j;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " executed on JobScheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/h3;->b(Lp1/j;)Landroidx/work/impl/t;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/d0;->A(Landroid/content/Context;)Landroidx/work/impl/d0;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    iget-object v0, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    invoke-virtual {v0, p0}, Landroidx/work/impl/p;->a(Landroidx/work/impl/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Landroid/app/Application;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v1, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {p0, v0, v1}, Landroidx/work/o;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object v1, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Landroidx/work/impl/p;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    const-string v0, "Job is already being executed by SystemJobService: "

    const-string v1, "onStartJob for "

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v2, "WorkManager is not initialized; requesting retry."

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v4

    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Lp1/j;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v0, "WorkSpec id not found!"

    invoke-virtual {p0, p1, v0}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    iget-object v5, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    return v4

    :cond_2
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lva/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lva/f;-><init>(I)V

    invoke-static {p1}, Lk1/d;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lk1/d;->b(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lva/f;->b:Ljava/lang/Object;

    :cond_3
    invoke-static {p1}, Lk1/d;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lk1/d;->a(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lva/f;->a:Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lk1/e;->a(Landroid/app/job/JobParameters;)Landroid/net/Network;

    move-result-object p1

    iput-object p1, v0, Lva/f;->c:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/h3;->d(Lp1/j;)Landroidx/work/impl/t;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/work/impl/d0;->D(Landroidx/work/impl/t;Lva/f;)V

    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v0, "WorkManager is not initialized; requesting retry."

    invoke-virtual {p0, p1, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->a(Landroid/app/job/JobParameters;)Lp1/j;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    const-string v1, "WorkSpec id not found!"

    invoke-virtual {p0, p1, v1}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStopJob for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->b:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->c:Lcom/google/android/gms/internal/measurement/h3;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/h3;->b(Lp1/j;)Landroidx/work/impl/t;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    iget-object v4, v3, Landroidx/work/impl/d0;->s:Lr1/a;

    new-instance v5, Lq1/n;

    invoke-direct {v5, v3, v2, v0}, Lq1/n;-><init>(Landroidx/work/impl/d0;Landroidx/work/impl/t;Z)V

    invoke-interface {v4, v5}, Lr1/a;->b(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->a:Landroidx/work/impl/d0;

    iget-object p0, p0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object p1, p1, Lp1/j;->a:Ljava/lang/String;

    iget-object v0, p0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Landroidx/work/impl/p;->j:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    xor-int/2addr p0, v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
