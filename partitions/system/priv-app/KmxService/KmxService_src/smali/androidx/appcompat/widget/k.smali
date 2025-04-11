.class public final Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/k;->a:I

    iput-object p2, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/q5;Ljava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x1a

    iput v0, p0, Landroidx/appcompat/widget/k;->a:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p3, p0, Landroidx/appcompat/widget/k;->a:I

    iput-object p1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lz2/i;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "Null service connection"

    invoke-virtual {v0, v1, p0}, Lz2/i;->a(ILjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/h3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/h3;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lz2/i;->c:Lcom/google/android/gms/internal/measurement/h3;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x2

    :try_start_2
    iput p0, v0, Lz2/i;->a:I

    iget-object p0, v0, Lz2/i;->f:Lz2/l;

    iget-object p0, p0, Lz2/l;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lz2/g;

    invoke-direct {v2, v0, v1}, Lz2/g;-><init>(Lz2/i;I)V

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lz2/i;->a(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final b()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lz2/i;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lz2/k;

    iget p0, p0, Lz2/k;->a:I

    const-string v1, "Timing out request: "

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lz2/i;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/k;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MessengerIpcClient"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lz2/i;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    const-string p0, "Timed out waiting for response"

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzs;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v4}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lz2/k;->a(Lcom/google/android/gms/cloudmessaging/zzs;)V

    invoke-virtual {v0}, Lz2/i;->c()V
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

.method private final c()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/e4;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/measurement/internal/k;

    invoke-direct {v3, v1}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->y:Lcom/google/android/gms/measurement/internal/k;

    new-instance v3, Lcom/google/android/gms/measurement/internal/r2;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/e4;->f:J

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/r2;-><init>(Lcom/google/android/gms/measurement/internal/t3;J)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->z:Lcom/google/android/gms/measurement/internal/r2;

    new-instance v4, Lcom/google/android/gms/measurement/internal/s2;

    invoke-direct {v4, v1}, Lcom/google/android/gms/measurement/internal/s2;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->w:Lcom/google/android/gms/measurement/internal/s2;

    new-instance v4, Lcom/google/android/gms/measurement/internal/c5;

    invoke-direct {v4, v1}, Lcom/google/android/gms/measurement/internal/c5;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->x:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    iget-boolean v5, v4, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    const-string v6, "Can\'t initialize twice"

    if-nez v5, :cond_1f

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/u5;->O()V

    iget-object v5, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/t3;->a()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    iget-boolean v8, v7, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    if-nez v8, :cond_1e

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i3;->p()V

    iget-object v8, v7, Lb0/h;->a:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/t3;->a()V

    iput-boolean v5, v7, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/t3;->z:Lcom/google/android/gms/measurement/internal/r2;

    iget-boolean v8, v7, Lcom/google/android/gms/measurement/internal/g3;->b:Z

    if-nez v8, :cond_1d

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/r2;->o()V

    iget-object v6, v7, Lb0/h;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/t3;->a()V

    iput-boolean v5, v7, Lcom/google/android/gms/measurement/internal/g3;->b:Z

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->o()V

    const-wide/32 v7, 0x11d28

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "App measurement initialized, version"

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/u5;->T(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Debug-level message logging enabled"

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget v2, v1, Lcom/google/android/gms/measurement/internal/t3;->I:I

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v2, v4, :cond_2

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget v2, v1, Lcom/google/android/gms/measurement/internal/t3;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Not all components initialized"

    invoke-virtual {v4, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iput-boolean v5, v1, Lcom/google/android/gms/measurement/internal/t3;->A:Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e4;->g:Lcom/google/android/gms/internal/measurement/n0;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "consent_source"

    const/16 v7, 0x64

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v8, v6, Lb0/h;->a:Ljava/lang/Object;

    const-string v8, "google_analytics_default_allow_ad_storage"

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, -0xa

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/t3;->L:J

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    const/4 v14, 0x0

    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    :cond_3
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/i3;->v(I)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v0, Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/f;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move v7, v10

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x1e

    if-nez v8, :cond_6

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_5

    const/16 v8, 0xa

    if-eq v4, v8, :cond_5

    if-eq v4, v9, :cond_5

    if-eq v4, v9, :cond_5

    const/16 v8, 0x28

    if-ne v4, v8, :cond_6

    :cond_5
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v13, v0, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/n4;->x(Lcom/google/android/gms/measurement/internal/f;IJ)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/i3;->v(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->a(Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/f;->b:Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move v7, v9

    goto :goto_2

    :cond_7
    :goto_1
    move-object v0, v14

    :goto_2
    if-eqz v0, :cond_8

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v13, v0, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/n4;->x(Lcom/google/android/gms/measurement/internal/f;IJ)V

    move-object v3, v0

    :cond_8
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v13, v3}, Lcom/google/android/gms/measurement/internal/n4;->y(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/i3;->e:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-nez v3, :cond_9

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Persisting first open"

    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_9
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/n4;->n:Lcom/google/android/gms/measurement/internal/d4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d4;->c()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d4;->d()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/d4;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/i3;->w:Lv1/j;

    invoke-virtual {v3, v14}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->h()Z

    move-result v3

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    if-nez v3, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/u5;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "App is missing INTERNET permission"

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_b
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/u5;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v0}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object v1

    invoke-virtual {v1}, Ld/s0;->t()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->w()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u5;->Y(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_d
    const-string v1, "com.google.android.gms.measurement.AppMeasurementJobService"

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_f

    move v7, v5

    :catch_0
    :cond_f
    :goto_3
    if-nez v7, :cond_10

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "AppMeasurementService not registered/enabled"

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_10
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Uploading is not possible. App measurement disabled"

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    if-eqz v3, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_4

    :cond_12
    move-object/from16 v16, v6

    goto/16 :goto_5

    :cond_13
    :goto_4
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v15, "gmp_app_id"

    invoke-interface {v10, v15, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v7

    move-object/from16 v16, v6

    const-string v6, "admob_app_id"

    invoke-interface {v7, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v10, v5, v7}, Lcom/google/android/gms/measurement/internal/u5;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v3, "Rechecking which service to use due to a GMP App Id change"

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->r()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_14

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->s(Ljava/lang/Boolean;)V

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s2;->p()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->x:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c5;->A()V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/t3;->x:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c5;->z()V

    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    invoke-virtual {v9, v14}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-virtual {v2}, Lb0/h;->k()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v9, v14}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_16
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v9}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/r6;->b:Lcom/google/android/gms/internal/measurement/r6;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/r6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->c0:Lcom/google/android/gms/measurement/internal/n2;

    move-object/from16 v3, v16

    invoke-virtual {v3, v14, v0}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    :try_start_1
    iget-object v0, v8, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/i3;->v:Lv1/j;

    invoke-virtual {v0}, Lv1/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Remote config removed with active feature rollouts"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_17
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/i3;->c:Landroid/content/SharedPreferences;

    if-nez v4, :cond_19

    const/4 v4, 0x0

    goto :goto_7

    :cond_19
    const-string v5, "deferred_analytics_collection"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    :goto_7
    if-nez v4, :cond_1a

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->u()Z

    move-result v3

    if-nez v3, :cond_1a

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i3;->t(Z)V

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/n4;->G()V

    :cond_1b
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/k5;->d:Lf9/b;

    invoke-virtual {v0}, Lf9/b;->l()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c5;->B(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {v1}, Lva/e;->l()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v3

    new-instance v4, La0/a;

    const/16 v5, 0x10

    invoke-direct {v4, v0, v3, v1, v5}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    :cond_1c
    :goto_8
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/i3;->m:Lcom/google/android/gms/measurement/internal/e3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/e3;->a(Z)V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lr3/h;

    check-cast v0, Lr3/o;

    iget-boolean v0, v0, Lr3/o;->d:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lr3/k;

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0}, Lr3/o;->k()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lr3/k;

    iget-object v0, v0, Lr3/k;->c:Lr3/b;

    iget-object v1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v1, Lr3/h;

    invoke-interface {v0, v1}, Lr3/b;->c(Lr3/h;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lr3/k;

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0, v0}, Lr3/o;->j(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lr3/k;

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lr3/k;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p0, p0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/appcompat/widget/k;->a:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Landroidx/appcompat/widget/k;->d()V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lp1/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    if-eq p0, v1, :cond_1

    if-nez v1, :cond_0

    move v4, v6

    :cond_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v1, v4}, Lva/n;->k(Ljava/lang/String;Z)V

    :cond_1
    iput-object p0, v0, Lcom/google/android/gms/measurement/internal/n4;->d:Lp1/e;

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/k3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/k3;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->k:Lcom/google/android/gms/measurement/internal/k3;

    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->K()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->c:Lcom/google/android/gms/measurement/internal/d;

    new-instance v0, Lcom/google/android/gms/measurement/internal/e5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/e5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    new-instance v0, Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->f:Lcom/google/android/gms/measurement/internal/b;

    new-instance v0, Lcom/google/android/gms/measurement/internal/b3;

    invoke-direct {v0, p0, v6}, Lcom/google/android/gms/measurement/internal/b3;-><init>(Lcom/google/android/gms/measurement/internal/q5;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->h:Lcom/google/android/gms/measurement/internal/b3;

    new-instance v0, Lcom/google/android/gms/measurement/internal/l5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/l5;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->m()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->e:Lcom/google/android/gms/measurement/internal/l5;

    new-instance v0, Lcom/google/android/gms/measurement/internal/d3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/d3;-><init>(Lcom/google/android/gms/measurement/internal/q5;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->d:Lcom/google/android/gms/measurement/internal/d3;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/q5;->t:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/q5;->u:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/q5;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v4, p0, Lcom/google/android/gms/measurement/internal/q5;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Not all upload components initialized"

    invoke-virtual {v0, v5, v1, v4}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/q5;->m:Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->T()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->i:Lcom/google/android/gms/measurement/internal/e5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/e5;->g:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->e()Lg3/a;

    move-result-object v1

    check-cast v1, Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f3;->b(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/q5;->D()V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q5;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/q5;->q:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/q5;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->u()V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/b5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/google/android/gms/measurement/internal/c5;->y(Lcom/google/android/gms/measurement/internal/c5;Landroid/content/ComponentName;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v4, v1, Lb0/h;->a:Ljava/lang/Object;

    if-nez v6, :cond_5

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Failed to send current screen to service"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/r4;

    if-nez p0, :cond_6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    move-object v9, p0

    move-wide v10, v2

    move-object v7, v5

    move-object v8, v7

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/r4;->c:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v8, p0

    move-wide v10, v2

    move-object v9, v4

    move-object v7, v5

    :goto_0
    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/q2;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    iget-object v0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Failed to send current screen to the service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_6
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v6}, Lcom/google/android/gms/measurement/internal/n4;->B(Ljava/lang/Boolean;Z)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/n4;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/r2;->q:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v4, v6

    :cond_7
    iput-object p0, v1, Lcom/google/android/gms/measurement/internal/r2;->q:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object p0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    :cond_8
    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/c;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q5;->z(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->n(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_2

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/q5;->z(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/q5;->r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_a
    :goto_2
    return-void

    :pswitch_9
    invoke-direct {p0}, Landroidx/appcompat/widget/k;->c()V

    return-void

    :pswitch_a
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/b4;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/b4;->f()Landroidx/work/impl/x;

    invoke-static {}, Landroidx/work/impl/x;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/b4;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/b4;->b()Lcom/google/android/gms/measurement/internal/s3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/j;

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/j;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    move v4, v6

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/j;

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/j;->c:J

    if-eqz v4, :cond_d

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->b()V

    :cond_d
    :goto_3
    return-void

    :pswitch_b
    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Lb3/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_c
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lb3/z;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lp3/i;

    sget-object v2, Lb3/z;->j:Le3/b;

    iget-object v2, p0, Lp3/i;->b:La3/b;

    iget v3, v2, La3/b;->b:I

    if-nez v3, :cond_e

    move v3, v6

    goto :goto_4

    :cond_e
    move v3, v4

    :goto_4
    if-eqz v3, :cond_15

    iget-object p0, p0, Lp3/i;->c:Lc3/u;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lc3/u;->c:La3/b;

    iget v3, v2, La3/b;->b:I

    if-nez v3, :cond_f

    move v4, v6

    :cond_f
    if-nez v4, :cond_10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "SignInCoordinator"

    invoke-static {v3, p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_10
    iget-object v2, v0, Lb3/z;->i:Lb3/r;

    iget-object p0, p0, Lc3/u;->b:Landroid/os/IBinder;

    if-nez p0, :cond_11

    goto :goto_6

    :cond_11
    sget v3, Lc3/a;->c:I

    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lc3/j;

    if-eqz v4, :cond_12

    check-cast v3, Lc3/j;

    goto :goto_5

    :cond_12
    new-instance v3, Lc3/l0;

    invoke-direct {v3, p0}, Lc3/l0;-><init>(Landroid/os/IBinder;)V

    :goto_5
    move-object v5, v3

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_14

    iget-object p0, v0, Lb3/z;->f:Ljava/util/Set;

    if-nez p0, :cond_13

    goto :goto_7

    :cond_13
    iput-object v5, v2, Lb3/r;->d:Ljava/lang/Object;

    iput-object p0, v2, Lb3/r;->e:Ljava/util/Collection;

    iget-boolean v1, v2, Lb3/r;->a:Z

    if-eqz v1, :cond_16

    check-cast v5, Lc3/j;

    iget-object v1, v2, Lb3/r;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/b;

    check-cast p0, Ljava/util/Set;

    invoke-interface {v1, v5, p0}, Lcom/google/android/gms/common/api/b;->e(Lc3/j;Ljava/util/Set;)V

    goto :goto_9

    :cond_14
    :goto_7
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, La3/b;

    invoke-direct {p0, v1}, La3/b;-><init>(I)V

    invoke-virtual {v2, p0}, Lb3/r;->c(La3/b;)V

    goto :goto_9

    :cond_15
    :goto_8
    iget-object p0, v0, Lb3/z;->i:Lb3/r;

    invoke-virtual {p0, v2}, Lb3/r;->c(La3/b;)V

    :cond_16
    :goto_9
    iget-object p0, v0, Lb3/z;->h:Lo3/c;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/b;->disconnect()V

    return-void

    :pswitch_d
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lb3/r;

    iget-object v2, v1, Lb3/r;->f:Ljava/lang/Object;

    check-cast v2, Lb3/e;

    iget-object v2, v2, Lb3/e;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lb3/r;->c:Ljava/lang/Object;

    check-cast v3, Lb3/a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/p;

    if-nez v2, :cond_17

    goto :goto_a

    :cond_17
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, La3/b;

    iget v3, p0, La3/b;->b:I

    if-nez v3, :cond_18

    move v4, v6

    :cond_18
    if-eqz v4, :cond_1a

    iput-boolean v6, v1, Lb3/r;->a:Z

    iget-object p0, v1, Lb3/r;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/b;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/b;->f()Z

    move-result p0

    if-eqz p0, :cond_19

    iget-boolean p0, v1, Lb3/r;->a:Z

    if-eqz p0, :cond_1b

    iget-object p0, v1, Lb3/r;->d:Ljava/lang/Object;

    check-cast p0, Lc3/j;

    if-eqz p0, :cond_1b

    iget-object v0, v1, Lb3/r;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/b;

    iget-object v1, v1, Lb3/r;->e:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/common/api/b;->e(Lc3/j;Ljava/util/Set;)V

    goto :goto_a

    :cond_19
    :try_start_1
    check-cast v0, Lb3/r;

    iget-object p0, v0, Lb3/r;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    check-cast p0, Lcom/google/android/gms/common/api/b;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/b;->a()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, v5, p0}, Lcom/google/android/gms/common/api/b;->e(Lc3/j;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception p0

    const-string v0, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v1, Lb3/r;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/b;

    const-string v0, "Failed to get service from broker."

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/b;->c(Ljava/lang/String;)V

    new-instance p0, La3/b;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, La3/b;-><init>(I)V

    :cond_1a
    invoke-virtual {v2, p0, v5}, Lb3/p;->o(La3/b;Ljava/lang/RuntimeException;)V

    :cond_1b
    :goto_a
    return-void

    :pswitch_e
    invoke-direct {p0}, Landroidx/appcompat/widget/k;->b()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroidx/appcompat/widget/k;->a()V

    return-void

    :pswitch_10
    :try_start_2
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lv1/b;

    iget-object v0, v0, Lv1/b;->b:Ljava/util/concurrent/BlockingQueue;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lv1/h;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_b
    return-void

    :pswitch_11
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/andrognito/patternlockview/PatternLockView;

    iget v0, v1, Lcom/andrognito/patternlockview/PatternLockView;->l:I

    int-to-float v2, v0

    iget v0, v1, Lcom/andrognito/patternlockview/PatternLockView;->k:I

    int-to-float v3, v0

    iget v0, v1, Lcom/andrognito/patternlockview/PatternLockView;->m:I

    int-to-long v4, v0

    iget-object v6, v1, Lcom/andrognito/patternlockview/PatternLockView;->K:Landroid/view/animation/Interpolator;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lt1/d;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/andrognito/patternlockview/PatternLockView;->k(FFJLandroid/view/animation/Interpolator;Lt1/d;Landroidx/appcompat/widget/k;)V

    return-void

    :pswitch_12
    :try_start_3
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Lq1/m;

    iget-object v0, v0, Lq1/m;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lq1/m;

    invoke-virtual {p0}, Lq1/m;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v1, Lq1/m;

    iget-object v1, v1, Lq1/m;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Lq1/m;

    invoke-virtual {p0}, Lq1/m;->a()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :pswitch_13
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lo1/c;

    iget-object v0, v0, Lo1/c;->a:Landroidx/work/impl/d0;

    iget-object v0, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object v1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroidx/work/impl/p;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v0, Landroidx/work/impl/p;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/i0;

    if-nez v3, :cond_1c

    iget-object v0, v0, Landroidx/work/impl/p;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/work/impl/i0;

    :cond_1c
    if-eqz v3, :cond_1d

    iget-object v5, v3, Landroidx/work/impl/i0;->e:Lp1/q;

    :cond_1d
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lp1/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Lo1/c;

    iget-object v0, v0, Lo1/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v1, Lo1/c;

    iget-object v1, v1, Lo1/c;->f:Ljava/util/HashMap;

    invoke-static {v5}, Lp1/f;->A(Lp1/q;)Lp1/j;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v1, Lo1/c;

    iget-object v1, v1, Lo1/c;->g:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lo1/c;

    iget-object v1, v1, Lo1/c;->h:Ll1/c;

    check-cast p0, Lo1/c;

    iget-object p0, p0, Lo1/c;->g:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ll1/c;->b(Ljava/util/Collection;)V

    monitor-exit v0

    goto :goto_c

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :cond_1e
    :goto_c
    return-void

    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :pswitch_14
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v0

    sget-object v1, Li1/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scheduling work "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v3, Lp1/q;

    iget-object v5, v3, Lp1/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Li1/a;

    iget-object p0, p0, Li1/a;->a:Li1/b;

    new-array v0, v6, [Lp1/q;

    aput-object v3, v0, v4

    invoke-virtual {p0, v0}, Li1/b;->d([Lp1/q;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    :try_start_a
    move-object v2, p0

    check-cast v2, Landroidx/work/impl/i0;

    iget-object v2, v2, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v2}, Landroidx/work/impl/utils/futures/h;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/m;

    if-nez v2, :cond_1f

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, p0

    check-cast v5, Landroidx/work/impl/i0;

    iget-object v5, v5, Landroidx/work/impl/i0;->e:Lp1/q;

    iget-object v5, v5, Lp1/q;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " returned a null result. Treating it as a failure."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_1f
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p0

    check-cast v6, Landroidx/work/impl/i0;

    iget-object v6, v6, Landroidx/work/impl/i0;->e:Lp1/q;

    iget-object v6, v6, Lp1/q;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " returned a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Landroidx/work/impl/i0;

    iput-object v2, v3, Landroidx/work/impl/i0;->h:Landroidx/work/m;
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v1

    :try_start_b
    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed because it threw an exception/error"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_4
    move-exception v2

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was cancelled"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v3, Landroidx/work/o;->a:I

    if-gt v3, v1, :cond_20

    invoke-static {v4, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_20
    :goto_d
    check-cast p0, Landroidx/work/impl/i0;

    invoke-virtual {p0}, Landroidx/work/impl/i0;->b()V

    return-void

    :goto_e
    check-cast p0, Landroidx/work/impl/i0;

    invoke-virtual {p0}, Landroidx/work/impl/i0;->b()V

    throw v0

    :pswitch_16
    const-string v0, "Starting work for "

    iget-object v1, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/i0;

    iget-object v1, v1, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    iget-object v1, v1, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/work/impl/utils/futures/a;

    if-eqz v1, :cond_21

    goto :goto_f

    :cond_21
    :try_start_c
    iget-object v1, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v1, Ls4/a;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/i0;->v:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/i0;

    iget-object v0, v0, Landroidx/work/impl/i0;->e:Lp1/q;

    iget-object v0, v0, Lp1/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/i0;

    iget-object v1, v1, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    check-cast v0, Landroidx/work/impl/i0;

    iget-object v0, v0, Landroidx/work/impl/i0;->f:Landroidx/work/n;

    invoke-virtual {v0}, Landroidx/work/n;->startWork()Ls4/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/i;->k(Ls4/a;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/i0;

    iget-object p0, p0, Landroidx/work/impl/i0;->t:Landroidx/work/impl/utils/futures/i;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z

    :goto_f
    return-void

    :pswitch_17
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    :try_start_d
    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/work/Worker;

    invoke-virtual {p0}, Landroidx/work/Worker;->getForegroundInfo()Landroidx/work/g;

    move-result-object p0

    move-object v1, v0

    check-cast v1, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v1, p0}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception p0

    check-cast v0, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z

    :goto_10
    return-void

    :pswitch_18
    iget-object v0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/t;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/t;->b(Landroidx/lifecycle/y;)V

    return-void

    :pswitch_19
    :try_start_e
    sget-object v0, Lt/i;->b:Ljava/lang/reflect/Method;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    iget-object v1, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    if-eqz v0, :cond_22

    const/4 v3, 0x3

    :try_start_f
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v3, v6

    const-string v1, "AppCompat recreation"

    aput-object v1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_22
    sget-object v0, Lt/i;->c:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v2, v6

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception p0

    const-string v0, "ActivityRecreator"

    const-string v1, "Exception while invoking performStopActivity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/RuntimeException;

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_11

    :cond_23
    throw p0

    :cond_24
    :goto_11
    return-void

    :pswitch_1a
    iget-object v0, p0, Landroidx/appcompat/widget/k;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/p;

    iget-object v1, v0, Lh/d;->c:Lh/n;

    if-eqz v1, :cond_25

    iget-object v2, v1, Lh/n;->e:Lh/l;

    if-eqz v2, :cond_25

    invoke-interface {v2, v1}, Lh/l;->i(Lh/n;)V

    :cond_25
    iget-object v1, v0, Lh/d;->h:Lh/d0;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object p0, p0, Landroidx/appcompat/widget/k;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/i;

    invoke-virtual {p0}, Lh/z;->f()Z

    move-result v1

    if-eqz v1, :cond_26

    iput-object p0, v0, Landroidx/appcompat/widget/p;->w:Landroidx/appcompat/widget/i;

    :cond_26
    iput-object v5, v0, Landroidx/appcompat/widget/p;->y:Landroidx/appcompat/widget/k;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
