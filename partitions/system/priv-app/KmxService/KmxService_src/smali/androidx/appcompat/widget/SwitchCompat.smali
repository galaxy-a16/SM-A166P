.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field public static final s0:[I


# instance fields
.field public final A:Landroid/view/VelocityTracker;

.field public B:F

.field public C:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public K:I

.field public final L:Landroid/text/TextPaint;

.field public N:Landroid/content/res/ColorStateList;

.field public O:Landroid/text/StaticLayout;

.field public P:Landroid/text/StaticLayout;

.field public Q:Lf/a;

.field public R:Landroidx/appcompat/widget/f4;

.field public T:Landroidx/appcompat/widget/c0;

.field public V:Landroidx/appcompat/widget/e4;

.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public final l0:Landroid/graphics/Rect;

.field public m:I

.field public m0:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public n0:Landroid/graphics/drawable/Drawable;

.field public o0:Ljava/lang/String;

.field public p:Ljava/lang/CharSequence;

.field public p0:Ljava/lang/String;

.field public q:Ljava/lang/CharSequence;

.field public final q0:Landroid/view/animation/PathInterpolator;

.field public r0:I

.field public t:Ljava/lang/CharSequence;

.field public u:Ljava/lang/CharSequence;

.field public v:Z

.field public w:I

.field public final x:I

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/c4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/c4;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->s0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const v10, 0x7f030468

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v11, 0x0

    iput-object v11, v7, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/content/res/ColorStateList;

    iput-object v11, v7, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 v12, 0x0

    iput-boolean v12, v7, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    iput-boolean v12, v7, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    iput-object v11, v7, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/content/res/ColorStateList;

    iput-object v11, v7, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v12, v7, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    iput-boolean v12, v7, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->A:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    iput v12, v7, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/appcompat/widget/g4;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v13, v7, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v13, Landroid/text/TextPaint;->density:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0304c1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    sget-object v2, Lb/a;->z:[I

    new-instance v15, Landroidx/appcompat/widget/b3;

    invoke-virtual {v8, v9, v2, v5, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-direct {v15, v8, v4}, Landroidx/appcompat/widget/b3;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/4 v6, 0x0

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/u0;->d(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Landroidx/appcompat/widget/b3;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    const/16 v1, 0xc

    invoke-virtual {v15, v1}, Landroidx/appcompat/widget/b3;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v7, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iput-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    iget-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, v7, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-virtual {v15, v12}, Landroidx/appcompat/widget/b3;->k(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v14}, Landroidx/appcompat/widget/b3;->k(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-virtual {v15, v1, v14}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v2

    iput-boolean v2, v7, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    const/16 v2, 0x9

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/SwitchCompat;->k:I

    const/4 v2, 0x5

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/SwitchCompat;->l:I

    const/4 v2, 0x7

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/SwitchCompat;->m:I

    const/4 v2, 0x4

    invoke-virtual {v15, v2, v12}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v2

    iput-boolean v2, v7, Landroidx/appcompat/widget/SwitchCompat;->n:Z

    const/16 v2, 0xa

    invoke-virtual {v15, v2}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object v2, v7, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/content/res/ColorStateList;

    iput-boolean v14, v7, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    :cond_5
    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v15, v2, v3}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result v2

    invoke-static {v2, v11}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iget-object v4, v7, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    if-eq v4, v2, :cond_6

    iput-object v2, v7, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v14, v7, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    :cond_6
    iget-boolean v2, v7, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    if-nez v2, :cond_7

    iget-boolean v2, v7, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-eqz v2, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    :cond_8
    const/16 v2, 0xd

    invoke-virtual {v15, v2}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_9

    iput-object v2, v7, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/content/res/ColorStateList;

    iput-boolean v14, v7, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    :cond_9
    const/16 v2, 0xe

    invoke-virtual {v15, v2, v3}, Landroidx/appcompat/widget/b3;->h(II)I

    move-result v4

    invoke-static {v4, v11}, Landroidx/appcompat/widget/o1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iget-object v5, v7, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v5, v4, :cond_a

    iput-object v4, v7, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v14, v7, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    :cond_a
    iget-boolean v4, v7, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    if-nez v4, :cond_b

    iget-boolean v4, v7, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-eqz v4, :cond_c

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    :cond_c
    const/16 v4, 0x8

    invoke-virtual {v15, v4, v12}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    sget-object v6, Lb/a;->A:[I

    invoke-virtual {v8, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4, v1, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v8, v6}, Lt/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_4
    iput-object v6, v7, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v12, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    if-eqz v6, :cond_f

    int-to-float v6, v6

    invoke-virtual {v13}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    cmpl-float v16, v6, v16

    if-eqz v16, :cond_f

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_f
    invoke-virtual {v4, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v4, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq v6, v14, :cond_12

    if-eq v6, v0, :cond_11

    if-eq v6, v1, :cond_10

    move-object v1, v11

    goto :goto_5

    :cond_10
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_11
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_12
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_5
    if-lez v3, :cond_17

    if-nez v1, :cond_13

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_6

    :cond_13
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_6
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_7

    :cond_14
    move v1, v12

    :goto_7
    not-int v1, v1

    and-int/2addr v1, v3

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v14, v12

    :goto_8
    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    const/high16 v0, -0x41800000    # -0.25f

    goto :goto_9

    :cond_16
    move v0, v5

    :goto_9
    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_a

    :cond_17
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_a
    invoke-virtual {v4, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lf/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/a;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->Q:Lf/a;

    goto :goto_b

    :cond_18
    iput-object v11, v7, Landroidx/appcompat/widget/SwitchCompat;->Q:Lf/a;

    :goto_b
    iget-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-direct {v7, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    new-instance v0, Landroidx/appcompat/widget/b1;

    invoke-direct {v0, v7}, Landroidx/appcompat/widget/b1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v9, v10}, Landroidx/appcompat/widget/b1;->f(Landroid/util/AttributeSet;I)V

    invoke-virtual {v15}, Landroidx/appcompat/widget/b3;->n()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/SwitchCompat;->x:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroidx/appcompat/widget/c0;->b(Landroid/util/AttributeSet;I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/SwitchCompat;->C:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->o0:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->p0:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, v7, Landroidx/appcompat/widget/SwitchCompat;->q0:Landroid/view/animation/PathInterpolator;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroidx/appcompat/widget/c0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/c0;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/c0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroidx/appcompat/widget/c0;

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroidx/appcompat/widget/c0;

    return-object p0
.end method

.method private getTargetCheckedState()Z
    .locals 1

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getThumbOffset()I
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getThumbScrollRange()I
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/widget/o1;->a:Landroid/graphics/Rect;

    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    add-int/2addr v2, v3

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setTextOffInternal(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Lf/a;

    iget-object v0, v0, Landroidx/appcompat/widget/c0;->b:Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lh5/d;

    invoke-virtual {v0, v1}, Lh5/d;->B(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Landroid/text/StaticLayout;

    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->g()V

    :cond_1
    return-void
.end method

.method private setTextOnInternal(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->Q:Lf/a;

    iget-object v0, v0, Landroidx/appcompat/widget/c0;->b:Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lh5/d;

    invoke-virtual {v0, v1}, Lh5/d;->B(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    iget-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->g()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 9

    new-instance v8, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    if-eqz p1, :cond_0

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v3, p0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v8
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->I:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->K:I

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v5, Landroidx/appcompat/widget/o1;->a:Landroid/graphics/Rect;

    :goto_0
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v6

    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    div-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v0

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v2, v8

    if-eqz v5, :cond_4

    iget v0, v5, Landroid/graphics/Rect;->left:I

    if-le v0, v6, :cond_1

    sub-int/2addr v0, v6

    add-int/2addr v9, v0

    :cond_1
    iget v0, v5, Landroid/graphics/Rect;->top:I

    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-le v0, v6, :cond_2

    sub-int/2addr v0, v6

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v8, :cond_3

    sub-int/2addr v6, v8

    sub-int/2addr v2, v6

    :cond_3
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_5

    sub-int/2addr v5, v6

    sub-int v5, v3, v5

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    move v5, v3

    :goto_2
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v9, v0, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v7, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v4, v2

    iget v2, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2, v0, v1, v4, v3}, Lx/b;->f(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-static {p0, p1, p2}, Lx/b;->e(Landroid/graphics/drawable/Drawable;FF)V

    :cond_1
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p0:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/e0;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    const v4, 0x7f090241

    const/16 v5, 0x40

    invoke-direct {v1, v4, v5, v2, v3}, Landroidx/core/view/e0;-><init>(IIII)V

    invoke-virtual {v1, p0, v0}, Landroidx/core/view/g0;->c(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->o0:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/e0;

    const/16 v2, 0x1e

    const/4 v3, 0x2

    const v4, 0x7f090241

    const/16 v5, 0x40

    invoke-direct {v1, v4, v5, v2, v3}, Landroidx/core/view/e0;-><init>(IIII)V

    invoke-virtual {v1, p0, v0}, Landroidx/core/view/g0;->c(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->V:Landroidx/appcompat/widget/e4;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->T:Landroidx/appcompat/widget/c0;

    iget-object v0, v0, Landroidx/appcompat/widget/c0;->b:Lp5/c;

    iget-object v0, v0, Lp5/c;->b:Ljava/lang/Object;

    check-cast v0, Lh5/d;

    invoke-virtual {v0}, Lh5/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/emoji2/text/l;->a()Landroidx/emoji2/text/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/l;->b()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Landroidx/appcompat/widget/e4;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/e4;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->V:Landroidx/appcompat/widget/e4;

    invoke-virtual {v0, v1}, Landroidx/emoji2/text/l;->g(Landroidx/emoji2/text/j;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

    return-object p0
.end method

.method public getShowText()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    return p0
.end method

.method public getSplitTrack()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/SwitchCompat;->n:Z

    return p0
.end method

.method public getSwitchMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    return p0
.end method

.method public getSwitchPadding()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    return p0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getThumbPosition()F
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    return p0
.end method

.method public getThumbTextPadding()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:I

    return p0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06048f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12012f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->o0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12012e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->p0:Ljava/lang/String;

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/appcompat/widget/SwitchCompat;->s0:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->K:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    iget-boolean v6, p0, Landroidx/appcompat/widget/SwitchCompat;->n:Z

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iput v7, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    iput v7, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_3

    move v6, v7

    goto :goto_2

    :cond_3
    if-gez v6, :cond_4

    move v6, v5

    :cond_4
    :goto_2
    rsub-int v7, v6, 0xff

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    goto :goto_5

    :cond_8
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Landroid/text/StaticLayout;

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/content/res/ColorStateList;

    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    if-eqz v7, :cond_9

    invoke-virtual {v7, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    iput-object v6, v8, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p0

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_6
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v4, p0

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    int-to-float p0, v4

    int-to-float v2, v2

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "android.widget.Switch"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "android.widget.Switch"

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p1

    iget p4, p1, Landroid/graphics/Rect;->left:I

    iget p5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move p4, p2

    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    add-int/2addr p3, p1

    iget p5, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    add-int/2addr p3, p5

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    sub-int p1, p3, p1

    iget p5, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    sub-int/2addr p1, p5

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    add-int/2addr p4, p2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    sub-int p2, p4, p2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    div-int/lit8 p5, p2, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p2, p4

    move v0, p4

    move p4, p2

    move p2, v0

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->K:I

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->I:I

    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->c(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->c(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Landroid/text/StaticLayout;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v0, v1

    move v3, v0

    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->O:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->P:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->k:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    move v0, v1

    :goto_2
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    invoke-static {v5}, Landroidx/appcompat/widget/o1;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    iget v4, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    :cond_5
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    int-to-float v2, v2

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    int-to-float v3, v3

    div-float v4, v2, v3

    const v5, 0x3f124925

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    :cond_6
    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->r0:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_7
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->o0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->p0:Ljava/lang/String;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->A:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_13

    const/4 v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v1, v4, :cond_a

    if-eq v1, v8, :cond_0

    if-eq v1, v5, :cond_a

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    if-eq v0, v4, :cond_8

    if-eq v0, v8, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float v1, p1, v1

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v7

    if-lez v0, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    move v1, v0

    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v1, v1

    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    add-float/2addr v1, v0

    cmpg-float v2, v1, v7

    if-gez v2, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    cmpl-float v2, v1, v6

    if-lez v2, :cond_6

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_1
    cmpl-float v0, v6, v0

    if-eqz v0, :cond_7

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    invoke-virtual {p0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    :cond_7
    return v4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v5, v2

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_9

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_16

    :cond_9
    iput v8, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    return v4

    :cond_a
    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    if-ne v1, v8, :cond_12

    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    goto :goto_2

    :cond_b
    move v1, v3

    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v1, :cond_10

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v8, 0x44fa0000    # 2000.0f

    cmpl-float v1, v1, v8

    if-gtz v1, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v8, 0x43fa0000    # 500.0f

    cmpl-float v1, v1, v8

    if-gtz v1, :cond_d

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    cmpl-float v8, v1, v7

    if-eqz v8, :cond_c

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v0

    goto :goto_5

    :cond_d
    :goto_3
    invoke-static {p0}, Landroidx/appcompat/widget/x4;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    cmpg-float v0, v0, v7

    if-gez v0, :cond_f

    goto :goto_4

    :cond_e
    cmpl-float v0, v0, v7

    if-lez v0, :cond_f

    :goto_4
    move v0, v4

    goto :goto_5

    :cond_f
    move v0, v3

    goto :goto_5

    :cond_10
    move v0, v2

    :goto_5
    if-eq v0, v2, :cond_11

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    :cond_11
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :cond_12
    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_7

    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_14

    goto :goto_6

    :cond_14
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->l0:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, p0, Landroidx/appcompat/widget/SwitchCompat;->H:I

    sub-int/2addr v6, v2

    iget v8, p0, Landroidx/appcompat/widget/SwitchCompat;->G:I

    add-int/2addr v8, v5

    sub-int/2addr v8, v2

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v5, v8

    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v9

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    add-int/2addr v5, v2

    iget v7, p0, Landroidx/appcompat/widget/SwitchCompat;->K:I

    add-int/2addr v7, v2

    int-to-float v2, v8

    cmpl-float v2, v0, v2

    if-lez v2, :cond_15

    int-to-float v2, v5

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    int-to-float v2, v6

    cmpl-float v2, v1, v2

    if-lez v2, :cond_15

    int-to-float v2, v7

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    move v3, v4

    :cond_15
    :goto_6
    if-eqz v3, :cond_16

    iput v4, p0, Landroidx/appcompat/widget/SwitchCompat;->w:I

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:F

    :cond_16
    :goto_7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c0;->c(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v2

    const-class v4, Landroid/view/View;

    const-string v5, "isVisibleToUser"

    invoke-static {v4, v5, v3}, Lh3/a;->p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {p0, v3, v4}, Lh3/a;->x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v0, 0x1b

    invoke-static {v0}, Lv4/b;->U(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->f()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->e()V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/l0;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    :cond_4
    new-instance v0, Landroidx/appcompat/widget/f4;

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/widget/f4;-><init>(Landroidx/appcompat/widget/SwitchCompat;FF)V

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->q0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    new-instance v1, Landroidx/appcompat/widget/d4;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/widget/d4;-><init>(Landroidx/appcompat/widget/SwitchCompat;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    :goto_4
    return-void
.end method

.method public setCheckedWithoutAnimation(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->e()V

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->R:Landroidx/appcompat/widget/f4;

    :cond_1
    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c0;->d(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->t:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setEnforceSwitchWidth(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getEmojiTextViewHelper()Landroidx/appcompat/widget/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c0;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->v:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->g()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOffInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->e()V

    :cond_0
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTextOnInternal(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->f()V

    :cond_0
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setThumbPosition(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->m0:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->n0:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method

.method public setTrackResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lg2/m;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    return-void
.end method

.method public final toggle()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Landroid/graphics/drawable/Drawable;

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
