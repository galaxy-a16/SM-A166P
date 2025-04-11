.class public final Lcom/google/android/gms/measurement/internal/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/j4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->O:Lcom/google/android/gms/measurement/internal/n2;

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->c:Lcom/google/android/gms/measurement/internal/d;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/n2;->a:Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/measurement/internal/j4;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/j4;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->N:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/e;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->M:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/e;->p(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->L:Lcom/google/android/gms/measurement/internal/n2;

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/e;->c:Lcom/google/android/gms/measurement/internal/d;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/n2;->a:Ljava/lang/String;

    invoke-interface {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/j4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->K:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_6
    move-exception v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/j4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
