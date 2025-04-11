.class public final Lcom/google/android/gms/measurement/internal/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/b4;


# static fields
.field public static volatile N:Lcom/google/android/gms/measurement/internal/t3;


# instance fields
.field public A:Z

.field public B:Ljava/lang/Boolean;

.field public C:J

.field public volatile E:Ljava/lang/Boolean;

.field public final F:Ljava/lang/Boolean;

.field public final G:Ljava/lang/Boolean;

.field public volatile H:Z

.field public I:I

.field public final K:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final L:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Landroidx/work/impl/x;

.field public final g:Lcom/google/android/gms/measurement/internal/e;

.field public final h:Lcom/google/android/gms/measurement/internal/i3;

.field public final i:Lcom/google/android/gms/measurement/internal/x2;

.field public final j:Lcom/google/android/gms/measurement/internal/s3;

.field public final k:Lcom/google/android/gms/measurement/internal/k5;

.field public final l:Lcom/google/android/gms/measurement/internal/u5;

.field public final m:Lcom/google/android/gms/measurement/internal/t2;

.field public final n:Lc3/l;

.field public final p:Lcom/google/android/gms/measurement/internal/u4;

.field public final q:Lcom/google/android/gms/measurement/internal/n4;

.field public final t:Lcom/google/android/gms/measurement/internal/n1;

.field public final u:Lcom/google/android/gms/measurement/internal/q4;

.field public final v:Ljava/lang/String;

.field public w:Lcom/google/android/gms/measurement/internal/s2;

.field public x:Lcom/google/android/gms/measurement/internal/c5;

.field public y:Lcom/google/android/gms/measurement/internal/k;

