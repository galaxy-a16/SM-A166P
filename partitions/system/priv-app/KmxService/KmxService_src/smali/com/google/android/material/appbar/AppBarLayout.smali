.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lr/b;
.implements Lr/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$Behavior;,
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;,
        Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
    }
.end annotation


# static fields
.field public static final synthetic r0:I


# instance fields
.field public final A:F

.field public B:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field public C:F

.field public final E:F

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public I:F

.field public K:I

.field public L:I

.field public N:Landroid/graphics/drawable/Drawable;

.field public O:I

.field public P:Z

.field public final Q:Landroid/content/res/Resources;

.field public R:Z

.field public final T:Lcom/google/gson/internal/c;

.field public V:Z

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:Landroidx/core/view/c2;

.field public h:Ljava/util/ArrayList;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public l0:Z

.field public m:I

.field public m0:Z

.field public n:Ljava/lang/ref/WeakReference;

.field public n0:Z

.field public o0:I

.field public final p:Z

.field public p0:Lw/c;

.field public q:Landroid/animation/ValueAnimator;

.field public q0:Lw/c;

.field public t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public final u:Ljava/util/ArrayList;

.field public final v:J

.field public final w:Landroid/animation/TimeInterpolator;

.field public x:[I

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p2

    const v1, 0x7f03003b

    const v2, 0x7f130429

    move-object/from16 v3, p1

    invoke-static {v3, v7, v1, v2}, Lv9/a;->g0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, -0x1

    iput v8, v0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    iput v8, v0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    iput v8, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    const/4 v9, 0x0

    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->u:Ljava/util/ArrayList;

    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->R:Z

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->V:Z

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->m0:Z

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->o0:I

    const/4 v10, 0x0

    iput-object v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->p0:Lw/c;

    iput-object v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->q0:Lw/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    const v5, 0x7f130429

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v3, Lkotlin/reflect/x;->f:[I

    new-array v6, v9, [I

    const v4, 0x7f03003b

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lh9/a;->z(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v13, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Ls3/a;->a:[I

    const v5, 0x7f130429

    new-array v6, v9, [I

    const v4, 0x7f03003b

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lh9/a;->z(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v7

    new-instance v1, Lcom/google/gson/internal/c;

    invoke-direct {v1}, Lcom/google/gson/internal/c;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->T:Lcom/google/gson/internal/c;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/material/appbar/AppBarLayout;->Q:Landroid/content/res/Resources;

    invoke-static {v11}, Lva/n;->z(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iput-object v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const v1, 0x7f0502f4

    goto :goto_0

    :cond_2
    const v1, 0x7f0502f3

    :goto_0
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    const/4 v1, 0x7

    invoke-static {v11, v7, v1}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v9

    :goto_2
    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->p:Z

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/a0;->o(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v14, Ll4/h;

    invoke-direct {v14}, Ll4/h;-><init>()V

    invoke-virtual {v14, v3}, Ll4/h;->k(Landroid/content/res/ColorStateList;)V

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03011d

    invoke-static {v1, v2}, Lp9/d;->h0(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    sget-object v2, Lt/h;->a:Ljava/lang/Object;

    invoke-static {v1, v5}, Lu/d;->a(Landroid/content/Context;I)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v1, v2, Landroid/util/TypedValue;->data:I

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v1

    goto :goto_4

    :cond_5
    move-object v6, v10

    :goto_4
    new-instance v10, Lu3/a;

    move-object v1, v10

    move-object v2, p0

    move-object v5, v14

    invoke-direct/range {v1 .. v6}, Lu3/a;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Ll4/h;Ljava/lang/Integer;)V

    iput-object v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v14}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v14, v11}, Ll4/h;->i(Landroid/content/Context;)V

    new-instance v1, Landroidx/core/view/f1;

    invoke-direct {v1, v12, p0, v14}, Landroidx/core/view/f1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v14}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f03033a

    invoke-static {v11, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->C(Landroid/content/Context;II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->v:J

    sget-object v1, Lt3/a;->a:Landroid/view/animation/LinearInterpolator;

    const v2, 0x7f03034c

    invoke-static {v11, v2, v1}, Lcom/fasterxml/jackson/annotation/i0;->D(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->w:Landroid/animation/TimeInterpolator;

    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v9, v9}, Lcom/google/android/material/appbar/AppBarLayout;->h(ZZZ)V

    :cond_8
    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p0, v2}, Lkotlin/reflect/x;->j(Landroid/view/View;F)V

    :cond_9
    const/16 v2, 0xa

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->G:Z

    :cond_a
    const/16 v2, 0x9

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const v4, 0x3ec7ae14    # 0.39f

    if-eqz v3, :cond_b

    iput-boolean v12, v0, Lcom/google/android/material/appbar/AppBarLayout;->F:Z

    invoke-virtual {v7, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->E:F

    goto :goto_6

    :cond_b
    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->F:Z

    iput v4, v0, Lcom/google/android/material/appbar/AppBarLayout;->E:F

    :goto_6
    sget-object v2, Lv/p;->a:Ljava/lang/ThreadLocal;

    const v2, 0x7f060332

    invoke-static {v13, v2}, Lv/k;->a(Landroid/content/res/Resources;I)F

    move-result v2

    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v7, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->H:Z

    :cond_c
    iget-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->H:Z

    if-eqz v2, :cond_d

    invoke-virtual {v7, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_7

    :cond_d
    const v2, 0x7f0603b4

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_7
    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    invoke-virtual {p0, v9, v9, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x7f060313

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput-boolean v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->C:F

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lkotlin/reflect/x;->j(Landroid/view/View;F)V

    :cond_e
    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    :cond_f
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->A:F

    const/4 v1, 0x6

    invoke-virtual {v7, v1, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    const/16 v1, 0x8

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    const/16 v1, 0xc

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lp5/c;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1}, Landroidx/core/view/o0;->u(Landroid/view/View;Landroidx/core/view/t;)V

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->K:I

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->L:I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public static synthetic a(Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/ViewGroup$LayoutParams;)Lu3/c;
    .locals 1

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lu3/c;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Lu3/c;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lu3/c;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Lu3/c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lu3/c;

    invoke-direct {v0, p0}, Lu3/c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getDifferImmHeightRatio()F
    .locals 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    div-float/2addr p0, v0

    return p0
.end method

.method private getHeightPercent()F
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->G:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->E:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getDifferImmHeightRatio()F

    move-result v1

    :cond_0
    add-float/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    :cond_2
    :goto_0
    return v1
.end method

.method private getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Lr/f;

    if-eqz v0, :cond_0

    check-cast p0, Lr/f;

    iget-object p0, p0, Lr/f;->a:Lr/c;

    instance-of v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWindowHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->Q:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method


# virtual methods
.method public final b(Lu3/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lu3/c;

    return p0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m0:Z

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W(Z)V

    :cond_0
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-eqz v0, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->a:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->B:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lh0/b;->b:Lh0/a;

    invoke-virtual {v0, v2, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/f;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->B:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->a:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/material/appbar/AppBarLayout;->T:Lcom/google/gson/internal/c;

    const/4 v8, 0x1

    if-lt v4, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v7, Lcom/google/gson/internal/c;->a:I

    if-eq v2, v5, :cond_4

    iput v5, v7, Lcom/google/gson/internal/c;->a:I

    goto :goto_1

    :cond_0
    iget v2, v7, Lcom/google/gson/internal/c;->a:I

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v3, :cond_2

    iget v2, v7, Lcom/google/gson/internal/c;->a:I

    if-eqz v2, :cond_4

    :goto_0
    iput v6, v7, Lcom/google/gson/internal/c;->a:I

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, v7, Lcom/google/gson/internal/c;->a:I

    if-eq v2, v8, :cond_4

    iput v8, v7, Lcom/google/gson/internal/c;->a:I

    goto :goto_1

    :cond_3
    iget v2, v7, Lcom/google/gson/internal/c;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iput v3, v7, Lcom/google/gson/internal/c;->a:I

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->willNotDraw()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p0 .. p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_5
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    :goto_2
    if-ge v3, v2, :cond_46

    iget-object v4, v0, Lcom/google/android/material/appbar/AppBarLayout;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/b;

    if-eqz v4, :cond_44

    check-cast v4, Lu3/g;

    iget v10, v4, Lu3/g;->a:I

    iget-object v4, v4, Lu3/g;->b:Ljava/lang/Object;

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput v1, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    iget-object v10, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->L:Landroid/widget/LinearLayout;

    neg-int v11, v1

    div-int/lit8 v12, v11, 0x3

    int-to-float v12, v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    iget-object v10, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Landroidx/core/view/c2;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroidx/core/view/c2;->e()I

    move-result v10

    goto :goto_3

    :cond_6
    move v10, v6

    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v13, v6

    :goto_4
    if-ge v13, v12, :cond_c

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lu3/f;

    invoke-static {v14}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)Lu3/p;

    move-result-object v7

    iget-object v9, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    if-eqz v9, :cond_8

    instance-of v9, v14, Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v9, :cond_8

    move-object v9, v14

    check-cast v9, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v9}, Landroidx/appcompat/widget/ActionBarContextView;->getIsActionModeAccessibilityOn()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    invoke-virtual {v9, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_5

    :cond_7
    iget-object v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_8
    :goto_5
    iget v6, v15, Lu3/f;->a:I

    if-eq v6, v8, :cond_a

    if-eq v6, v5, :cond_9

    goto :goto_7

    :cond_9
    int-to-float v6, v11

    iget v9, v15, Lu3/f;->b:F

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_6

    :cond_a
    invoke-static {v14}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b(Landroid/view/View;)Lu3/p;

    move-result-object v6

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lu3/f;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    iget v6, v6, Lu3/p;->b:I

    sub-int/2addr v15, v6

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v15, v6

    iget v6, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v15, v6

    const/4 v6, 0x0

    invoke-static {v11, v6, v15}, Lv9/a;->k(III)I

    move-result v9

    move v6, v9

    :goto_6
    iget v9, v7, Lu3/p;->d:I

    if-eq v9, v6, :cond_b

    iput v6, v7, Lu3/p;->d:I

    invoke-virtual {v7}, Lu3/p;->a()V

    :cond_b
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e()V

    iget-object v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_d

    if-lez v10, :cond_d

    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_d
    iget-boolean v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->R:Z

    if-eqz v6, :cond_1b

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const v9, 0x3e126e98    # 0.143f

    mul-float/2addr v7, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v9, v7

    int-to-float v6, v6

    const/4 v10, 0x0

    sub-float v11, v6, v10

    mul-float/2addr v11, v9

    const/high16 v9, 0x437f0000    # 255.0f

    sub-float v11, v9, v11

    cmpg-float v12, v11, v10

    if-gez v12, :cond_e

    const/4 v11, 0x0

    goto :goto_8

    :cond_e
    cmpl-float v10, v11, v9

    if-gtz v10, :cond_f

    if-nez v1, :cond_10

    cmpg-float v10, v11, v9

    if-gez v10, :cond_10

    :cond_f
    move v11, v9

    :cond_10
    :goto_8
    div-float/2addr v11, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v10

    iget v12, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l0:F

    float-to-int v12, v12

    if-le v10, v12, :cond_12

    iget-boolean v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eqz v10, :cond_11

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    move v10, v8

    :goto_a
    if-eqz v10, :cond_13

    iget-object v12, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->L:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    goto :goto_b

    :cond_13
    iget-object v12, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/view/View;->setAlpha(F)V

    :goto_b
    iget-object v12, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    instance-of v13, v12, Landroidx/appcompat/widget/Toolbar;

    if-eqz v13, :cond_21

    check-cast v12, Landroidx/appcompat/widget/Toolbar;

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v11, v13

    if-nez v13, :cond_14

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_c

    :cond_14
    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_15

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    :cond_15
    :goto_c
    if-eqz v10, :cond_16

    invoke-virtual {v12, v8}, Landroidx/appcompat/widget/Toolbar;->setTitleAccessibilityEnabled(Z)V

    goto :goto_d

    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3eb33333    # 0.35f

    mul-float/2addr v10, v11

    const/high16 v11, 0x43160000    # 150.0f

    div-float/2addr v11, v7

    sub-float/2addr v6, v10

    mul-float/2addr v6, v11

    const/4 v7, 0x0

    cmpg-float v10, v6, v7

    if-gez v10, :cond_17

    const/4 v6, 0x0

    goto :goto_e

    :cond_17
    cmpl-float v7, v6, v9

    if-lez v7, :cond_18

    :goto_d
    move v6, v9

    :cond_18
    :goto_e
    float-to-int v7, v6

    div-float/2addr v6, v9

    iget-boolean v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n0:Z

    if-eqz v4, :cond_1a

    iget-object v4, v12, Landroidx/appcompat/widget/Toolbar;->b:Landroidx/appcompat/widget/e1;

    if-eqz v4, :cond_19

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_19
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1a
    invoke-virtual {v12}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v12, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/e1;

    if-eqz v4, :cond_21

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_11

    :cond_1b
    iget-boolean v6, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:Z

    if-eqz v6, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    div-float/2addr v7, v6

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:Lcom/google/android/material/internal/c;

    invoke-virtual {v4, v7}, Lcom/google/android/material/internal/c;->p(F)V

    goto :goto_11

    :goto_f
    check-cast v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v7, "SeslImmersiveScrollBehavior"

    if-eqz v6, :cond_1d

    iget-boolean v6, v6, Lcom/google/android/material/appbar/AppBarLayout;->V:Z

    if-nez v6, :cond_1c

    goto :goto_10

    :cond_1c
    const-string v4, "AppBarLayout was DetachedState. Skip onOffsetChanged"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1d
    :goto_10
    iget-boolean v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Q:Z

    if-nez v6, :cond_22

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_1e

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_1e
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v6, :cond_1f

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_1f
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v6, :cond_20

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    :cond_20
    iget-object v4, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->willNotDraw()Z

    move-result v6

    if-nez v6, :cond_21

    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_21
    :goto_11
    move v11, v8

    const/4 v14, 0x0

    goto/16 :goto_21

    :cond_22
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v6, :cond_23

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    goto :goto_12

    :cond_23
    const/4 v6, 0x0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v9

    iget v10, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    add-int/2addr v10, v6

    int-to-float v10, v10

    const/4 v11, 0x0

    cmpl-float v12, v9, v11

    if-nez v12, :cond_24

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_24
    move v11, v9

    :goto_13
    div-float/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v11

    const/4 v13, 0x0

    sub-int/2addr v11, v13

    add-int/2addr v11, v1

    int-to-float v11, v11

    sub-float/2addr v11, v9

    iget v13, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->N:I

    int-to-float v13, v13

    add-float v14, v13, v11

    const/high16 v15, 0x3f800000    # 1.0f

    add-float/2addr v10, v15

    mul-float/2addr v10, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v15, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    int-to-float v15, v15

    add-float v5, v15, v10

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v15, 0x0

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v15, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    int-to-float v8, v15

    sub-float/2addr v8, v5

    if-eqz v15, :cond_25

    goto :goto_14

    :cond_25
    const/4 v15, 0x1

    :goto_14
    int-to-float v15, v15

    div-float/2addr v8, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v15

    int-to-float v15, v15

    cmpg-float v15, v15, v9

    if-gtz v15, :cond_3e

    invoke-virtual {v4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M()Z

    move-result v15

    if-eqz v15, :cond_35

    iget-object v9, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v9, :cond_27

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v12, 0x8

    if-eq v9, v12, :cond_27

    if-eqz v6, :cond_27

    int-to-float v9, v6

    add-float/2addr v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget-object v12, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    iget-object v12, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_26

    goto :goto_15

    :cond_26
    const/4 v6, 0x0

    :goto_15
    int-to-float v6, v6

    add-float/2addr v6, v9

    const/4 v9, 0x0

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    goto :goto_16

    :cond_27
    const/4 v9, 0x0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v6, :cond_28

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    invoke-static {v6}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T(Landroid/view/WindowInsets;)Z

    move-result v6

    if-nez v6, :cond_29

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_17

    :cond_28
    iget v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    if-eqz v6, :cond_2a

    invoke-virtual {v4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P()V

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v6, :cond_2a

    :cond_29
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_18

    :cond_2a
    :goto_17
    const/4 v9, 0x0

    :goto_18
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    if-eqz v6, :cond_2b

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_2b
    iget v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P:F

    cmpl-float v6, v6, v14

    if-eqz v6, :cond_34

    iput v14, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->P:F

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/view/WindowInsetsAnimationController;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v5, "AnimationController is already finished by App side"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_2c
    float-to-int v5, v5

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    if-eqz v6, :cond_2f

    iget-object v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    if-nez v7, :cond_2d

    goto :goto_1a

    :cond_2d
    invoke-interface {v6}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    if-eq v5, v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_19

    :cond_2e
    const/4 v6, 0x0

    :goto_19
    iget-boolean v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->e0:Z

    if-eq v6, v7, :cond_2f

    iput-boolean v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->e0:Z

    iget-object v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v12, v11, v14

    const-string v12, "hidden_semSetForceHideRoundedCorner"

    invoke-static {v9, v12, v11}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_30

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v11, v14

    invoke-static {v7, v9, v11}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2f
    :goto_1a
    const/4 v14, 0x0

    :cond_30
    :goto_1b
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-static {v6}, Lva/n;->A(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-static {v7}, Lva/n;->w(Landroid/content/Context;)I

    move-result v7

    iget-object v9, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->G:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "active_edge_area"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget v10, v6, Landroid/graphics/Insets;->left:I

    if-ne v7, v10, :cond_31

    if-nez v9, :cond_31

    move v6, v7

    move v7, v14

    goto :goto_1c

    :cond_31
    iget v6, v6, Landroid/graphics/Insets;->right:I

    if-ne v7, v6, :cond_33

    if-ne v9, v11, :cond_33

    move v6, v14

    goto :goto_1c

    :cond_32
    const/4 v11, 0x1

    :cond_33
    move v6, v14

    move v7, v6

    :goto_1c
    iget-object v9, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    float-to-int v10, v13

    invoke-static {v6, v10, v7, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v9, v5, v7, v8}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    goto/16 :goto_20

    :cond_34
    :goto_1d
    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_20

    :cond_35
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v14, 0x0

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->J:Landroid/view/View;

    const/4 v8, 0x0

    if-eqz v5, :cond_36

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_36
    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v5, :cond_37

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    :cond_37
    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v5, :cond_39

    int-to-float v5, v6

    if-eqz v12, :cond_38

    move v7, v9

    :cond_38
    div-float v6, v5, v7

    iget-object v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    :cond_39
    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v5, :cond_3a

    goto/16 :goto_20

    :cond_3a
    iget-object v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    iget-object v7, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->I:Landroid/view/View;

    if-nez v7, :cond_3b

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->I:Landroid/view/View;

    :cond_3b
    if-nez v6, :cond_3c

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    if-eqz v5, :cond_43

    invoke-virtual {v5}, Landroid/os/CancellationSignal;->cancel()V

    goto/16 :goto_20

    :cond_3c
    invoke-interface {v6}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    invoke-interface {v6}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-interface {v6}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    if-ne v5, v7, :cond_3d

    move v5, v11

    goto :goto_1e

    :cond_3d
    if-ne v5, v8, :cond_43

    move v5, v14

    :goto_1e
    invoke-interface {v6, v5}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    goto :goto_20

    :cond_3e
    const/4 v11, 0x1

    const/4 v14, 0x0

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    :cond_3f
    iget-boolean v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y:Z

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v5, :cond_40

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    :cond_40
    iget-boolean v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->Y:Z

    if-nez v5, :cond_43

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    if-eqz v5, :cond_43

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W:Landroid/view/WindowInsets;

    if-eqz v5, :cond_43

    invoke-virtual {v4}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U()Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    iget v6, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->O:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_42

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    goto :goto_1f

    :cond_41
    const/4 v6, 0x0

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_42

    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    :goto_1f
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    :cond_42
    iget-object v5, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->M:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    :cond_43
    :goto_20
    iget-object v4, v4, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/view/View;->willNotDraw()Z

    move-result v5

    if-nez v5, :cond_45

    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    goto :goto_21

    :cond_44
    move v14, v6

    move v11, v8

    :cond_45
    :goto_21
    add-int/lit8 v3, v3, 0x1

    move v8, v11

    move v6, v14

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_46
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lu3/c;

    invoke-direct {p0}, Lu3/c;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lu3/c;

    invoke-direct {p0}, Lu3/c;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lu3/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lu3/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->c(Landroid/view/ViewGroup$LayoutParams;)Lu3/c;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lu3/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lu3/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->c(Landroid/view/ViewGroup$LayoutParams;)Lu3/c;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Lr/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr/c;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->B:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    return-object v0
.end method

.method public getCanScroll()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    return p0
.end method

.method public getCurrentOrientation()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->K:I

    return p0
.end method

.method public getDownNestedPreScrollRange()I
    .locals 9

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lu3/c;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Lu3/c;->a:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v4

    :goto_1
    add-int/2addr v4, v7

    goto :goto_2

    :cond_2
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v4

    sub-int v4, v5, v4

    goto :goto_1

    :cond_3
    add-int v4, v7, v5

    :goto_2
    if-nez v0, :cond_4

    sget-object v6, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_4
    add-int/2addr v2, v4

    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v2

    int-to-float v3, v1

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-int v2, v2

    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->c:I

    return v0
.end method

.method public getDownNestedScrollRange()I
    .locals 9

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lu3/c;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    iget v5, v5, Lu3/c;->a:I

    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_7

    add-int/2addr v3, v7

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    if-eqz v0, :cond_5

    instance-of v0, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_5

    check-cast v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    iget-object v2, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_3

    :cond_5
    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    :goto_3
    sub-int/2addr v3, v0

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->d:I

    return v0
.end method

.method public final getImmersiveTopInset()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o0:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getIsMouse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->R:Z

    return p0
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    return p0
.end method

.method public getMaterialShapeBackground()Ll4/h;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Ll4/h;

    if-eqz v0, :cond_0

    check-cast p0, Ll4/h;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getPendingAction()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    return p0
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final getTopInset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->g:Landroidx/core/view/c2;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/c2;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lu3/c;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Lu3/c;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_5

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    if-nez v2, :cond_2

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v6, v3

    :cond_2
    move v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    invoke-static {v0, v2, v1, v3}, Landroidx/activity/b;->a(IIII)I

    move-result v3

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    return v0
.end method

.method public getUpNestedPreScrollRange()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method public final h(ZZZ)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    if-eqz p1, :cond_1

    const/16 v1, 0x200

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_1

    :cond_2
    move p2, p1

    :goto_1
    or-int/2addr p2, v1

    if-eqz p3, :cond_3

    const/16 p1, 0x8

    :cond_3
    or-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final i(ZZ)Z
    .locals 2

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eq p2, p1, :cond_5

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p2, p2, Ll4/h;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->p:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz p1, :cond_1

    :goto_1
    move v0, p2

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->l(FF)V

    goto :goto_3

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->A:F

    if-eqz p1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_4
    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_6

    :cond_5
    const/4 p0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final k()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final l(FF)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->v:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->w:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->t:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final m()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v2, v1, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal collapsedHeight/ oldCollapsedHeight :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " newCollapsedHeight :"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppBarLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->C:F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->n()V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getWindowHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeightPercent()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    const-string v3, "AppBarLayout"

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "update InternalCollapsedHeight from updateInternalHeight() : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->C:F

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[calculateInternalHeight] orientation:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/material/appbar/AppBarLayout;->Q:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", density:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", windowHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", heightDp:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->F:Z

    iget-boolean v4, p0, Lcom/google/android/material/appbar/AppBarLayout;->G:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_4

    const-string v5, ", [1]mCustomHeightProportion : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/material/appbar/AppBarLayout;->E:F

    goto :goto_0

    :cond_3
    const-string v5, ", [3]mHeightProportion : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v1, v2

    if-eqz v4, :cond_5

    if-eqz v4, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lr/f;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[updateInternalHeight] mUseCustomHeight : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mSetCustomProportion : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSetCustomHeight : false, mIsImmersiveScroll : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->l0:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mIsSetByUser : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m0:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mImmersiveTopInset : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->o0:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->V:Z

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Ll4/h;

    if-eqz v1, :cond_0

    check-cast v0, Ll4/h;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/annotation/i0;->E(Landroid/view/View;Ll4/h;)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->Q:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lva/n;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0502f4

    goto :goto_1

    :cond_3
    const v0, 0x7f0502f3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->L:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->K:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_6

    :cond_4
    const v0, 0x7f060313

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->H:Z

    if-nez v2, :cond_5

    iget-boolean v4, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    if-nez v4, :cond_5

    const-string v2, "AppBarLayout"

    const-string v4, "Update bottom padding"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0603b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    invoke-virtual {p0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    add-int/2addr v0, v2

    :goto_3
    int-to-float v0, v0

    iput-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->C:F

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->O:I

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->P:Z

    if-nez v2, :cond_6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_3

    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->F:Z

    if-nez v0, :cond_7

    sget-object v0, Lv/p;->a:Ljava/lang/ThreadLocal;

    const v0, 0x7f060332

    invoke-static {v1, v0}, Lv/k;->a(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lv/p;->a:Ljava/lang/ThreadLocal;

    const v1, 0x7f060337

    invoke-static {v0, v1}, Lv/k;->a(Landroid/content/res/Resources;I)F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->n()V

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->K:I

    if-ne v0, v1, :cond_8

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v1, v3, v1}, Lcom/google/android/material/appbar/AppBarLayout;->h(ZZZ)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {p0, v3, v3, v1}, Lcom/google/android/material/appbar/AppBarLayout;->h(ZZZ)V

    :goto_6
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->K:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->L:I

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:[I

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->x:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eqz v1, :cond_1

    const v2, 0x7f030448

    goto :goto_0

    :cond_1
    const v2, -0x7f030448

    :goto_0
    const/4 v3, 0x0

    aput v2, v0, v3

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eqz v2, :cond_2

    const v2, 0x7f030449

    goto :goto_1

    :cond_2
    const v2, -0x7f030449

    :goto_1
    const/4 v3, 0x1

    aput v2, v0, v3

    if-eqz v1, :cond_3

    const v2, 0x7f030442

    goto :goto_2

    :cond_3
    const v2, -0x7f030442

    :goto_2
    const/4 v3, 0x2

    aput v2, v0, v3

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    if-eqz p0, :cond_4

    const p0, 0x7f030441

    goto :goto_3

    :cond_4
    const p0, -0x7f030441

    :goto_3
    const/4 v1, 0x3

    aput p0, v0, v1

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->V:Z

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getImmBehavior()Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "SeslImmersiveScrollBehavior"

    const-string v3, "DetachedFromWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V:Lu3/k;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsController;

    invoke-interface {v3, v2}, Landroid/view/WindowInsetsController;->removeOnControllableInsetsChangedListener(Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;)V

    iput-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->V:Lu3/k;

    :cond_0
    iput-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->T:Landroid/view/WindowInsetsAnimationController;

    iput-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->S:Landroid/os/CancellationSignal;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Z

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_0
    if-ltz p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move p4, p1

    :goto_1
    if-ge p4, p3, :cond_2

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lu3/c;

    iget-object p5, p5, Lu3/c;->c:Landroid/view/animation/Interpolator;

    if-eqz p5, :cond_1

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p5

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    if-nez p3, :cond_9

    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-nez p3, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move p4, p1

    :goto_3
    if-ge p4, p3, :cond_6

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lu3/c;

    iget p5, p5, Lu3/c;->a:I

    and-int/lit8 v0, p5, 0x1

    if-ne v0, p2, :cond_4

    and-int/lit8 p5, p5, 0xa

    if-eqz p5, :cond_4

    move p5, p2

    goto :goto_4

    :cond_4
    move p5, p1

    :goto_4
    if-eqz p5, :cond_5

    move p3, p2

    goto :goto_5

    :cond_5
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_6
    move p3, p1

    :goto_5
    if-eqz p3, :cond_7

    goto :goto_6

    :cond_7
    move p2, p1

    :cond_8
    :goto_6
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    if-eq p1, p2, :cond_9

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->n()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p1, p2}, Lv9/a;->k(III)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()V

    return-void
.end method

.method public setCanScroll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n0:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->e()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Ll4/h;

    if-eqz v0, :cond_0

    check-cast p0, Ll4/h;

    invoke-virtual {p0, p1}, Ll4/h;->j(F)V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->h(ZZZ)V

    return-void
.end method

.method public setImmersiveTopInset(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->o0:I

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    return-void
.end method

.method public setLiftOnScrollTargetView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->m:I

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setLiftableOverrideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Ll4/h;

    if-eqz v0, :cond_2

    check-cast p1, Ll4/h;

    iget p1, p1, Ll4/h;->x:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlinx/coroutines/a0;->o(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->z:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v2

    invoke-static {p1, v2}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    if-lez p1, :cond_7

    move v0, v1

    :cond_7
    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/i0;->k(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTargetElevation(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/reflect/x;->j(Landroid/view/View;F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->y:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
