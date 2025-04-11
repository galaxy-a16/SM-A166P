.class public final Lr3/l;
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
    iput p1, p0, Lr3/l;->a:I

    iput-object p2, p0, Lr3/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr3/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg4/i;Landroidx/appcompat/widget/i;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lr3/l;->a:I

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lr3/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p3, p0, Lr3/l;->a:I

    iput-object p1, p0, Lr3/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr3/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lr3/l;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/g;

    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/android/d;

    check-cast v0, Lkotlinx/coroutines/h;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h;->u(Lkotlinx/coroutines/t;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/g;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/t;

    check-cast v0, Lkotlinx/coroutines/h;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/h;->u(Lkotlinx/coroutines/t;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/internal/schedulers/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_3
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v0, Ljb/a;

    invoke-interface {v0}, Ljb/a;->onComplete()V

    return-void

    :catchall_0
    move-exception p0

    check-cast v0, Ljb/a;

    invoke-interface {v0}, Ljb/a;->onComplete()V

    throw p0

    :pswitch_4
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast v0, Lio/reactivex/internal/schedulers/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Lio/reactivex/internal/schedulers/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_5
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    :try_start_1
    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    check-cast v0, Leb/b;

    invoke-interface {v0}, Leb/b;->onComplete()V

    return-void

    :catchall_1
    move-exception p0

    check-cast v0, Leb/b;

    invoke-interface {v0}, Leb/b;->onComplete()V

    throw p0

    :pswitch_6
    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lab/a;

    invoke-interface {p0}, Lab/a;->run()V

    invoke-interface {p0}, Lab/a;->a()I

    return-void

    :pswitch_7
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v0, Lg4/i;

    iget-object v2, v0, Lg4/i;->j:Lh/n;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lh/n;->e:Lh/l;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lh/l;->i(Lh/n;)V

    :cond_0
    iget-object v2, v0, Lg4/i;->k:Lg4/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/i;

    invoke-virtual {p0}, Lh/z;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p0, v0, Lg4/i;->t:Landroidx/appcompat/widget/i;

    :cond_1
    iput-object v1, v0, Lg4/i;->p:Lr3/l;

    return-void

    :pswitch_8
    new-instance v0, Landroidx/core/view/a0;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v0, p0}, Landroidx/core/view/a0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lx3/b;

    if-eqz v7, :cond_2

    move-object v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v5, v3, :cond_7

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-nez v5, :cond_4

    move v8, v6

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    add-int/lit8 v9, v3, -0x1

    if-ne v5, v9, :cond_5

    move v9, v6

    goto :goto_4

    :cond_5
    move v9, v4

    :goto_4
    invoke-static {v8, v6, v9, v6}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroidx/core/view/a0;->a(Landroid/view/View;Landroidx/core/view/z;)V

    move v6, v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v4, v6

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_9
    return-void

    :pswitch_9
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    :try_start_2
    move-object v1, v0

    check-cast v1, Lr3/o;

    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lr3/o;->j(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p0

    check-cast v0, Lr3/o;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lr3/o;->i(Ljava/lang/Exception;)V

    goto :goto_5

    :catch_0
    move-exception p0

    check-cast v0, Lr3/o;

    invoke-virtual {v0, p0}, Lr3/o;->i(Ljava/lang/Exception;)V

    :goto_5
    return-void

    :pswitch_a
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    :try_start_3
    move-object v1, v0

    check-cast v1, Lr3/m;

    iget-object v1, v1, Lr3/m;->c:Ljava/lang/Object;

    check-cast v1, Lr3/g;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/h;

    invoke-virtual {p0}, Lr3/h;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lr3/g;->c(Ljava/lang/Object;)Lr3/o;

    move-result-object p0
    :try_end_3
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez p0, :cond_a

    check-cast v0, Lr3/m;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    sget-object v1, Lr3/j;->b:Ld/r0;

    check-cast v0, Lr3/m;

    invoke-virtual {p0, v1, v0}, Lr3/o;->c(Ljava/util/concurrent/Executor;Lr3/f;)Lr3/o;

    invoke-virtual {p0, v1, v0}, Lr3/o;->b(Ljava/util/concurrent/Executor;Lr3/e;)Lr3/o;

    new-instance v2, Lr3/m;

    invoke-direct {v2, v1, v0}, Lr3/m;-><init>(Ld/r0;Lr3/c;)V

    iget-object v0, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {v0, v2}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    goto :goto_7

    :catch_1
    move-exception p0

    check-cast v0, Lr3/m;

    goto :goto_6

    :catch_2
    check-cast v0, Lr3/m;

    invoke-virtual {v0}, Lr3/m;->a()V

    goto :goto_7

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    check-cast v0, Lr3/m;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    :cond_b
    :goto_6
    invoke-virtual {v0, p0}, Lr3/m;->c(Ljava/lang/Exception;)V

    :goto_7
    return-void

    :pswitch_b
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v0, Lr3/m;

    iget-object v0, v0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v1, Lr3/m;

    iget-object v1, v1, Lr3/m;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lr3/f;

    if-eqz v2, :cond_c

    check-cast v1, Lr3/f;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/h;

    invoke-virtual {p0}, Lr3/h;->e()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lr3/f;->onSuccess(Ljava/lang/Object;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_c
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v0, Lr3/m;

    iget-object v0, v0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v1, Lr3/m;

    iget-object v1, v1, Lr3/m;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lr3/e;

    if-eqz v2, :cond_d

    check-cast v1, Lr3/e;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/h;

    invoke-virtual {p0}, Lr3/h;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lr3/e;->c(Ljava/lang/Exception;)V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0

    :pswitch_d
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v0, Lr3/m;

    iget-object v0, v0, Lr3/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast v1, Lr3/m;

    iget-object v1, v1, Lr3/m;->d:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lr3/d;

    if-eqz v2, :cond_e

    check-cast v1, Lr3/d;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/h;

    invoke-interface {v1, p0}, Lr3/d;->e(Lr3/h;)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_5
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw p0

    :pswitch_e
    iget-object v0, p0, Lr3/l;->c:Ljava/lang/Object;

    :try_start_7
    move-object v1, v0

    check-cast v1, Lr3/k;

    iget-object v1, v1, Lr3/k;->c:Lr3/b;

    iget-object p0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/h;

    invoke-interface {v1, p0}, Lr3/b;->c(Lr3/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr3/h;
    :try_end_7
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez p0, :cond_f

    check-cast v0, Lr3/k;

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lr3/k;->c(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_f
    sget-object v1, Lr3/j;->b:Ld/r0;

    check-cast v0, Lr3/k;

    invoke-virtual {p0, v1, v0}, Lr3/h;->c(Ljava/util/concurrent/Executor;Lr3/f;)Lr3/o;

    invoke-virtual {p0, v1, v0}, Lr3/h;->b(Ljava/util/concurrent/Executor;Lr3/e;)Lr3/o;

    check-cast p0, Lr3/o;

    new-instance v2, Lr3/m;

    invoke-direct {v2, v1, v0}, Lr3/m;-><init>(Ld/r0;Lr3/c;)V

    iget-object v0, p0, Lr3/o;->b:Lz9/a;

    invoke-virtual {v0, v2}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {p0}, Lr3/o;->l()V

    goto :goto_a

    :catch_4
    move-exception p0

    check-cast v0, Lr3/k;

    goto :goto_8

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    check-cast v0, Lr3/k;

    if-eqz v1, :cond_10

    iget-object v0, v0, Lr3/k;->d:Lr3/o;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    goto :goto_9

    :cond_10
    :goto_8
    iget-object v0, v0, Lr3/k;->d:Lr3/o;

    :goto_9
    invoke-virtual {v0, p0}, Lr3/o;->i(Ljava/lang/Exception;)V

    :goto_a
    return-void

    :goto_b
    iget-object v0, p0, Lr3/l;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/selects/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/c;->x()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p0, p0, Lr3/l;->c:Ljava/lang/Object;

    check-cast p0, Lvb/b;

    invoke-static {p0, v0}, Lh3/a;->V(Lvb/b;Lkotlin/coroutines/d;)V

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
