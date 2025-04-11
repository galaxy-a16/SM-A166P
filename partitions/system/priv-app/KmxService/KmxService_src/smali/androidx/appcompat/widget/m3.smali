.class public abstract Landroidx/appcompat/widget/m3;
.super Landroidx/appcompat/widget/SeslProgressBar;
.source "SourceFile"


# instance fields
.field public A0:Z

.field public B0:Landroid/graphics/drawable/Drawable;

.field public C0:Landroid/content/res/ColorStateList;

.field public D0:Landroid/graphics/PorterDuff$Mode;

.field public E0:Z

.field public F0:Z

.field public G0:I

.field public H0:Z

.field public final I0:Z

.field public J0:I

.field public final K0:F

.field public final L0:I

.field public M0:F

.field public N0:Z

.field public O0:Ljava/util/List;

.field public final P0:Ljava/util/ArrayList;

.field public final Q0:Landroid/graphics/Rect;

.field public R0:I

.field public S0:Landroid/graphics/drawable/Drawable;

.field public T0:Landroid/graphics/drawable/Drawable;

.field public U0:F

.field public V0:I

.field public W0:Landroid/graphics/drawable/Drawable;

.field public X0:Landroid/content/res/ColorStateList;

.field public final Y0:Landroid/content/res/ColorStateList;

.field public final Z0:Landroid/content/res/ColorStateList;

.field public a1:Landroid/content/res/ColorStateList;

.field public b1:Landroid/content/res/ColorStateList;

.field public c1:Landroid/content/res/ColorStateList;

.field public d1:Z

.field public e1:Landroid/animation/AnimatorSet;

.field public f1:Z

.field public final g1:Z

.field public final h1:Z

.field public i1:Z

.field public j1:Z

.field public final k1:I

.field public final l1:I

.field public final m1:I

.field public final n1:I

.field public final o1:I

.field public final p1:I

.field public q1:Z

.field public r1:Landroid/animation/ValueAnimator;

.field public s1:F

.field public final v0:Landroid/graphics/Rect;

.field public w0:Landroid/graphics/drawable/Drawable;

.field public x0:Landroid/content/res/ColorStateList;

.field public y0:Landroid/graphics/PorterDuff$Mode;

