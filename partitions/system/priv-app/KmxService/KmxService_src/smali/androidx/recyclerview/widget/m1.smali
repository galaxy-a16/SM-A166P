.class public final Landroidx/recyclerview/widget/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iput-object p1, p0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->H2:Li0/c;

    iput-object v0, p0, Landroidx/recyclerview/widget/m1;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/m1;->e:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/m1;->f:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v3, 0x0

    iput v3, v0, Landroidx/recyclerview/widget/m1;->b:I

    iput v3, v0, Landroidx/recyclerview/widget/m1;->a:I

    iget-object v4, v0, Landroidx/recyclerview/widget/m1;->d:Landroid/view/animation/Interpolator;

    sget-object v5, Landroidx/recyclerview/widget/RecyclerView;->H2:Li0/c;

    if-eq v4, v5, :cond_0

    iput-object v5, v0, Landroidx/recyclerview/widget/m1;->d:Landroid/view/animation/Interpolator;

    new-instance v4, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    :cond_0
    iget-object v7, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView;->R0:Z

    iget v5, v1, Landroidx/recyclerview/widget/RecyclerView;->S0:F

    const/4 v6, 0x4

    new-array v10, v6, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    const/4 v15, 0x1

    aput-object v11, v10, v15

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v11, v10, v16

    const-class v11, Landroid/widget/OverScroller;

    const-string v14, "hidden_fling"

    invoke-static {v11, v14, v10}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v10, :cond_1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v15

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v16

    invoke-static {v7, v10, v6}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const v15, 0x7fffffff

    move/from16 v10, p1

    move/from16 v11, p2

    const/high16 v2, -0x80000000

    move v14, v2

    invoke-virtual/range {v7 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_0
    iget-object v2, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/m1;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/m1;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/m1;->f:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final c(IIILandroid/view/animation/Interpolator;)V
    .locals 15

    move-object v0, p0

    move/from16 v7, p2

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v9, v0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v3, p3

    if-ne v3, v1, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    int-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int v6, p1, p1

    mul-int v10, v7, v7

    add-int/2addr v10, v6

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v6, v10

    if-eqz v4, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v10

    :goto_1
    div-int/lit8 v11, v10, 0x2

    int-to-float v6, v6

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    int-to-float v10, v10

    div-float/2addr v6, v10

    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v11, v11

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v6, v13

    const v13, 0x3ef1463b

    mul-float/2addr v6, v13

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float/2addr v6, v11

    add-float/2addr v6, v11

    if-lez v5, :cond_2

    int-to-float v1, v5

    div-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    int-to-float v1, v1

    div-float/2addr v1, v10

    add-float/2addr v1, v12

    const/high16 v3, 0x43960000    # 300.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    :goto_3
    const/16 v3, 0x7d0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    goto :goto_4

    :cond_4
    move v10, v3

    :goto_4
    if-nez p4, :cond_5

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->H2:Li0/c;

    move-object v11, v1

    goto :goto_5

    :cond_5
    move-object/from16 v11, p4

    :goto_5
    const/4 v12, 0x2

    if-eqz p1, :cond_6

    move v1, v12

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-virtual {v9, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->G0(II)Z

    iget-object v1, v0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->F(I[III[I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroidx/recyclerview/widget/m1;->d:Landroid/view/animation/Interpolator;

    if-eq v1, v11, :cond_7

    iput-object v11, v0, Landroidx/recyclerview/widget/m1;->d:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    :cond_7
    iput v8, v0, Landroidx/recyclerview/widget/m1;->b:I

    iput v8, v0, Landroidx/recyclerview/widget/m1;->a:I

    invoke-virtual {v9, v12}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m1;->b()V

    :cond_8
    invoke-static {v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    if-nez v1, :cond_0

    invoke-virtual {v7, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    return-void

    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, v0, Landroidx/recyclerview/widget/m1;->f:Z

    const/4 v9, 0x1

    iput-boolean v9, v0, Landroidx/recyclerview/widget/m1;->e:Z

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->z()V

    iget-object v10, v0, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v10}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    iget v3, v0, Landroidx/recyclerview/widget/m1;->a:I

    sub-int v3, v1, v3

    iget v4, v0, Landroidx/recyclerview/widget/m1;->b:I

    sub-int v4, v2, v4

    iput v1, v0, Landroidx/recyclerview/widget/m1;->a:I

    iput v2, v0, Landroidx/recyclerview/widget/m1;->b:I

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v3, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->y(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v11

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v4, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->y(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v12

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->a1:[I

    aput v8, v3, v8

    aput v8, v3, v9

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v1, v7

    move v2, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->F(I[III[I)Z

    move-result v1

    iget-object v13, v7, Landroidx/recyclerview/widget/RecyclerView;->a1:[I

    if-eqz v1, :cond_1

    aget v1, v13, v8

    sub-int/2addr v11, v1

    aget v1, v13, v9

    sub-int/2addr v12, v1

    invoke-static {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    :cond_1
    invoke-static {v12, v7}, Landroidx/recyclerview/widget/RecyclerView;->d(ILandroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    const/4 v14, 0x2

    if-eq v1, v14, :cond_2

    invoke-virtual {v7, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->x(II)V

    :cond_2
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v1, :cond_6

    aput v8, v13, v8

    aput v8, v13, v9

    invoke-virtual {v7, v11, v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->z0(II[I)V

    aget v1, v13, v8

    aget v2, v13, v9

    sub-int/2addr v11, v1

    sub-int/2addr v12, v2

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    iget-object v3, v3, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-eqz v3, :cond_5

    iget-boolean v4, v3, Landroidx/recyclerview/widget/b0;->d:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Landroidx/recyclerview/widget/b0;->e:Z

    if-eqz v4, :cond_5

    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/b0;->j()V

    goto :goto_1

    :cond_3
    iget v5, v3, Landroidx/recyclerview/widget/b0;->a:I

    if-lt v5, v4, :cond_4

    sub-int/2addr v4, v9

    iput v4, v3, Landroidx/recyclerview/widget/b0;->a:I

    :cond_4
    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/b0;->h(II)V

    :cond_5
    :goto_1
    move v15, v11

    move/from16 v16, v12

    move v11, v1

    move v12, v2

    goto :goto_2

    :cond_6
    move v15, v11

    move/from16 v16, v12

    move v11, v8

    move v12, v11

    :goto_2
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView;->a1:[I

    aput v8, v6, v8

    aput v8, v6, v9

    move-object v1, v7

    move v2, v11

    move v3, v12

    move v4, v15

    move/from16 v5, v16

    invoke-static/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroidx/recyclerview/widget/RecyclerView;IIII[I)Z

    move-result v1

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->L0:[I

    if-eqz v1, :cond_8

    aput v8, v2, v8

    aput v8, v2, v9

    :cond_8
    aget v1, v2, v8

    if-ltz v1, :cond_9

    aget v1, v2, v9

    if-gez v1, :cond_a

    :cond_9
    aput v8, v2, v8

    aput v8, v2, v9

    :cond_a
    aget v1, v13, v8

    sub-int/2addr v15, v1

    aget v1, v13, v9

    sub-int v16, v16, v1

    if-nez v11, :cond_b

    if-eqz v12, :cond_c

    :cond_b
    invoke-virtual {v7, v11, v12}, Landroidx/recyclerview/widget/RecyclerView;->G(II)V

    :cond_c
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    :cond_d
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v2

    if-ne v1, v2, :cond_e

    move v1, v9

    goto :goto_3

    :cond_e
    move v1, v8

    :goto_3
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v2, v3, :cond_f

    move v2, v9

    goto :goto_4

    :cond_f
    move v2, v8

    :goto_4
    invoke-virtual {v10}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    if-nez v1, :cond_10

    if-eqz v15, :cond_11

    :cond_10
    if-nez v2, :cond_12

    if-eqz v16, :cond_11

    goto :goto_5

    :cond_11
    move v1, v8

    goto :goto_6

    :cond_12
    :goto_5
    move v1, v9

    :goto_6
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    iget-object v2, v2, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-eqz v2, :cond_13

    iget-boolean v2, v2, Landroidx/recyclerview/widget/b0;->d:Z

    if-eqz v2, :cond_13

    move v2, v9

    goto :goto_7

    :cond_13
    move v2, v8

    :goto_7
    if-nez v2, :cond_1f

    if-eqz v1, :cond_1f

    invoke-virtual {v7}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eq v1, v14, :cond_1d

    iget-boolean v1, v7, Landroidx/recyclerview/widget/RecyclerView;->P0:Z

    if-nez v1, :cond_1d

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v15, :cond_14

    neg-int v2, v1

    goto :goto_8

    :cond_14
    if-lez v15, :cond_15

    move v2, v1

    goto :goto_8

    :cond_15
    move v2, v8

    :goto_8
    if-gez v16, :cond_16

    neg-int v1, v1

    goto :goto_9

    :cond_16
    if-lez v16, :cond_17

    goto :goto_9

    :cond_17
    move v1, v8

    :goto_9
    if-gez v2, :cond_18

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->I()V

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->O:Landroid/widget/EdgeEffect;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_a

    :cond_18
    if-lez v2, :cond_19

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->J()V

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->Q:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_19
    :goto_a
    if-gez v1, :cond_1a

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->K()V

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->P:Landroid/widget/EdgeEffect;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_b

    :cond_1a
    if-lez v1, :cond_1b

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->H()V

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1b
    :goto_b
    if-nez v2, :cond_1c

    if-eqz v1, :cond_1d

    :cond_1c
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_1d
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->E2:Z

    if-eqz v1, :cond_20

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->A0:Landroidx/recyclerview/widget/r;

    iget-object v2, v1, Landroidx/recyclerview/widget/r;->c:[I

    if-eqz v2, :cond_1e

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_1e
    iput v8, v1, Landroidx/recyclerview/widget/r;->d:I

    goto :goto_c

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/m1;->b()V

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->z0:Landroidx/recyclerview/widget/t;

    if-eqz v1, :cond_20

    invoke-virtual {v1, v7, v11, v12}, Landroidx/recyclerview/widget/t;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_20
    :goto_c
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v7, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    :cond_21
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    iget-object v1, v1, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-eqz v1, :cond_22

    iget-boolean v2, v1, Landroidx/recyclerview/widget/b0;->d:Z

    if-eqz v2, :cond_22

    invoke-virtual {v1, v8, v8}, Landroidx/recyclerview/widget/b0;->h(II)V

    :cond_22
    iput-boolean v8, v0, Landroidx/recyclerview/widget/m1;->e:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/m1;->f:Z

    if-eqz v1, :cond_23

    invoke-virtual {v7, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v7, v0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_d

    :cond_23
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->g(I)V

    :goto_d
    return-void
.end method
