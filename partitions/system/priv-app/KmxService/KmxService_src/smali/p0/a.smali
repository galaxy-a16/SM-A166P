.class public Lp0/a;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lp0/a;->a:I

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lp0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lz2/h;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lp0/a;->a:I

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lp0/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 3
    iput p3, p0, Lp0/a;->a:I

    iput-object p1, p0, Lp0/a;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lp0/a;->a:I

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x64

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object v10, v0, Lp0/a;->b:Ljava/lang/Object;

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget v0, v1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_1

    check-cast v10, Lg4/i;

    iget-object v0, v10, Lg4/i;->k:Lg4/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v5, v1, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v1, v10, Lg4/i;->k:Lg4/g;

    new-array v2, v11, [F

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v9

    const-string v4, "y"

    invoke-static {v1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v2, Ld1/n;

    invoke-direct {v2, v3, v10, v0}, Ld1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    iget v0, v1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_4

    check-cast v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {v10}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    iget-object v1, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->E:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    iput v0, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->b0:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e4ccccd    # 0.2f

    const v12, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v12, v12, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v4, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v4

    iget-object v5, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    new-array v4, v11, [I

    aput v9, v4, v9

    iget-object v12, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    if-nez v12, :cond_2

    new-instance v12, Landroid/animation/ValueAnimator;

    invoke-direct {v12}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v12, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    new-instance v13, Lu3/n;

    invoke-direct {v13, v10, v4, v1, v2}, Lu3/n;-><init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;[ILandroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    iget-object v1, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/appcompat/widget/e;

    invoke-direct {v2, v10, v3}, Landroidx/appcompat/widget/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    new-array v1, v8, [I

    iget-boolean v2, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Z:Z

    if-eqz v2, :cond_3

    iget-object v2, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    goto :goto_2

    :cond_3
    float-to-int v2, v5

    :goto_2
    aput v2, v1, v9

    float-to-int v2, v5

    aput v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, v10, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->c0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    return-void

    :pswitch_3
    iget v0, v1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto/16 :goto_14

    :cond_5
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-nez v0, :cond_6

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v10, Landroidx/recyclerview/widget/RecyclerView;->T1:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v10, Landroidx/recyclerview/widget/RecyclerView;->S1:J

    iget-boolean v2, v10, Landroidx/recyclerview/widget/RecyclerView;->L1:Z

    if-eqz v2, :cond_7

    iget-wide v3, v10, Landroidx/recyclerview/widget/RecyclerView;->W1:J

    sub-long v3, v0, v3

    iget-wide v12, v10, Landroidx/recyclerview/widget/RecyclerView;->U1:J

    cmp-long v3, v3, v12

    if-gez v3, :cond_7

    goto/16 :goto_14

    :cond_7
    iget-boolean v3, v10, Landroidx/recyclerview/widget/RecyclerView;->g1:Z

    if-eqz v3, :cond_8

    iget-wide v3, v10, Landroidx/recyclerview/widget/RecyclerView;->W1:J

    sub-long/2addr v0, v3

    iget-wide v3, v10, Landroidx/recyclerview/widget/RecyclerView;->V1:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_8

    goto/16 :goto_14

    :cond_8
    if-eqz v2, :cond_a

    iget-boolean v0, v10, Landroidx/recyclerview/widget/RecyclerView;->Z1:Z

    if-nez v0, :cond_a

    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->C0:Landroidx/recyclerview/widget/z0;

    if-eqz v0, :cond_9

    iput v11, v10, Landroidx/recyclerview/widget/RecyclerView;->a2:I

    invoke-virtual {v0, v11, v10}, Landroidx/recyclerview/widget/z0;->a(ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_9
    iput-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView;->Z1:Z

    :cond_a
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->e()Z

    move-result v0

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/u0;->d()Z

    move-result v1

    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/u0;->B()I

    move-result v2

    if-ne v2, v11, :cond_b

    move v2, v11

    goto :goto_3

    :cond_b
    move v2, v9

    :goto_3
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v3

    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    sget v5, Landroidx/recyclerview/widget/RecyclerView;->F2:F

    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView;->O0:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-static {v11, v5, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v5, v12

    float-to-int v5, v5

    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    iget-wide v12, v10, Landroidx/recyclerview/widget/RecyclerView;->S1:J

    const-wide/16 v14, 0x2

    cmp-long v14, v12, v14

    const-wide/16 v15, 0x4

    if-lez v14, :cond_c

    cmp-long v14, v12, v15

    if-gez v14, :cond_c

    int-to-double v12, v5

    const-wide v14, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :cond_c
    cmp-long v14, v12, v15

    const-wide/16 v15, 0x5

    if-ltz v14, :cond_d

    cmp-long v14, v12, v15

    if-gez v14, :cond_d

    int-to-double v12, v5

    const-wide v14, 0x3fc999999999999aL    # 0.2

    goto :goto_4

    :cond_d
    cmp-long v12, v12, v15

    if-ltz v12, :cond_e

    int-to-double v12, v5

    const-wide v14, 0x3fd3333333333333L    # 0.3

    :goto_4
    mul-double/2addr v12, v14

    double-to-int v12, v12

    add-int/2addr v5, v12

    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    :cond_e
    iget v5, v10, Landroidx/recyclerview/widget/RecyclerView;->X1:I

    const/4 v15, 0x0

    if-ne v5, v8, :cond_10

    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    mul-int/2addr v12, v11

    goto :goto_5

    :cond_f
    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    mul-int/lit8 v12, v12, -0x1

    :goto_5
    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView;->j2:I

    if-eq v13, v5, :cond_12

    iget-boolean v13, v10, Landroidx/recyclerview/widget/RecyclerView;->i2:Z

    if-ne v13, v11, :cond_12

    iput-object v15, v10, Landroidx/recyclerview/widget/RecyclerView;->r1:Landroid/view/View;

    iput v9, v10, Landroidx/recyclerview/widget/RecyclerView;->t1:I

    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView;->l2:I

    goto :goto_7

    :cond_10
    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    mul-int/lit8 v12, v12, -0x1

    goto :goto_6

    :cond_11
    iget v12, v10, Landroidx/recyclerview/widget/RecyclerView;->Q1:I

    mul-int/2addr v12, v11

    :goto_6
    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView;->j2:I

    if-eq v13, v5, :cond_12

    iget-boolean v13, v10, Landroidx/recyclerview/widget/RecyclerView;->i2:Z

    if-ne v13, v11, :cond_12

    iput-object v15, v10, Landroidx/recyclerview/widget/RecyclerView;->r1:Landroid/view/View;

    iput v9, v10, Landroidx/recyclerview/widget/RecyclerView;->t1:I

    iget v13, v10, Landroidx/recyclerview/widget/RecyclerView;->k2:I

    :goto_7
    iput v13, v10, Landroidx/recyclerview/widget/RecyclerView;->s1:I

    iput v5, v10, Landroidx/recyclerview/widget/RecyclerView;->j2:I

    iput-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView;->i2:Z

    :cond_12
    move v5, v12

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_13

    goto/16 :goto_14

    :cond_13
    if-gez v5, :cond_14

    if-nez v4, :cond_15

    :cond_14
    if-lez v5, :cond_1e

    if-eqz v3, :cond_1e

    :cond_15
    if-eqz v1, :cond_16

    move v8, v11

    :cond_16
    invoke-virtual {v10, v8, v11}, Landroidx/recyclerview/widget/RecyclerView;->G0(II)Z

    if-eqz v1, :cond_18

    if-eqz v2, :cond_17

    neg-int v3, v5

    move v13, v3

    goto :goto_8

    :cond_17
    move v13, v5

    goto :goto_8

    :cond_18
    move v13, v9

    :goto_8
    if-eqz v0, :cond_19

    move v3, v5

    goto :goto_9

    :cond_19
    move v3, v9

    :goto_9
    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x1

    move-object v12, v10

    move-object v4, v15

    move v15, v3

    invoke-virtual/range {v12 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->F(I[III[I)Z

    move-result v3

    if-nez v3, :cond_1d

    if-eqz v1, :cond_1b

    if-eqz v2, :cond_1a

    neg-int v1, v5

    goto :goto_a

    :cond_1a
    move v1, v5

    goto :goto_a

    :cond_1b
    move v1, v9

    :goto_a
    if-eqz v0, :cond_1c

    goto :goto_b

    :cond_1c
    move v5, v9

    :goto_b
    invoke-virtual {v10, v1, v5, v4, v9}, Landroidx/recyclerview/widget/RecyclerView;->y0(IILandroid/view/MotionEvent;I)Z

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_c

    :cond_1d
    invoke-static {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    :goto_c
    iget-object v0, v10, Landroidx/recyclerview/widget/RecyclerView;->q2:Lp0/a;

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    :cond_1e
    invoke-virtual {v10}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_23

    if-ne v0, v11, :cond_22

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_d

    :cond_1f
    iget-object v2, v10, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v2

    if-eq v0, v2, :cond_20

    goto :goto_e

    :cond_20
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v10, Landroidx/recyclerview/widget/RecyclerView;->g2:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_21

    sub-int/2addr v0, v11

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_21

    :goto_d
    move v0, v11

    goto :goto_f

    :cond_21
    :goto_e
    move v0, v9

    :goto_f
    if-nez v0, :cond_22

    goto :goto_10

    :cond_22
    move v0, v9

    goto :goto_11

    :cond_23
    :goto_10
    move v0, v11

    :goto_11
    if-eqz v0, :cond_29

    iget-boolean v2, v10, Landroidx/recyclerview/widget/RecyclerView;->Y1:Z

    if-nez v2, :cond_29

    if-eqz v1, :cond_24

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->I()V

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->J()V

    goto :goto_12

    :cond_24
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->K()V

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->H()V

    :goto_12
    iget v2, v10, Landroidx/recyclerview/widget/RecyclerView;->X1:I

    const/16 v3, 0x2710

    if-ne v2, v8, :cond_26

    if-eqz v1, :cond_25

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    goto :goto_13

    :cond_25
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    goto :goto_13

    :cond_26
    if-ne v2, v11, :cond_28

    if-eqz v1, :cond_27

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    goto :goto_13

    :cond_27
    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-static {v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->h(ILandroidx/recyclerview/widget/RecyclerView;)V

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v10, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    :goto_13
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_28
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    iput-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView;->Y1:Z

    :cond_29
    iget v1, v10, Landroidx/recyclerview/widget/RecyclerView;->V:I

    if-ne v1, v11, :cond_2a

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    :cond_2a
    if-nez v0, :cond_2b

    iget-boolean v0, v10, Landroidx/recyclerview/widget/RecyclerView;->Y1:Z

    if-nez v0, :cond_2b

    iput-boolean v11, v10, Landroidx/recyclerview/widget/RecyclerView;->Y1:Z

    :cond_2b
    :goto_14
    return-void

    :pswitch_4
    iget v2, v1, Landroid/os/Message;->what:I

    if-eq v2, v11, :cond_2c

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_15

    :cond_2c
    check-cast v10, Lp0/c;

    invoke-virtual {v10}, Lp0/c;->a()V

    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
