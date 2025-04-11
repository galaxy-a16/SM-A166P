.class public final Lcom/google/android/gms/measurement/internal/v4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/w5;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/c5;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;ZLcom/google/android/gms/internal/measurement/i0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/v4;->a:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/v4;->d:Lcom/google/android/gms/measurement/internal/w5;

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/v4;->e:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/w5;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/v4;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/v4;->d:Lcom/google/android/gms/measurement/internal/w5;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/v4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/measurement/internal/v4;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v4;->d:Lcom/google/android/gms/measurement/internal/w5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    if-nez v5, :cond_0

    :try_start_1
    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Failed to get user properties; not connected to service"

    invoke-virtual {p0, v0, v1, v6}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/google/android/gms/measurement/internal/v4;->e:Z

    invoke-interface {v5, v1, v6, p0, v0}, Lcom/google/android/gms/measurement/internal/q2;->m(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/r5;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/r5;->e:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/r5;->b:Ljava/lang/String;

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v0, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/r5;->d:Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/r5;->g:Ljava/lang/Double;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v2, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/u5;->E(Lcom/google/android/gms/internal/measurement/i0;Landroid/os/Bundle;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v4, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    :goto_2
    :try_start_4
    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Failed to get user properties; remote exception"

    invoke-virtual {v0, v5, v1, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    iget-object p0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v2, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/measurement/internal/u5;->E(Lcom/google/android/gms/internal/measurement/i0;Landroid/os/Bundle;)V

    :goto_4
    return-void

    :goto_5
    move-object v0, v4

    :goto_6
    iget-object v1, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v2, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/u5;->E(Lcom/google/android/gms/internal/measurement/i0;Landroid/os/Bundle;)V

    throw p0

    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v3, :cond_6

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_c

    :cond_6
    :try_start_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->d:Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v2}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/v4;->e:Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/v4;->d:Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/q2;->m(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/w5;)Ljava/util/List;

    move-result-object v3

    goto :goto_9

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/v4;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/v4;->e:Z

    invoke-interface {v3, v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/q2;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    :goto_9
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_a
    :try_start_8
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_b

    :catchall_2
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v2

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/v4;->f:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "(legacy) Failed to get user properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/v4;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :goto_b
    :try_start_a
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_8

    :goto_c
    monitor-exit v0

    return-void

    :goto_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/v4;->g:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
