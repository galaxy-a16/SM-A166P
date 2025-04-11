.class public abstract Lg4/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lh/c0;


# static fields
.field public static final l0:[I

.field public static final m0:Landroidx/work/impl/x;

.field public static final n0:Lg4/b;


# instance fields
.field public A:Landroid/graphics/drawable/Drawable;

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:Landroid/animation/ValueAnimator;

.field public E:Landroidx/work/impl/x;

.field public F:F

.field public G:Z

.field public H:I

.field public I:I

.field public K:Z

.field public L:I

.field public N:Lv3/a;

.field public O:I

.field public P:Landroid/text/SpannableStringBuilder;

.field public final Q:I

.field public R:I

.field public T:I

.field public V:Z

.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Landroid/content/res/ColorStateList;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Z

.field public final n:Landroid/widget/FrameLayout;

.field public final p:Landroid/view/View;

.field public final q:Landroid/widget/ImageView;

.field public final t:Landroid/view/ViewGroup;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public w:I

.field public x:I

.field public y:Lh/p;

.field public z:Landroid/content/res/ColorStateList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lg4/c;->l0:[I

    new-instance v0, Landroidx/work/impl/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/x;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lg4/c;->m0:Landroidx/work/impl/x;

    new-instance v0, Lg4/b;

    invoke-direct {v0}, Lg4/b;-><init>()V

    sput-object v0, Lg4/c;->n0:Lg4/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v2, Lg4/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lg4/c;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lg4/c;->b:Z

    const/4 v2, -0x1

    iput v2, p0, Lg4/c;->w:I

    iput v1, p0, Lg4/c;->x:I

    sget-object v2, Lg4/c;->m0:Landroidx/work/impl/x;

    iput-object v2, p0, Lg4/c;->E:Landroidx/work/impl/x;

    const/4 v2, 0x0

    iput v2, p0, Lg4/c;->F:F

    iput-boolean v1, p0, Lg4/c;->G:Z

    iput v1, p0, Lg4/c;->H:I

    iput v1, p0, Lg4/c;->I:I

    iput-boolean v1, p0, Lg4/c;->K:Z

    iput v1, p0, Lg4/c;->L:I

    const/4 v1, 0x1

    iput v1, p0, Lg4/c;->O:I

    iput p2, p0, Lg4/c;->Q:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lg4/c;->getItemLayoutResId()I

    move-result p2

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f090166

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lg4/c;->n:Landroid/widget/FrameLayout;

    const p1, 0x7f090164

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg4/c;->p:Landroid/view/View;

    const p1, 0x7f090167

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lg4/c;->q:Landroid/widget/ImageView;

    const p2, 0x7f090168

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lg4/c;->t:Landroid/view/ViewGroup;

    const v2, 0x7f09016a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lg4/c;->u:Landroid/widget/TextView;

    const v3, 0x7f090169

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lg4/c;->v:Landroid/widget/TextView;

    const v4, 0x7f090165

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lg4/c;->getItemBackgroundResId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lg4/c;->getItemDefaultMarginResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lg4/c;->e:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    iput p2, p0, Lg4/c;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f060181

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lg4/c;->g:I

    sget-object p2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const/4 p2, 0x2

    invoke-static {v2, p2}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    invoke-static {v3, p2}, Landroidx/core/view/i0;->s(Landroid/view/View;I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0, p2, v1}, Lg4/c;->a(FF)V

    if-eqz p1, :cond_0

    new-instance p2, Landroidx/appcompat/widget/s2;

    const/4 v1, 0x3

    invoke-direct {p2, p0, v1}, Landroidx/appcompat/widget/s2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-static {p0, v0}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    return-void
.end method

.method public static g(Landroid/widget/TextView;I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    sget-object v2, Lb/a;->A:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/TypedValue;->getComplexUnit()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget p1, v2, Landroid/util/TypedValue;->data:I

    invoke-static {p1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_1

    :cond_2
    iget p1, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    return-void
.end method

.method private getIconOrContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lg4/c;->n:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg4/c;->q:Landroid/widget/ImageView;

    :goto_0
    return-object v0
.end method

.method private getItemVisiblePosition()I
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lg4/c;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getSuggestedIconHeight()I
    .locals 1

    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getSuggestedIconWidth()I
    .locals 3

    iget-object v0, p0, Lg4/c;->N:Lv3/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lg4/c;->N:Lv3/a;

    iget-object v1, v1, Lv3/a;->e:Lv3/c;

    iget-object v1, v1, Lv3/c;->b:Lv3/b;

    iget-object v1, v1, Lv3/b;->z:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object p0, p0, Lg4/c;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static h(FFILandroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p3, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static i(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static l(Landroid/view/ViewGroup;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    iget-object v2, p0, Lg4/c;->a:Ljava/lang/String;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sub-float v1, p1, p2

    iput v1, p0, Lg4/c;->i:F

    mul-float v1, p2, v3

    div-float/2addr v1, p1

    iput v1, p0, Lg4/c;->j:F

    mul-float/2addr p1, v3

    div-float/2addr p1, p2

    iput p1, p0, Lg4/c;->k:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, v1, p1

    const v4, -0x800001

    if-gez p2, :cond_1

    cmpg-float p2, v1, v4

    if-gtz p2, :cond_2

    :cond_1
    const-string p2, "scaleUpFactor is invalid"

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lg4/c;->j:F

    iput v0, p0, Lg4/c;->i:F

    :cond_2
    iget p2, p0, Lg4/c;->k:F

    cmpl-float p1, p2, p1

    if-gez p1, :cond_3

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_5

    :cond_3
    const-string p1, "scaleDownFactor is invalid"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "LabelSize is invalid"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lg4/c;->j:F

    :goto_1
    iput v3, p0, Lg4/c;->k:F

    iput v0, p0, Lg4/c;->i:F

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/p;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lg4/c;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lg4/c;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lg4/c;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lg4/c;->n:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lg4/c;->getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v6, p0, Lg4/c;->G:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lg4/c;->getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lg4/c;->c:Landroid/content/res/ColorStateList;

    invoke-static {v6}, Lh3/a;->L(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-direct {v5, v6, v4, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v4, v5

    move v5, v3

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lg4/c;->c:Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    new-array v6, v1, [[I

    new-array v1, v1, [I

    sget-object v7, Lh3/a;->n:[I

    aput-object v7, v6, v3

    sget-object v7, Lh3/a;->m:[I

    invoke-static {v0, v7}, Lh3/a;->n(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v1, v3

    sget-object v7, Lh3/a;->l:[I

    aput-object v7, v6, v5

    invoke-static {v0, v7}, Lh3/a;->n(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    aput v7, v1, v5

    sget-object v7, Landroid/util/StateSet;->NOTHING:[I

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Lh3/a;->k:[I

    invoke-static {v0, v7}, Lh3/a;->n(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    aput v0, v1, v8

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v6, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v1, v0, v4, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    return-void
.end method

.method public d(Lh/p;)V
    .locals 3

    iput-object p1, p0, Lg4/c;->y:Lh/p;

    invoke-virtual {p1}, Lh/p;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lg4/c;->setCheckable(Z)V

    invoke-virtual {p1}, Lh/p;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lg4/c;->setChecked(Z)V

    invoke-virtual {p1}, Lh/p;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lg4/c;->setEnabled(Z)V

    invoke-virtual {p1}, Lh/p;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg4/c;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lh/p;->e:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lg4/c;->setTitle(Ljava/lang/CharSequence;)V

    iget v0, p1, Lh/p;->a:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    iget-object v1, p1, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p1, Lh/p;->u:Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Landroidx/appcompat/widget/t4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lh/p;->H:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f09006d

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0, p1}, Lg4/c;->setBadgeType(I)V

    iput-boolean v1, p0, Lg4/c;->b:Z

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lg4/c;->n:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lg4/c;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final e(FF)V
    .locals 4

    iget-object v0, p0, Lg4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg4/c;->E:Landroidx/work/impl/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lt3/a;->a:Landroid/view/animation/LinearInterpolator;

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v2, p1

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1, p2}, Landroidx/work/impl/x;->b(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    const v2, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    const p2, 0x3e4ccccd    # 0.2f

    :goto_1
    invoke-static {v1, v3, v2, p2, p1}, Lt3/a;->a(FFFFF)F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iput p1, p0, Lg4/c;->F:F

    return-void
.end method

.method public final f(Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/a;->A:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget p2, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p2}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3fa66666    # 1.3f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x1

    mul-float/2addr p0, p2

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public getActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lg4/c;->p:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadge()Lv3/a;
    .locals 0

    iget-object p0, p0, Lg4/c;->N:Lv3/a;

    return-object p0
.end method

.method public getBadgeType()I
    .locals 0

    iget p0, p0, Lg4/c;->O:I

    return p0
.end method

.method public getItemBackgroundResId()I
    .locals 0

    const p0, 0x7f0700ba

    return p0
.end method

.method public getItemData()Lh/p;
    .locals 0

    iget-object p0, p0, Lg4/c;->y:Lh/p;

    return-object p0
.end method

.method public getItemDefaultMarginResId()I
    .locals 0

    const p0, 0x7f060286

    return p0
.end method

.method public abstract getItemLayoutResId()I
.end method

.method public getItemPosition()I
    .locals 0

    iget p0, p0, Lg4/c;->w:I

    return p0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lg4/c;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method public getLabelImageSpan()Landroid/text/SpannableStringBuilder;
    .locals 0

    iget-object p0, p0, Lg4/c;->P:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 4

    iget-object v0, p0, Lg4/c;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lg4/c;->getSuggestedIconHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget p0, p0, Lg4/c;->g:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v2, p0

    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v2

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    iget-object v0, p0, Lg4/c;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-direct {p0}, Lg4/c;->getSuggestedIconWidth()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getViewType()I
    .locals 0

    iget p0, p0, Lg4/c;->Q:I

    return p0
.end method

.method public final j(Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lg4/c;->N:Lv3/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v1, p0, Lg4/c;->N:Lv3/a;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lv3/a;->c()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lv3/a;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    iput-object v0, p0, Lg4/c;->N:Lv3/a;

    return-void
.end method

.method public final k(I)V
    .locals 4

    iget-object v0, p0, Lg4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lg4/c;->H:I

    iget v2, p0, Lg4/c;->L:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lg4/c;->K:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lg4/c;->l:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move p0, p1

    goto :goto_1

    :cond_2
    iget p0, p0, Lg4/c;->I:I

    :goto_1
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p0, Lg4/c;->R:I

    iget-object v0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lg4/c;->f(Landroid/widget/TextView;I)V

    iget p1, p0, Lg4/c;->T:I

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lg4/c;->f(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/p;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg4/c;->y:Lh/p;

    invoke-virtual {p0}, Lh/p;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lg4/c;->l0:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg4/c;->N:Lv3/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    iget-object v3, v0, Lh/p;->e:Ljava/lang/CharSequence;

    iget-object v0, v0, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    iget-object v3, v0, Lh/p;->t:Ljava/lang/CharSequence;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg4/c;->N:Lv3/a;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, v3, Lv3/a;->e:Lv3/c;

    iget-object v5, v4, Lv3/c;->b:Lv3/b;

    iget-object v6, v5, Lv3/b;->j:Ljava/lang/String;

    if-eqz v6, :cond_2

    move v7, v1

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    if-eqz v7, :cond_3

    iget-object v3, v5, Lv3/b;->p:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    move-object v6, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lv3/a;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v4, Lv3/c;->b:Lv3/b;

    iget v5, v5, Lv3/b;->t:I

    if-eqz v5, :cond_7

    iget-object v5, v3, Lv3/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget v6, v3, Lv3/a;->h:I

    const/4 v7, -0x2

    iget-object v4, v4, Lv3/c;->b:Lv3/b;

    if-eq v6, v7, :cond_6

    invoke-virtual {v3}, Lv3/a;->d()I

    move-result v6

    iget v7, v3, Lv3/a;->h:I

    if-gt v6, v7, :cond_5

    goto :goto_1

    :cond_5
    iget v3, v4, Lv3/b;->u:I

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v4, v4, Lv3/b;->t:I

    invoke-virtual {v3}, Lv3/a;->d()I

    move-result v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lv3/a;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    iget-object v3, v4, Lv3/c;->b:Lv3/b;

    iget-object v6, v3, Lv3/b;->q:Ljava/lang/CharSequence;

    :cond_9
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lg4/c;->y:Lh/p;

    if-eqz v3, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_12

    iget-object v3, p0, Lg4/c;->y:Lh/p;

    iget-object v3, v3, Lh/p;->e:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lg4/c;->y:Lh/p;

    iget-object v5, v5, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, p0, Lg4/c;->O:I

    const v6, 0x7f12011d

    const-string v7, " , "

    if-eqz v5, :cond_10

    if-eq v5, v1, :cond_f

    const/4 v8, 0x2

    if-eq v5, v8, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    goto :goto_5

    :catch_0
    :goto_4
    move v4, v2

    :goto_5
    if-eqz v4, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100001

    invoke-virtual {v3, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_d
    iget-boolean v0, p0, Lg4/c;->V:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f1200a0

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_11
    iget-object v0, p0, Lg4/c;->y:Lh/p;

    iget-object v0, v0, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    invoke-direct {p0}, Lg4/c;->getItemVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-static {v2, v1, v0, v1, v3}, Lc0/k;->a(IIIIZ)Lc0/k;

    move-result-object v0

    iget-object v0, v0, Lc0/k;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_13

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    sget-object p0, Lc0/f;->e:Lc0/f;

    iget-object p0, p0, Lc0/f;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_13
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p2, Lo1/e;

    const/4 p3, 0x3

    invoke-direct {p2, p1, p3, p0}, Lo1/e;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg4/c;->p:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lg4/c;->c()V

    return-void
.end method

.method public setActiveIndicatorEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lg4/c;->G:Z

    invoke-virtual {p0}, Lg4/c;->c()V

    iget-object v0, p0, Lg4/c;->p:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setActiveIndicatorHeight(I)V
    .locals 0

    iput p1, p0, Lg4/c;->I:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/c;->k(I)V

    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 1

    iget v0, p0, Lg4/c;->g:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg4/c;->g:I

    invoke-virtual {p0}, Lg4/c;->b()V

    :cond_0
    return-void
.end method

.method public setActiveIndicatorMarginHorizontal(I)V
    .locals 0

    iput p1, p0, Lg4/c;->L:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/c;->k(I)V

    return-void
.end method

.method public setActiveIndicatorResizeable(Z)V
    .locals 0

    iput-boolean p1, p0, Lg4/c;->K:Z

    return-void
.end method

.method public setActiveIndicatorWidth(I)V
    .locals 0

    iput p1, p0, Lg4/c;->H:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/c;->k(I)V

    return-void
.end method

.method public setBadge(Lv3/a;)V
    .locals 5

    iget-object v0, p0, Lg4/c;->N:Lv3/a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lg4/c;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v0, "NavigationBar"

    const-string v4, "Multiple badges shouldn\'t be attached to one item."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lg4/c;->j(Landroid/widget/ImageView;)V

    :cond_2
    iput-object p1, p0, Lg4/c;->N:Lv3/a;

    if-eqz v3, :cond_6

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object p0, p0, Lg4/c;->N:Lv3/a;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1}, Lv3/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {p0}, Lv3/a;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lv3/a;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setBadgeNumberless(Z)V
    .locals 0

    iput-boolean p1, p0, Lg4/c;->V:Z

    return-void
.end method

.method public setBadgeType(I)V
    .locals 0

    iput p1, p0, Lg4/c;->O:I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 12

    iget-object v0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lg4/c;->getViewType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060407

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lg4/c;->h:I

    :cond_0
    iget v3, p0, Lg4/c;->h:I

    iput v3, p0, Lg4/c;->e:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Lg4/c;->G:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lg4/c;->b:Z

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/l0;->b(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v5, 0x0

    iput-object v5, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    :cond_3
    new-array v5, v2, [F

    iget v8, p0, Lg4/c;->F:F

    aput v8, v5, v7

    aput v4, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    new-instance v8, Lg4/a;

    invoke-direct {v8, p0, v4}, Lg4/a;-><init>(Lg4/c;F)V

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v8, Lt3/a;->b:Lm0/b;

    const v9, 0x7f030346

    invoke-static {v5, v9, v8}, Lcom/fasterxml/jackson/annotation/i0;->D(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f030336

    invoke-static {v5, v9, v8}, Lcom/fasterxml/jackson/annotation/i0;->C(Landroid/content/Context;II)I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lg4/c;->C:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v4, v4}, Lg4/c;->e(FF)V

    :goto_2
    iget v4, p0, Lg4/c;->l:I

    const/4 v5, -0x1

    const/16 v8, 0x11

    const/16 v9, 0x31

    iget-object v10, p0, Lg4/c;->t:Landroid/view/ViewGroup;

    const/4 v11, 0x4

    if-eq v4, v5, :cond_8

    if-eqz v4, :cond_7

    if-eq v4, v6, :cond_6

    if-eq v4, v2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    invoke-static {p1, v2, v8}, Lg4/c;->i(Landroid/view/View;II)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    :cond_6
    iget v2, p0, Lg4/c;->f:I

    invoke-static {v10, v2}, Lg4/c;->l(Landroid/view/ViewGroup;I)V

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    int-to-float v2, v2

    iget v4, p0, Lg4/c;->i:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {p1, v2, v9}, Lg4/c;->i(Landroid/view/View;II)V

    invoke-static {v3, v3, v7, v0}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    iget p1, p0, Lg4/c;->j:F

    invoke-static {p1, p1, v11, v1}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_9

    goto :goto_3

    :cond_8
    iget-boolean v2, p0, Lg4/c;->m:Z

    if-eqz v2, :cond_a

    if-eqz p1, :cond_9

    :goto_3
    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    invoke-static {p1, v2, v9}, Lg4/c;->i(Landroid/view/View;II)V

    iget p1, p0, Lg4/c;->f:I

    invoke-static {v10, p1}, Lg4/c;->l(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3, v3, v7, v0}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    invoke-static {p1, v2, v8}, Lg4/c;->i(Landroid/view/View;II)V

    invoke-static {v10, v7}, Lg4/c;->l(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1, p1, v11, v0}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    :goto_4
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget v2, p0, Lg4/c;->f:I

    invoke-static {v10, v2}, Lg4/c;->l(Landroid/view/ViewGroup;I)V

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    int-to-float v2, v2

    iget v4, p0, Lg4/c;->i:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {p1, v2, v9}, Lg4/c;->i(Landroid/view/View;II)V

    invoke-static {v3, v3, v11, v0}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    iget p1, p0, Lg4/c;->j:F

    invoke-static {p1, p1, v7, v1}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lg4/c;->getIconOrContainer()Landroid/view/View;

    move-result-object p1

    iget v2, p0, Lg4/c;->e:I

    invoke-static {p1, v2, v9}, Lg4/c;->i(Landroid/view/View;II)V

    iget p1, p0, Lg4/c;->k:F

    invoke-static {p1, p1, v11, v0}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    invoke-static {v3, v3, v7, v1}, Lg4/c;->h(FFILandroid/widget/TextView;)V

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lg4/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ld/s0;

    const/16 v1, 0x3ea

    invoke-static {p1, v1}, Landroidx/core/view/v;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Ld/s0;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    iget-object p1, v0, Ld/s0;->b:Ljava/lang/Object;

    check-cast p1, Landroid/view/PointerIcon;

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/view/q0;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    goto :goto_1

    :cond_0
    sget-object p1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lg4/c;->A:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lg4/c;->A:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lg4/c;->B:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lg4/c;->z:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object p0, p0, Lg4/c;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    iget-object p0, p0, Lg4/c;->q:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lg4/c;->z:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lg4/c;->y:Lh/p;

    if-nez v0, :cond_0

    iget-object v1, p0, Lg4/c;->B:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lg4/c;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lg4/c;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setItemBackground(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lt/h;->a:Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Lu/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lg4/c;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lg4/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lg4/c;->c()V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 1

    iget v0, p0, Lg4/c;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg4/c;->f:I

    invoke-virtual {p0}, Lg4/c;->b()V

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 1

    iget v0, p0, Lg4/c;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lg4/c;->e:I

    invoke-virtual {p0}, Lg4/c;->b()V

    :cond_0
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    iput p1, p0, Lg4/c;->w:I

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lg4/c;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lg4/c;->c()V

    return-void
.end method

.method public setLabelImageSpan(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    iput-object p1, p0, Lg4/c;->P:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    iget v0, p0, Lg4/c;->l:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lg4/c;->l:I

    iget-boolean v0, p0, Lg4/c;->K:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget-object p1, Lg4/c;->n0:Lg4/b;

    goto :goto_1

    :cond_1
    sget-object p1, Lg4/c;->m0:Landroidx/work/impl/x;

    :goto_1
    iput-object p1, p0, Lg4/c;->E:Landroidx/work/impl/x;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/c;->k(I)V

    invoke-virtual {p0}, Lg4/c;->b()V

    :cond_2
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    iget-boolean v0, p0, Lg4/c;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lg4/c;->m:Z

    invoke-virtual {p0}, Lg4/c;->b()V

    :cond_0
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1

    iput p1, p0, Lg4/c;->x:I

    iget-object v0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lg4/c;->g(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lg4/c;->a(FF)V

    return-void
.end method

.method public setTextAppearanceActiveBoldEnabled(Z)V
    .locals 1

    iget v0, p0, Lg4/c;->x:I

    invoke-virtual {p0, v0}, Lg4/c;->setTextAppearanceActive(I)V

    iget-object p0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lg4/c;->g(Landroid/widget/TextView;I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lg4/c;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lg4/c;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lg4/c;->v:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lg4/c;->y:Lh/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lh/p;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lg4/c;->y:Lh/p;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lh/p;->u:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/t4;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
