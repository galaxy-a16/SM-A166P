.class public final Ld/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ld/j;->a:I

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld/j;->a:I

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ld/j;->a:I

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p0, Ld/j;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object p0, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_14

    sget v0, Landroidx/core/widget/NestedScrollView;->x0:F

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/core/widget/NestedScrollView;->m0:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/core/widget/NestedScrollView;->l0:J

    iget-wide v6, p0, Landroidx/core/widget/NestedScrollView;->o0:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroidx/core/widget/NestedScrollView;->n0:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->q0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->G:I

    iget-wide v4, p0, Landroidx/core/widget/NestedScrollView;->l0:J

    const-wide/16 v6, 0x2

    cmp-long v6, v4, v6

    const-wide/16 v7, 0x4

    if-lez v6, :cond_2

    cmp-long v6, v4, v7

    if-gez v6, :cond_2

    int-to-double v4, v0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    goto :goto_0

    :cond_2
    cmp-long v6, v4, v7

    const-wide/16 v7, 0x5

    if-ltz v6, :cond_3

    cmp-long v6, v4, v7

    if-gez v6, :cond_3

    int-to-double v4, v0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_3
    cmp-long v4, v4, v7

    if-ltz v4, :cond_4

    int-to-double v4, v0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    :goto_0
    mul-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->G:I

    :cond_4
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->V:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget v0, p0, Landroidx/core/widget/NestedScrollView;->G:I

    mul-int/2addr v0, v3

    goto :goto_1

    :cond_5
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->G:I

    mul-int/2addr v0, v2

    :goto_1
    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    if-gez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    if-gtz v5, :cond_7

    :cond_6
    if-lez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    if-ge v5, p1, :cond_c

    :cond_7
    invoke-virtual {p0, v4, v2}, Landroidx/core/widget/NestedScrollView;->A(II)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroidx/core/widget/NestedScrollView;->l(I[III[I)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0xfa

    invoke-virtual {p0, v1, v0, p1}, Landroidx/core/widget/NestedScrollView;->z(III)V

    goto :goto_3

    :cond_8
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->s0:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    if-eqz p1, :cond_b

    :cond_9
    iget p1, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    if-gez p1, :cond_a

    goto :goto_2

    :cond_a
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->v0:I

    if-le p1, v1, :cond_b

    :goto_2
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->u0:I

    :cond_b
    :goto_3
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView;->Q:Ld/j;

    const-wide/16 v0, 0x7

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_d

    if-ne v0, v2, :cond_e

    if-lez p1, :cond_e

    :cond_d
    move v1, v2

    :cond_e
    if-eqz v1, :cond_13

    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-nez p1, :cond_13

    iget p1, p0, Landroidx/core/widget/NestedScrollView;->V:I

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->f:Landroid/widget/EdgeEffect;

    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    const/16 v5, 0x2710

    if-ne p1, v4, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v3, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_f
    if-ne p1, v2, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    invoke-virtual {v0, v5}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_10
    :goto_4
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->p0:Z

    :cond_13
    if-nez v1, :cond_14

    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->p0:Z

    if-nez p1, :cond_14

    iput-boolean v2, p0, Landroidx/core/widget/NestedScrollView;->p0:Z

    :cond_14
    :goto_5
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_16

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    if-eq v0, v3, :cond_16

    if-eq v0, v2, :cond_15

    goto :goto_6

    :cond_15
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_6

    :cond_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_6
    return-void

    :goto_7
    iget-object p0, p0, Ld/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lp9/c;->a(Landroid/os/Bundle;)Lp9/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/annotation/i0;->t(Landroid/content/Context;Lp9/c;)V

    :cond_17
    iget p0, p1, Landroid/os/Message;->arg1:I

    sget-object p1, Lp9/d;->a:Landroid/os/HandlerThread;

    const-class p1, Lp9/d;

    monitor-enter p1

    :try_start_0
    sget v0, Lp9/d;->c:I

    if-ne p0, v0, :cond_18

    sget-object p0, Lp9/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    const/4 p0, 0x0

    sput-object p0, Lp9/d;->a:Landroid/os/HandlerThread;

    sput-object p0, Lp9/d;->b:Ld/j;

    sput v1, Lp9/d;->c:I

    const-string p0, "d"

    const-string v0, "onStop"

    invoke-static {p0, v0}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_18
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