.field public z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const v0, 0x7f0303da

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->v0:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->z0:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->A0:Z

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->C0:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->E0:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->F0:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->I0:Z

    iput v1, p0, Landroidx/appcompat/widget/m3;->J0:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/m3;->O0:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/m3;->P0:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroidx/appcompat/widget/m3;->Q0:Landroid/graphics/Rect;

    const/4 v3, -0x1

    iput v3, p0, Landroidx/appcompat/widget/m3;->V0:I

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->d1:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->f1:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->i1:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->j1:Z

    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->q1:Z

    const/4 v4, 0x0

    iput v4, p0, Landroidx/appcompat/widget/m3;->s1:F

    sget-object v7, Lb/a;->g:[I

    invoke-virtual {p1, p2, v7, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v10, 0x7f0303da

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, v0

    :try_start_0
    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/m3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v5, v6}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->A0:Z

    :cond_0
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->z0:Z

    :cond_1
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/m3;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v5, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v5}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->F0:Z

    :cond_2
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/m3;->C0:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->E0:Z

    :cond_3
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/appcompat/widget/m3;->H0:Z

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/appcompat/widget/m3;->h1:Z

    const v5, 0x7f060469

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->k1:I

    const v5, 0x7f06046a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->l1:I

    const v5, 0x7f060463

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->m1:I

    const v5, 0x7f060464

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->n1:I

    const v5, 0x7f060467

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->o1:I

    const v5, 0x7f060462

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->p1:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getThumbOffset()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/appcompat/widget/m3;->setThumbOffset(I)V

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    :cond_4
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lb/a;->j:[I

    invoke-virtual {p1, p2, v5, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v5, 0x3f000000    # 0.5f

    :try_start_1
    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/m3;->K0:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_5
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Landroidx/appcompat/widget/m3;->K0:F

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->v()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->w()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/m3;->L0:I

    invoke-static {p1}, Lva/n;->z(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->g1:Z

    const p2, 0x7f0503f9

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->Z0:Landroid/content/res/ColorStateList;

    const p2, 0x7f0503fa

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->Y0:Landroid/content/res/ColorStateList;

    const p2, 0x7f0503f8

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_6

    const p2, 0x7f050401

    goto :goto_1

    :cond_6
    const p2, 0x7f050400

    :goto_1
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_7

    const p2, 0x7f0503ff

    goto :goto_2

    :cond_7
    const p2, 0x7f0503fe

    :goto_2
    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_9

    new-array p2, v3, [[I

    new-array v5, v1, [I

    const v6, 0x101009e

    aput v6, v5, v2

    aput-object v5, p2, v2

    new-array v5, v1, [I

    const v6, -0x101009e

    aput v6, v5, v2

    aput-object v5, p2, v1

    new-array v3, v3, [I

    const v5, 0x7f050476

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v2

    if-eqz p1, :cond_8

    const p1, 0x7f0503fc

    goto :goto_3

    :cond_8
    const p1, 0x7f0503fb

    :goto_3
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    aput p1, v3, v1

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    :cond_9
    const p1, 0x7f040009

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->z()V

    :cond_a
    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->setMode(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->A()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private getHoverPopupType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getScale()F
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    int-to-float v0, v1

    div-float/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setHoverPopupGravity(I)V
    .locals 0

    return-void
.end method

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->z0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->v()V

    return-void
.end method

.method public static u(Landroidx/appcompat/widget/m3;I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method private static x(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p0, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method public final A()V
    .locals 9

    new-instance v0, Landroidx/appcompat/widget/j3;

    iget v1, p0, Landroidx/appcompat/widget/m3;->k1:I

    int-to-float v2, v1

    iget v3, p0, Landroidx/appcompat/widget/m3;->l1:I

    int-to-float v4, v3

    iget-object v5, p0, Landroidx/appcompat/widget/m3;->Z0:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v2, v4, v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v2, Landroidx/appcompat/widget/j3;

    int-to-float v4, v1

    int-to-float v5, v3

    iget-object v6, p0, Landroidx/appcompat/widget/m3;->Y0:Landroid/content/res/ColorStateList;

    invoke-direct {v2, p0, v4, v5, v6}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v4, Landroidx/appcompat/widget/j3;

    int-to-float v1, v1

    int-to-float v5, v3

    iget-object v6, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-direct {v4, p0, v1, v5, v6}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v1, Le/c;

    new-instance v5, Landroidx/appcompat/widget/l3;

    iget-object v6, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    iget v7, p0, Landroidx/appcompat/widget/m3;->o1:I

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v6, v8}, Landroidx/appcompat/widget/l3;-><init>(Landroidx/appcompat/widget/m3;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v1, v5}, Le/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v8

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v6, 0x13

    const/4 v7, 0x1

    invoke-direct {v0, v2, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v5, v7

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v4, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v2, 0x2

    aput-object v0, v5, v2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/high16 v4, 0x1020000

    invoke-virtual {v0, v8, v4}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v4, 0x102000f

    invoke-virtual {v0, v7, v4}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v4, 0x102000d

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/m3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07019f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v0

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/SeslProgressBar;->setMaxHeight(I)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/m3;->N0:Z

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v3

    aput v3, v2, v0

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    sget-object v2, Lc/a;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/appcompat/widget/g3;

    invoke-direct {v2, p0, v0}, Landroidx/appcompat/widget/g3;-><init>(Landroidx/appcompat/widget/m3;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final C(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 7

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    iget v1, p0, Landroidx/appcompat/widget/m3;->s1:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    iget v2, p0, Landroidx/appcompat/widget/m3;->G0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/high16 p3, -0x80000000

    if-ne p4, p3, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    add-int p3, p4, v1

    :goto_0
    iget v1, p0, Landroidx/appcompat/widget/m3;->s1:F

    float-to-int v1, v1

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v3, :cond_2

    sub-int p1, v2, p1

    :cond_2
    add-int/2addr v1, p1

    add-int p1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/m3;->G0:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int v5, v1, v3

    add-int v6, p4, v4

    add-int/2addr v3, p1

    add-int/2addr v4, p3

    invoke-static {v2, v5, v6, v3, v4}, Lx/b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_3
    invoke-virtual {p2, v1, p4, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->H()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result p2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/appcompat/widget/m3;->R0:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->I()V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/m3;->D(ILandroid/graphics/drawable/Drawable;FI)V

    return-void
.end method

.method public final D(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v2, p0, Landroidx/appcompat/widget/m3;->G0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/high16 p3, -0x80000000

    if-ne p4, p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    add-int p3, p4, v0

    :goto_0
    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/m3;->G0:I

    sub-int/2addr v4, v5

    add-int v5, p4, v3

    add-int v6, v2, v4

    add-int/2addr v3, p3

    add-int/2addr v4, v1

    invoke-static {p1, v5, v6, v3, v4}, Lx/b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    invoke-virtual {p2, p4, v2, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/widget/m3;->R0:I

    return-void
.end method

.method public final E(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-boolean v0, v1, Landroidx/appcompat/widget/m3;->N0:Z

    iget-object v2, v1, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, v1, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    if-eqz v1, :cond_2

    check-cast v1, Ld/s0;

    iget-object v1, v1, Ld/s0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/preference/SeekBarPreference;

    iput-boolean v0, v1, Landroidx/preference/SeekBarPreference;->u:Z

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->F(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void
.end method

.method public final F(Landroid/view/MotionEvent;)V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    sub-int v1, v7, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v1, v8

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v8

    if-ge v0, v8, :cond_4

    :goto_0
    move v1, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v8

    sub-int/2addr v1, v8

    if-le v0, v1, :cond_5

    :goto_1
    move v1, v6

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    :goto_2
    int-to-float v7, v7

    div-float/2addr v1, v7

    :goto_3
    iget-boolean v7, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v7, :cond_7

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v7

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v8, v6, v7

    cmpl-float v9, v1, v5

    if-lez v9, :cond_6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_6

    rem-float v6, v1, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_6

    sub-float/2addr v8, v6

    add-float/2addr v1, v8

    :cond_6
    mul-float/2addr v1, v7

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v4

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v8, v6, v7

    cmpl-float v9, v1, v5

    if-lez v9, :cond_8

    cmpg-float v6, v1, v6

    if-gez v6, :cond_8

    rem-float v6, v1, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_8

    sub-float/2addr v8, v6

    add-float/2addr v1, v8

    :cond_8
    mul-float/2addr v1, v7

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v4

    :goto_4
    int-to-float v4, v4

    add-float/2addr v1, v4

    add-float/2addr v1, v5

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4, v0, p1}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v3, v2}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    return-void

    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    if-ge p1, v8, :cond_b

    move v0, v5

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v0, v8

    if-le p1, v0, :cond_c

    move v0, v6

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_6
    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v1, :cond_e

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float v8, v6, v1

    cmpl-float v9, v0, v5

    if-lez v9, :cond_d

    cmpg-float v6, v0, v6

    if-gez v6, :cond_d

    rem-float v6, v0, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_d

    sub-float/2addr v8, v6

    add-float/2addr v0, v8

    :cond_d
    mul-float/2addr v0, v1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v1

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v1, v1

    div-float v8, v6, v1

    cmpl-float v9, v0, v5

    if-lez v9, :cond_f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_f

    rem-float v6, v0, v8

    div-float v4, v8, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_f

    sub-float/2addr v8, v6

    add-float/2addr v0, v8

    :cond_f
    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v1

    :goto_7
    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    int-to-float v1, v7

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v4, v1, p1}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v3, v2}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    return-void
.end method

.method public final G()V
    .locals 6

    iget v0, p0, Landroidx/appcompat/widget/m3;->V0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    invoke-static {v0, v4}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->f1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_3

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Landroidx/appcompat/widget/m3;->V0:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v0

    iget v4, p0, Landroidx/appcompat/widget/m3;->V0:I

    if-le v0, v4, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/m3;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/m3;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/appcompat/widget/m3;->V0:I

    if-eq v0, v3, :cond_7

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final H()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->O0:Ljava/util/List;

    invoke-super {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/m3;->P0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->Q0:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->O0:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-super {p0, v1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final I()V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->S0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/m3;->R0:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroidx/appcompat/widget/m3;->R0:I

    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->T0:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget p0, p0, Landroidx/appcompat/widget/SeslProgressBar;->b:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v5, p0, v4

    div-float/2addr v5, v3

    sub-float v5, v0, v5

    float-to-int v5, v5

    int-to-float v1, v1

    div-float/2addr v1, v3

    const/high16 v6, 0x41b00000    # 22.0f

    mul-float v7, p0, v6

    div-float/2addr v7, v3

    sub-float v7, v1, v7

    float-to-int v7, v7

    mul-float/2addr v4, p0

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    mul-float/2addr p0, v6

    div-float/2addr p0, v3

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v2, v5, v7, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method public final J(II)V
    .locals 8

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    if-le v4, v3, :cond_2

    sub-int/2addr p2, v4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v3

    div-int/lit8 p2, p2, 0x2

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    move v7, v4

    move v4, p2

    move p2, v7

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroidx/appcompat/widget/m3;->getScale()F

    move-result v0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroidx/appcompat/widget/m3;->C(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->I()V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_3
    if-le v4, v3, :cond_7

    sub-int v5, p1, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    goto :goto_4

    :cond_7
    sub-int v5, p1, v3

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    move v4, v5

    move v5, v3

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr p1, v4

    invoke-virtual {v0, v4, v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroidx/appcompat/widget/m3;->getScale()F

    move-result p1

    invoke-virtual {p0, p2, v1, p1, v5}, Landroidx/appcompat/widget/m3;->D(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_9
    return-void
.end method

.method public final K(I)V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m3;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m3;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/appcompat/widget/m3;->K0:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->z0:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->G()V

    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->i1:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->v0:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/m3;->H0:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Landroidx/appcompat/widget/m3;->G0:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget v0, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->y(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->y(Landroid/graphics/Canvas;)V

    :goto_0
    iget v0, p0, Landroidx/appcompat/widget/m3;->V0:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->n0:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v2, :cond_4

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/m3;->V0:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v3

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/m3;->V0:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v3

    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    goto :goto_5

    :cond_5
    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_6
    :goto_5
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->Z0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "stack dump"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SeslAbsSeekBar"

    const-string v1, "Stack:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class p0, Landroid/widget/AbsSeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyProgressIncrement()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/m3;->J0:I

    return p0
.end method

.method public declared-synchronized getMax()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMin()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSplitTrack()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/m3;->H0:Z

    return p0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getThumbHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getThumbOffset()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/m3;->G0:I

    return p0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->C0:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public j(FIZ)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->e1:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->e1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->j(FIZ)V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v1, v0, p1, v2}, Landroidx/appcompat/widget/m3;->C(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    if-eqz p3, :cond_2

    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    iget-boolean p1, p0, Landroidx/appcompat/widget/m3;->h1:Z

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    if-eqz p1, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-ne p1, p3, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result p1

    if-eq p2, p1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result p1

    if-ne p2, p1, :cond_5

    :cond_4
    :goto_0
    const/16 p1, 0x29

    invoke-static {p1}, Lv4/b;->U(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method public final k(FI)V
    .locals 2

    const v0, 0x102000d

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, p2, p1, v1}, Landroidx/appcompat/widget/m3;->C(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final m(IZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/SeslProgressBar;->m(IZZ)Z

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->K(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->G()V

    return p2
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->S0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->T0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/m3;->G0:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroidx/appcompat/widget/m3;->G0:I

    sub-int/2addr v2, v3

    :goto_1
    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result p0

    if-ge v0, p0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroidx/appcompat/widget/m3;->J0:I

    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v2, 0x3

    const/high16 v3, 0x447a0000    # 1000.0f

    const/16 v4, 0x51

    const/16 v5, 0x46

    const/16 v6, 0x45

    const/4 v7, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x15

    if-eq p1, v1, :cond_1

    const/16 v1, 0x16

    if-eq p1, v1, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    goto :goto_3

    :cond_1
    neg-int v0, v0

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    neg-int v0, v0

    :cond_3
    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0, v0, v7, v7}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v7

    :cond_5
    :goto_1
    const/16 v1, 0x13

    if-eq p1, v1, :cond_7

    const/16 v1, 0x14

    if-eq p1, v1, :cond_6

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_3

    :cond_6
    neg-int v0, v0

    :cond_7
    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    neg-int v0, v0

    :cond_8
    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    invoke-virtual {p0, v0, v7, v7}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    return v7

    :cond_a
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_0
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_2
    iget v3, p0, Landroidx/appcompat/widget/SeslProgressBar;->l:I

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->m:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->n:I

    iget v5, p0, Landroidx/appcompat/widget/SeslProgressBar;->p:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_4
    move v0, v1

    move v3, v0

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v3, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Landroidx/appcompat/widget/m3;->getScale()F

    move-result v1

    const/high16 v2, -0x80000000

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/appcompat/widget/m3;->C(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m3;->s(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m3;->J(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->I0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->d1:Z

    iget-boolean p1, p0, Landroidx/appcompat/widget/m3;->N0:Z

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/m3;->d1:Z

    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->N0:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->F(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    iget v6, p0, Landroidx/appcompat/widget/m3;->L0:I

    if-eq v4, v5, :cond_4

    if-eq v4, v3, :cond_4

    iget v4, p0, Landroidx/appcompat/widget/m3;->M0:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v6

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_e

    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    if-eq v0, v5, :cond_5

    if-ne v0, v3, :cond_10

    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/m3;->U0:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->d1:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->d1:Z

    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->N0:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->F(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->B()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_8
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-boolean v2, v0, Landroidx/appcompat/widget/m3;->N0:Z

    iget-object v1, v0, Landroidx/appcompat/widget/m3;->r1:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget-object v0, v0, Landroidx/appcompat/widget/SeslSeekBar;->u1:Landroidx/appcompat/widget/x3;

    if-eqz v0, :cond_a

    check-cast v0, Ld/s0;

    iget-object v0, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/SeekBarPreference;

    iput-boolean v2, v0, Landroidx/preference/SeekBarPreference;->u:Z

    :cond_a
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->F(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->B()V

    :cond_b
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4

    :cond_c
    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->d1:Z

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_f

    if-eq v0, v3, :cond_f

    if-eqz v0, :cond_f

    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const-string v4, "hidden_isInScrollingContainer"

    invoke-static {v3, v4, v0}, Lh3/a;->r(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_d

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_d

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->E(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_f
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/m3;->M0:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/m3;->U0:F

    :cond_10
    :goto_4
    return v2

    :cond_11
    :goto_5
    return v1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/high16 v3, 0x447a0000    # 1000.0f

    const/16 v4, 0x2000

    if-eq p1, v0, :cond_8

    if-eq p1, v4, :cond_8

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-nez p1, :cond_4

    return v2

    :cond_4
    if-eqz p2, :cond_7

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iget-boolean p2, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz p2, :cond_6

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_6
    float-to-int p1, p1

    :goto_1
    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_8
    monitor-enter p0

    :try_start_1
    iget-boolean p2, p0, Landroidx/appcompat/widget/SeslProgressBar;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    if-nez p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    move p2, v1

    goto :goto_3

    :cond_9
    move p2, v2

    :goto_3
    if-nez p2, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v4, :cond_b

    neg-int p2, p2

    :cond_b
    iget-boolean p1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    int-to-float p1, p1

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    :goto_4
    invoke-virtual {p0, p1, v1, v1}, Landroidx/appcompat/widget/m3;->m(IZZ)Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final s(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->s(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/m3;->J(II)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/appcompat/widget/m3;->V0:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/m3;->J0:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/appcompat/widget/m3;->J0:I

    if-eqz v0, :cond_1

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_1
    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/appcompat/widget/m3;->J0:I

    if-eqz v0, :cond_1

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    :cond_1
    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/m3;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v0, p1

    iget v1, v6, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    if-ne v1, v0, :cond_0

    iget-boolean v1, v6, Landroidx/appcompat/widget/m3;->j1:Z

    if-eqz v1, :cond_0

    const-string v0, "SeslAbsSeekBar"

    const-string v1, "Seekbar mode is already set. Do not call this method redundant"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMode(I)V

    const/4 v1, 0x0

    iput v1, v6, Landroidx/appcompat/widget/m3;->s1:F

    const/4 v7, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v7, :cond_8

    const/4 v8, 0x3

    if-eq v0, v8, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget-object v9, v6, Landroidx/appcompat/widget/m3;->Y0:Landroid/content/res/ColorStateList;

    iget-object v4, v6, Landroidx/appcompat/widget/m3;->Z0:Landroid/content/res/ColorStateList;

    const v1, 0x7f06045f

    const/4 v2, 0x5

    const v11, 0x102000d

    const v12, 0x102000f

    const/high16 v13, 0x1020000

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/m3;->s1:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    new-instance v16, Landroidx/appcompat/widget/j3;

    iget v0, v6, Landroidx/appcompat/widget/m3;->k1:I

    int-to-float v5, v0

    iget v3, v6, Landroidx/appcompat/widget/m3;->l1:I

    int-to-float v2, v3

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v20, v2

    move v2, v5

    move/from16 v21, v3

    move/from16 v3, v20

    move/from16 v22, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v5, Landroidx/appcompat/widget/j3;

    move-object v0, v5

    move/from16 v2, v22

    move-object v4, v9

    move-object v9, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v5, Landroidx/appcompat/widget/j3;

    iget-object v4, v6, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    move-object v0, v5

    move-object v10, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;Z)V

    new-instance v0, Le/c;

    new-instance v1, Landroidx/appcompat/widget/l3;

    iget-object v2, v6, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    iget v3, v6, Landroidx/appcompat/widget/m3;->o1:I

    invoke-direct {v1, v6, v3, v2, v7}, Landroidx/appcompat/widget/l3;-><init>(Landroidx/appcompat/widget/m3;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v0, v1}, Le/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v16, v1, v15

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const/16 v3, 0x51

    invoke-direct {v2, v9, v3, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v2, v10, v3, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v2, v1, v14

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    invoke-virtual {v2, v15, v13}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v2, v7, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v2, v14, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/m3;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07019f

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxWidth()I

    move-result v0

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setMaxWidth(I)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Landroidx/appcompat/widget/j3;

    iget v2, v6, Landroidx/appcompat/widget/m3;->m1:I

    int-to-float v2, v2

    iget v3, v6, Landroidx/appcompat/widget/m3;->n1:I

    int-to-float v5, v3

    invoke-direct {v0, v6, v2, v5, v4}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v4, Landroidx/appcompat/widget/j3;

    invoke-direct {v4, v6, v2, v5, v9}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v9, Landroidx/appcompat/widget/j3;

    iget-object v10, v6, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-direct {v9, v6, v2, v5, v10}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    new-instance v2, Le/c;

    new-instance v5, Landroidx/appcompat/widget/l3;

    iget-object v10, v6, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    iget v1, v6, Landroidx/appcompat/widget/m3;->p1:I

    invoke-direct {v5, v6, v1, v10, v15}, Landroidx/appcompat/widget/l3;-><init>(Landroidx/appcompat/widget/m3;ILandroid/content/res/ColorStateList;Z)V

    invoke-direct {v2, v5}, Le/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v15

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v5, 0x13

    invoke-direct {v0, v4, v5, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v1, v7

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v0, v9, v5, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v1, v14

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    invoke-virtual {v0, v15, v13}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v0, v7, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v0, v14, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/m3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07019f

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v0

    if-le v0, v3, :cond_4

    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/SeslProgressBar;->setMaxHeight(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06045f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, v6, Landroidx/appcompat/widget/m3;->s1:F

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Landroidx/appcompat/widget/m3;->S0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Landroidx/appcompat/widget/m3;->T0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/m3;->I()V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, v6, Landroidx/appcompat/widget/m3;->g1:Z

    if-eqz v1, :cond_7

    const v1, 0x7f070198

    goto :goto_0

    :cond_7
    const v1, 0x7f070197

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07019e

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/m3;->getProgress()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->K(I)V

    goto :goto_2

    :cond_9
    iget-object v0, v6, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v6, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/m3;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    iput-boolean v7, v6, Landroidx/appcompat/widget/m3;->j1:Z

    return-void
.end method

.method public setOverlapBackgroundForDualColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->c1:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->f1:Z

    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 8

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/m3;->i1:Z

    iput p1, p0, Landroidx/appcompat/widget/m3;->V0:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/m3;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    new-instance v0, Landroidx/appcompat/widget/j3;

    iget v1, p0, Landroidx/appcompat/widget/m3;->m1:I

    int-to-float v1, v1

    iget v2, p0, Landroidx/appcompat/widget/m3;->n1:I

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Landroidx/appcompat/widget/m3;->l1:I

    iget v3, p0, Landroidx/appcompat/widget/m3;->k1:I

    if-ne v0, v1, :cond_3

    new-instance v6, Landroidx/appcompat/widget/j3;

    int-to-float v3, v3

    int-to-float v4, v2

    iget-object v5, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;Z)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v6, Landroidx/appcompat/widget/j3;

    int-to-float v3, v3

    int-to-float v4, v2

    iget-object v5, p0, Landroidx/appcompat/widget/m3;->b1:Landroid/content/res/ColorStateList;

    const/4 v7, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/j3;-><init>(Landroidx/appcompat/widget/m3;FFLandroid/content/res/ColorStateList;Z)V

    :goto_0
    iput-object v6, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/appcompat/widget/m3;->W0:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->G()V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->X0:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSeamless(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->q1:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_0

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getSecondaryProgress()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getSecondaryProgress()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    invoke-super {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getMin()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setMin(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->q1:Z

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->H0:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSystemGestureExclusionRects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->O0:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->H()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rects must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    :cond_1
    iget v1, p0, Landroidx/appcompat/widget/SeslProgressBar;->a:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_2
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroidx/appcompat/widget/m3;->G0:I

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->v()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/m3;->J(II)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/m3;->G0:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 1

    invoke-static {p1}, Landroidx/appcompat/widget/m3;->x(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/m3;->z0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->v()V

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->a1:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->A0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->v()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lx/c;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->w()V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->C0:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->E0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->w()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/m3;->F0:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->w()V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->z0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->A0:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->z0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->x0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->A0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->y0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->w0:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final w()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->E0:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->F0:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/m3;->E0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->C0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/m3;->F0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/m3;->D0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final y(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/m3;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroidx/appcompat/widget/m3;->s1:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v4, p0, Landroidx/appcompat/widget/m3;->s1:F

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    iget-object v4, p0, Landroidx/appcompat/widget/m3;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public final z()V
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/m3;->e1:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x190

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    rem-int/lit8 v4, v3, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [I

    if-eqz v4, :cond_1

    aput v2, v6, v2

    aput v1, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto :goto_2

    :cond_1
    aput v1, v6, v2

    aput v2, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    :goto_2
    const/16 v7, 0x3e

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Landroidx/appcompat/widget/g3;

    invoke-direct {v7, p0, v5}, Landroidx/appcompat/widget/g3;-><init>(Landroidx/appcompat/widget/m3;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    int-to-double v4, v1

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/appcompat/widget/m3;->e1:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method
