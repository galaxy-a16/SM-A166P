.class public final Landroidx/core/view/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/view/l1;->a:I

    .line 1
    iput-object p1, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p6, p0, Landroidx/core/view/l1;->a:I

    iput-object p1, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/core/view/l1;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v3, :cond_0

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "(legacy) Failed to get conditional properties; not connected to service"

    iget-object v4, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/q2;->y(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/q2;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object p0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "(legacy) Failed to get conditional properties; remote exception"

    iget-object v5, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_5
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    iget-object p0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_1
    :try_start_6
    iget-object v0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/futures/i;

    iget-object v0, v0, Landroidx/work/impl/utils/futures/h;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroidx/work/impl/utils/futures/a;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    check-cast v2, Lq1/r;

    iget-object v2, v2, Lq1/r;->c:Lp1/s;

    invoke-virtual {v2, v0}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    invoke-virtual {v3}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    check-cast v3, Lq1/r;

    iget-object v3, v3, Lq1/r;->b:Lo1/a;

    iget-object v4, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/work/g;

    check-cast v3, Landroidx/work/impl/p;

    invoke-virtual {v3, v0, v4}, Landroidx/work/impl/p;->f(Ljava/lang/String;Landroidx/work/g;)V

    iget-object v0, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v2}, Lp1/f;->A(Lp1/q;)Lp1/j;

    move-result-object v2

    iget-object v3, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/work/g;

    invoke-static {v0, v2, v3}, Lo1/c;->a(Landroid/content/Context;Lp1/j;Landroidx/work/g;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    :cond_2
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_6
    iget-object v0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/i;->i(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    iget-object p0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/utils/futures/i;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/i;->j(Ljava/lang/Throwable;)Z

    :goto_7
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/h3;

    invoke-static {v0, v1}, Landroidx/core/view/n1;->f(Landroid/view/View;Lcom/google/android/gms/internal/measurement/h3;)V

    iget-object p0, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :goto_8
    iget-object v0, p0, Landroidx/core/view/l1;->d:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/core/view/l1;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/core/view/l1;->b:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/core/view/l1;->e:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/view/l1;->f:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    move-object v5, p0

    check-cast v5, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v6, :cond_4

    iget-object v0, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Failed to get conditional properties; not connected to service"

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_4
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v5}, Lva/n;->i(Ljava/lang/Object;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v6, v5, v7, v0}, Lcom/google/android/gms/measurement/internal/q2;->y(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u5;->u(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_8
    move-object v5, p0

    check-cast v5, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v5, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Failed to get conditional properties; remote exception"

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_9
    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v3, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/u5;->D(Lcom/google/android/gms/internal/measurement/i0;Ljava/util/ArrayList;)V

    return-void

    :goto_a
    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v3, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/measurement/internal/u5;->D(Lcom/google/android/gms/internal/measurement/i0;Ljava/util/ArrayList;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