.field public z:Lcom/google/android/gms/measurement/internal/r2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/t3;->A:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/e4;->a:Landroid/content/Context;

    new-instance v2, Landroidx/work/impl/x;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/work/impl/x;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->f:Landroidx/work/impl/x;

    sput-object v2, Lv9/a;->a:Landroidx/work/impl/x;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e4;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e4;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e4;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/e4;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/t3;->e:Z

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e4;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/e4;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/t3;->v:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/t3;->H:Z

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/e4;->g:Lcom/google/android/gms/internal/measurement/n0;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->F:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->G:Ljava/lang/Boolean;

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/measurement/o3;->g:Lcom/google/android/gms/internal/measurement/e3;

    if-nez v3, :cond_6

    sget-object v3, Lcom/google/android/gms/internal/measurement/o3;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/o3;->g:Lcom/google/android/gms/internal/measurement/e3;

    if-nez v4, :cond_5

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/o3;->g:Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/e3;->a:Landroid/content/Context;

    if-eq v4, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->c()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/p3;->a()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h3;->i()V

    new-instance v4, Landroidx/emoji2/text/p;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Landroidx/emoji2/text/p;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/d3;->e(Lcom/google/android/gms/internal/measurement/q3;)Lcom/google/android/gms/internal/measurement/q3;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/internal/measurement/e3;

    invoke-direct {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/e3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/q3;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/o3;->g:Lcom/google/android/gms/internal/measurement/e3;

    sget-object v4, Lcom/google/android/gms/internal/measurement/o3;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_5
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    :goto_2
    sget-object v3, Lc3/l;->d:Lc3/l;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/e4;->i:Ljava/lang/Long;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_3
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/t3;->L:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    new-instance v3, Lcom/google/android/gms/measurement/internal/i3;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/i3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/x2;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/x2;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    new-instance v4, Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/u5;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    new-instance v4, Lcom/google/android/gms/measurement/internal/d4;

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/measurement/internal/d4;-><init>(Lcom/google/android/gms/measurement/internal/t3;I)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/t2;

    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/t2;-><init>(Lcom/google/android/gms/measurement/internal/d4;)V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    new-instance v4, Lcom/google/android/gms/measurement/internal/n1;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/n1;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->t:Lcom/google/android/gms/measurement/internal/n1;

    new-instance v4, Lcom/google/android/gms/measurement/internal/u4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/u4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->p:Lcom/google/android/gms/measurement/internal/u4;

    new-instance v4, Lcom/google/android/gms/measurement/internal/n4;

    invoke-direct {v4, p0}, Lcom/google/android/gms/measurement/internal/n4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    new-instance v5, Lcom/google/android/gms/measurement/internal/k5;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/k5;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/g3;->m()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    new-instance v5, Lcom/google/android/gms/measurement/internal/q4;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/q4;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/t3;->u:Lcom/google/android/gms/measurement/internal/q4;

    new-instance v5, Lcom/google/android/gms/measurement/internal/s3;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/s3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->n()V

    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/e4;->g:Lcom/google/android/gms/internal/measurement/n0;

    if-eqz v6, :cond_8

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/n0;->b:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_a

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_b

    iget-object v1, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    if-nez v2, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/measurement/a1;

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/measurement/a1;-><init>(Lcom/google/android/gms/measurement/internal/n4;)V

    iput-object v2, v4, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    :cond_9
    if-eqz v0, :cond_b

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/n4;->c:Lcom/google/android/gms/internal/measurement/a1;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Registered activity lifecycle callback"

    goto :goto_5

    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Application context is not an Application"

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_b
    new-instance v0, Landroidx/appcompat/widget/k;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0, p1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final i(Lcom/google/android/gms/measurement/internal/a4;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Lcom/google/android/gms/measurement/internal/g3;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/g3;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final k(Lcom/google/android/gms/measurement/internal/a4;)V
    .locals 2

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/a4;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/t3;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n0;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/n0;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/n0;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/n0;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/measurement/n0;->b:J

    iget-boolean v6, p1, Lcom/google/android/gms/internal/measurement/n0;->c:Z

    iget-object v7, p1, Lcom/google/android/gms/internal/measurement/n0;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/measurement/n0;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/t3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/measurement/internal/e4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/e4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/n0;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/t3;-><init>(Lcom/google/android/gms/measurement/internal/e4;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/n0;->g:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    sget-object p0, Lcom/google/android/gms/measurement/internal/t3;->N:Lcom/google/android/gms/measurement/internal/t3;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/s3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    return-object p0
.end method

.method public final c()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/x2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    return-object p0
.end method

.method public final e()Lg3/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    return-object p0
.end method

.method public final f()Landroidx/work/impl/x;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->f:Landroidx/work/impl/x;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->l()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/t3;->A:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->B:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/t3;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/t3;->C:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/t3;->C:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u5;->S(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/u5;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {v1}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object v4

    invoke-virtual {v4}, Ld/s0;->t()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->w()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u5;->Y(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.google.android.gms.measurement.AppMeasurementJobService"

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :catch_0
    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->B:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/u5;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->B:Ljava/lang/Boolean;

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->B:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AppMeasurement is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->G:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/t3;->H:Z

    if-nez v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->r()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->f:Landroidx/work/impl/x;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x4

    return p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    const/4 p0, 0x5

    return p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x7

    return p0

    :cond_b
    return v1
.end method

.method public final m()Lcom/google/android/gms/measurement/internal/n1;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->t:Lcom/google/android/gms/measurement/internal/n1;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final n()Lcom/google/android/gms/measurement/internal/e;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    return-object p0
.end method

.method public final o()Lcom/google/android/gms/measurement/internal/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->y:Lcom/google/android/gms/measurement/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->y:Lcom/google/android/gms/measurement/internal/k;

    return-object p0
.end method

.method public final p()Lcom/google/android/gms/measurement/internal/r2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->z:Lcom/google/android/gms/measurement/internal/r2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->z:Lcom/google/android/gms/measurement/internal/r2;

    return-object p0
.end method

.method public final q()Lcom/google/android/gms/measurement/internal/s2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->w:Lcom/google/android/gms/measurement/internal/s2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->w:Lcom/google/android/gms/measurement/internal/s2;

    return-object p0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/t2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    return-object p0
.end method

.method public final t()Lcom/google/android/gms/measurement/internal/c5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->x:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->x:Lcom/google/android/gms/measurement/internal/c5;

    return-object p0
.end method
