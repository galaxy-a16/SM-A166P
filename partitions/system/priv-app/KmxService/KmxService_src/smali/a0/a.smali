.class public final La0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, La0/a;->a:I

    iput-object p1, p0, La0/a;->d:Ljava/lang/Object;

    iput-object p2, p0, La0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, La0/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p4, p0, La0/a;->a:I

    iput-object p1, p0, La0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, La0/a;->c:Ljava/lang/Object;

    iput-object p3, p0, La0/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    const-string v3, "Failed to send default event parameters to service"

    if-nez v2, :cond_0

    iget-object p0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v4}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/q2;->h(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object v0, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final b()V
    .locals 3

    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lg/a;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/x2;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v0, v0, Lg/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/f5;

    invoke-interface {v0, p0}, Lcom/google/android/gms/measurement/internal/f5;->c(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lu3/i;

    iget-object v2, v1, Lu3/i;->d:Landroid/widget/OverScroller;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v3, v1, Lu3/i;->d:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lu3/i;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    invoke-static {v0, p0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p0, v1, Lu3/i;->d:Landroid/widget/OverScroller;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v0, Ll6/g;

    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast p0, Ll6/a;

    iget v1, v0, Ll6/g;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Ll6/g;->f:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v0, p0, Ll6/a;->e:Ll6/c;

    invoke-virtual {v0}, Ll6/c;->a()V

    :cond_1
    iget v0, p0, Ll6/a;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ll6/a;->m:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ll6/a;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ll6/a;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll6/a;->k:Ljava/lang/Throwable;

    iget-object p0, p0, Ll6/a;->d:Lvc/c;

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Lvc/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lvc/c;->onComplete()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, La0/a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, La0/a;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lv3/a;

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0}, Lv3/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    :pswitch_1
    invoke-direct {p0}, La0/a;->c()V

    return-void

    :pswitch_2
    invoke-direct {p0}, La0/a;->b()V

    return-void

    :pswitch_3
    invoke-direct {p0}, La0/a;->a()V

    return-void

    :pswitch_4
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    const-string v1, "Failed to get app instance id"

    iget-object v2, p0, La0/a;->c:Ljava/lang/Object;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    :try_start_0
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    invoke-virtual {v0, v7}, Lv1/j;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v4, :cond_1

    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v3}, Lva/n;->i(Ljava/lang/Object;)V

    check-cast v0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v4, v0}, Lcom/google/android/gms/measurement/internal/q2;->n(Lcom/google/android/gms/measurement/internal/w5;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    invoke-virtual {v0, v7}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    move-object v3, p0

    check-cast v3, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v3, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v2, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gms/measurement/internal/u5;->I(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    return-void

    :goto_1
    check-cast p0, Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    check-cast v2, Lcom/google/android/gms/internal/measurement/i0;

    invoke-virtual {p0, v7, v2}, Lcom/google/android/gms/measurement/internal/u5;->I(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    throw v0

    :pswitch_5
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzah;->zzb:Lcom/google/android/gms/measurement/internal/zzah;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f;->f(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    invoke-virtual {v1, v7}, Lv1/j;->b(Ljava/lang/String;)V

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    :goto_2
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_4

    :cond_3
    :try_start_4
    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-nez v2, :cond_4

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :cond_4
    :try_start_6
    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/w5;

    invoke-static {v1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/w5;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/q2;->n(Lcom/google/android/gms/measurement/internal/w5;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v2, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/n4;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/i3;->f:Lv1/j;

    invoke-virtual {v2, v1}, Lv1/j;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c5;->v()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_7
    iget-object v2, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/c5;

    iget-object v2, v2, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    :try_start_8
    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_5
    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :pswitch_6
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    if-nez v2, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    check-cast p0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->o(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_6

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    check-cast p0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->t(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V

    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/o;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->j(Lcom/google/android/gms/measurement/internal/o;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    const-string v3, "_cmp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    const-string v3, "_cis"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "referrer broadcast"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "referrer API"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->l:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Event has been filtered "

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/o;

    const-string v9, "_cmpx"

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/o;->d:J

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    move-object v1, v2

    :cond_9
    :goto_7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/w5;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/o3;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/w5;->a:Ljava/lang/String;

    const-string v9, "EES config found for"

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/q5;->a:Lcom/google/android/gms/measurement/internal/o3;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_8

    :cond_b
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/o3;->j:Lcom/google/android/gms/measurement/internal/n3;

    invoke-virtual {v4, v8}, Ll/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/measurement/d0;

    :goto_8
    if-eqz v7, :cond_f

    :try_start_9
    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/b3;->I(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    move-result-object v8

    sget-object v9, Lfc/c;->f:[Ljava/lang/String;

    sget-object v10, Lfc/c;->d:[Ljava/lang/String;

    invoke-static {v9, v2, v10}, Lv9/a;->i0([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    move-object v9, v2

    :cond_c
    new-instance v10, Lcom/google/android/gms/internal/measurement/b;

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/o;->d:J

    invoke-direct {v10, v11, v12, v9, v8}, Lcom/google/android/gms/internal/measurement/b;-><init>(JLjava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/d0;->b(Lcom/google/android/gms/internal/measurement/b;)Z

    move-result v8
    :try_end_9
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_9 .. :try_end_9} :catch_2

    if-nez v8, :cond_d

    goto/16 :goto_a

    :cond_d
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    iget-object v9, v8, Lp1/v;->c:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/b;

    iget-object v8, v8, Lp1/v;->b:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/b;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/b;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v1

    const-string v8, "EES edited event"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v1, v4, Lp1/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/b3;->C(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v1

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    invoke-virtual {v2, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    iget-object v1, v1, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_10

    iget-object v1, v4, Lp1/v;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/b;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "EES logging created event"

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/b3;->C(Lcom/google/android/gms/internal/measurement/b;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    invoke-virtual {v4, v2, p0}, Lcom/google/android/gms/measurement/internal/q5;->i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_9

    :catch_2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "EES error. appId, eventName"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/w5;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "EES was not applied to event"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/q5;->d()Lcom/google/android/gms/measurement/internal/x2;

    move-result-object v2

    const-string v3, "EES not loaded for"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v8, v3}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_b
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->i(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V

    :cond_10
    return-void

    :pswitch_9
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/q5;->a()V

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/c;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/c;->c:Lcom/google/android/gms/measurement/internal/r5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r5;->b()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    if-nez v2, :cond_11

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    check-cast p0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->n(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V

    goto :goto_c

    :cond_11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    check-cast p0, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/q5;->r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V

    :goto_c
    return-void

    :pswitch_a
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/z3;

    iget-object v2, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z3;->c:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    iget-object v3, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-static {v2}, Lva/n;->f(Ljava/lang/String;)V

    const-string v6, "dep"

    invoke-static {v6}, Lva/n;->f(Ljava/lang/String;)V

    const-string v6, ""

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_12

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v9, "Param name can\'t be null"

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/u5;->o(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_13

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v10, "Param value can\'t be null"

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_13
    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    new-instance p0, Lcom/google/android/gms/measurement/internal/n;

    invoke-direct {p0, v6}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    goto :goto_f

    :cond_15
    new-instance p0, Lcom/google/android/gms/measurement/internal/n;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v6}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    :goto_f
    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d2;->p()Lcom/google/android/gms/internal/measurement/c2;

    move-result-object v8

    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v9, :cond_16

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v1, v8, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_16
    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/measurement/d2;->B(JLcom/google/android/gms/internal/measurement/d2;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h2;->p()Lcom/google/android/gms/internal/measurement/g2;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/g2;->h(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/n;->a:Landroid/os/Bundle;

    invoke-virtual {v11, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v6, v10, v9}, Lcom/google/android/gms/measurement/internal/b3;->J(Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/Object;)V

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/c2;->i(Lcom/google/android/gms/internal/measurement/g2;)V

    goto :goto_10

    :cond_17
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/t3;->b()[B

    move-result-object p0

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    array-length v8, p0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "Saving default event parameters, appId, data size"

    invoke-virtual {v1, v9, v6, v8}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "app_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "parameters"

    invoke-virtual {v1, v6, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "default_event_params"

    invoke-virtual {p0, v0, v7, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long p0, v0, v5

    if-nez p0, :cond_18

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v3, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Failed to insert default event parameters (got -1). appId"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_11

    :catch_3
    move-exception p0

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Error storing default event parameters. appId"

    invoke-virtual {v0, v2, v1, p0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    :goto_11
    return-void

    :pswitch_b
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/j3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/j3;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/k3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/j3;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/measurement/a0;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/k3;->a:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "package_name"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    check-cast p0, Lcom/google/android/gms/internal/measurement/y;

    invoke-virtual {p0}, Ll3/a;->c()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/x;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0, v6}, Ll3/a;->d(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-nez v0, :cond_19

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Install Referrer Service returned a null response"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_12

    :catch_4
    move-exception p0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    :goto_12
    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s3;->k()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call on client side"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Lb3/e0;

    iget v1, v0, Lb3/e0;->b:I

    iget-object v6, p0, La0/a;->b:Ljava/lang/Object;

    if-lez v1, :cond_1b

    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iget-object v8, v0, Lb3/e0;->c:Landroid/os/Bundle;

    if-eqz v8, :cond_1a

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v8, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    :cond_1a
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/os/Bundle;)V

    :cond_1b
    iget p0, v0, Lb3/e0;->b:I

    if-lt p0, v4, :cond_1c

    move-object p0, v6

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f()V

    :cond_1c
    iget p0, v0, Lb3/e0;->b:I

    if-lt p0, v3, :cond_1d

    move-object p0, v6

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d()V

    :cond_1d
    iget p0, v0, Lb3/e0;->b:I

    if-lt p0, v2, :cond_1e

    move-object p0, v6

    check-cast p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    :cond_1e
    iget p0, v0, Lb3/e0;->b:I

    if-lt p0, v5, :cond_1f

    check-cast v6, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1f
    return-void

    :pswitch_d
    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lb3/d0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_e
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lv1/h;

    iget-object v2, v0, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    iget-boolean v0, v0, Lv1/h;->j:Z

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v0, :cond_20

    iget-object p0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast p0, Lv1/h;

    const-string v0, "canceled-at-delivery"

    invoke-virtual {p0, v0}, Lv1/h;->c(Ljava/lang/String;)V

    goto :goto_15

    :cond_20
    iget-object v0, p0, La0/a;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lv1/j;

    iget-object v2, v2, Lv1/j;->d:Ljava/lang/Object;

    check-cast v2, Lcom/android/volley/VolleyError;

    if-nez v2, :cond_21

    move v1, v6

    :cond_21
    if-eqz v1, :cond_22

    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lv1/h;

    check-cast v0, Lv1/j;

    iget-object v0, v0, Lv1/j;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lv1/h;->b(Ljava/lang/Object;)V

    goto :goto_13

    :cond_22
    iget-object v1, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v1, Lv1/h;

    check-cast v0, Lv1/j;

    iget-object v0, v0, Lv1/j;->d:Ljava/lang/Object;

    check-cast v0, Lcom/android/volley/VolleyError;

    iget-object v3, v1, Lv1/h;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v1, v1, Lv1/h;->f:Lw1/i;

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v1, :cond_23

    monitor-enter v1

    :try_start_e
    iput-object v0, v1, Lw1/i;->c:Lcom/android/volley/VolleyError;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    monitor-exit v1

    goto :goto_13

    :catchall_3
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_23
    :goto_13
    iget-object v0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v0, Lv1/j;

    iget-boolean v0, v0, Lv1/j;->a:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lv1/h;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lv1/h;->a(Ljava/lang/String;)V

    goto :goto_14

    :cond_24
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lv1/h;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lv1/h;->c(Ljava/lang/String;)V

    :goto_14
    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_25

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_25
    :goto_15
    return-void

    :catchall_4
    move-exception p0

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw p0

    :pswitch_f
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/d0;

    iget-object v0, v0, Landroidx/work/impl/d0;->u:Landroidx/work/impl/p;

    iget-object v1, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/t;

    iget-object p0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast p0, Lva/f;

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/p;->g(Landroidx/work/impl/t;Lva/f;)Z

    return-void

    :pswitch_10
    :try_start_11
    iget-object v0, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v0, Ls4/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_11} :catch_5

    :catch_5
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/c;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Lp1/j;

    invoke-interface {v0, p0, v6}, Landroidx/work/impl/c;->c(Lp1/j;Z)V

    return-void

    :pswitch_11
    :try_start_12
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v7
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    :catch_6
    iget-object v0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/a;

    iget-object v1, p0, La0/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    new-instance v2, La0/a;

    invoke-direct {v2, p0, v0, v7, v6}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_12
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/a;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object v0, p0, La0/a;->b:Ljava/lang/Object;

    check-cast v0, Lf9/b;

    iget-object p0, p0, La0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Typeface;

    iget-object v0, v0, Lf9/b;->b:Ljava/lang/Object;

    check-cast v0, Lp9/d;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p0}, Lp9/d;->d0(Landroid/graphics/Typeface;)V

    :cond_26
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
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
        :pswitch_0
    .end packed-switch
.end method
