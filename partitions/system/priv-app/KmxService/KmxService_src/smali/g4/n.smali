.class public abstract Lg4/n;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Lg4/d;

.field public final b:Lx3/b;

.field public final c:Lg4/i;

.field public d:Lg/k;

.field public e:Lg4/l;

.field public final f:I

.field public final g:Lf9/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    const v8, 0x7f03007f

    const v9, 0x7f13042a

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lv9/a;->g0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lf9/b;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lf9/b;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v0, Lg4/n;->g:Lf9/b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v3, Ls3/a;->C:[I

    const/4 v11, 0x3

    new-array v6, v11, [I

    fill-array-data v6, :array_0

    const v4, 0x7f03007f

    const v5, 0x7f13042a

    move-object v1, v10

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lh9/a;->A(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/b3;

    move-result-object v1

    new-instance v2, Lg4/d;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lg4/n;->getMaxItemCount()I

    invoke-direct {v2, v10, v3}, Lg4/d;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, v0, Lg4/n;->a:Lg4/d;

    new-instance v3, Lx3/b;

    invoke-direct {v3, v10}, Lx3/b;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lg4/n;->b:Lx3/b;

    new-instance v4, Lg4/i;

    invoke-direct {v4, v10}, Lg4/i;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lg4/n;->c:Lg4/i;

    invoke-virtual/range {p0 .. p0}, Lg4/n;->getMaxItemCount()I

    move-result v5

    iput v5, v0, Lg4/n;->f:I

    invoke-virtual {v0, v5}, Lg4/n;->setMaxItemCount(I)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v1, Landroidx/appcompat/widget/b3;->b:Landroid/content/res/TypedArray;

    const/16 v12, 0x13

    invoke-virtual {v5, v12, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    invoke-virtual {v3, v12}, Lg4/g;->setViewType(I)V

    iput-object v3, v4, Lg4/i;->k:Lg4/g;

    const/4 v13, 0x1

    iput v13, v4, Lg4/i;->m:I

    invoke-virtual {v3, v4}, Lg4/g;->setPresenter(Lg4/i;)V

    iget-object v14, v2, Lh/n;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v14}, Lh/n;->b(Lh/b0;Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v4, v14, v2}, Lg4/i;->f(Landroid/content/Context;Lh/n;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg4/g;->d()Landroid/content/res/ColorStateList;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lg4/g;->setIconTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06040c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemIconSize(I)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemTextAppearanceInactive(I)V

    :cond_1
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    iput v2, v3, Lg4/g;->H:I

    iget-object v4, v3, Lg4/g;->e:[Lg4/c;

    if-eqz v4, :cond_4

    array-length v15, v4

    move v6, v14

    :goto_1
    if-ge v6, v15, :cond_4

    aget-object v11, v4, v6

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11, v2}, Lg4/c;->setTextAppearanceInactive(I)V

    iget-object v8, v3, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_3

    invoke-virtual {v11, v8}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const v8, 0x7f03007f

    const/4 v11, 0x3

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v4, v3, Lg4/g;->O:Lg4/c;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v2}, Lg4/c;->setTextAppearanceInactive(I)V

    iget-object v2, v3, Lg4/g;->j:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    iget-object v3, v3, Lg4/g;->O:Lg4/c;

    invoke-virtual {v3, v2}, Lg4/c;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemTextAppearanceActive(I)V

    :cond_6
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemTextAppearanceActiveBoldEnabled(Z)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/a0;->o(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v2, :cond_8

    if-eqz v3, :cond_a

    :cond_8
    const v4, 0x7f03007f

    invoke-static {v10, v7, v4, v9}, Ll4/k;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Ln2/h;

    move-result-object v4

    new-instance v6, Ll4/k;

    invoke-direct {v6, v4}, Ll4/k;-><init>(Ln2/h;)V

    new-instance v4, Ll4/h;

    invoke-direct {v4, v6}, Ll4/h;-><init>(Ll4/k;)V

    if-eqz v3, :cond_9

    invoke-virtual {v4, v3}, Ll4/h;->k(Landroid/content/res/ColorStateList;)V

    :cond_9
    invoke-virtual {v4, v10}, Ll4/h;->i(Landroid/content/Context;)V

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v4}, Landroidx/core/view/i0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    instance-of v3, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lg4/n;->b:Lx3/b;

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v2}, Lg4/g;->setBackgroundColorDrawable(Landroid/graphics/drawable/ColorDrawable;)V

    :cond_b
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemPaddingTop(I)V

    :cond_c
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemPaddingBottom(I)V

    :cond_d
    invoke-virtual {v1, v14}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v14, v14}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->setActiveIndicatorLabelPadding(I)V

    :cond_e
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->d(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lg4/n;->setElevation(F)V

    :cond_f
    invoke-static {v10, v1, v13}, Lv4/b;->G(Landroid/content/Context;Landroidx/appcompat/widget/b3;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v3}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/16 v3, 0xf

    const/4 v4, -0x1

    invoke-virtual {v5, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lg4/n;->setLabelVisibilityMode(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v4

    if-eqz v4, :cond_10

    iget-object v5, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v5, v4}, Lg4/g;->setItemBackgroundRes(I)V

    goto :goto_3

    :cond_10
    const/16 v4, 0x9

    invoke-static {v10, v1, v4}, Lv4/b;->G(Landroid/content/Context;Landroidx/appcompat/widget/b3;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg4/n;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    :goto_3
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v4

    if-eqz v4, :cond_11

    iget-object v5, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v5, v4}, Lg4/g;->setItemStateListAnimator(I)V

    :cond_11
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v13}, Lg4/n;->setItemActiveIndicatorEnabled(Z)V

    sget-object v6, Ls3/a;->B:[I

    invoke-virtual {v10, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lg4/n;->setItemActiveIndicatorWidth(I)V

    invoke-virtual {v5, v14, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lg4/n;->setItemActiveIndicatorHeight(I)V

    invoke-virtual {v5, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lg4/n;->setItemActiveIndicatorMarginHorizontal(I)V

    invoke-static {v10, v5, v2}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg4/n;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v3, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    new-instance v3, Ll4/a;

    int-to-float v4, v14

    invoke-direct {v3, v4}, Ll4/a;-><init>(F)V

    invoke-static {v10, v2, v14, v3}, Ll4/k;->a(Landroid/content/Context;IILl4/a;)Ln2/h;

    move-result-object v2

    new-instance v3, Ll4/k;

    invoke-direct {v3, v2}, Ll4/k;-><init>(Ln2/h;)V

    invoke-virtual {v0, v3}, Lg4/n;->setItemActiveIndicatorShapeAppearance(Ll4/k;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2, v14}, Landroidx/appcompat/widget/b3;->i(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lg4/n;->a(I)V

    :cond_13
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/b3;->l(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2, v13}, Landroidx/appcompat/widget/b3;->a(IZ)Z

    move-result v2

    iget-object v3, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v3, v2}, Lg4/g;->setExclusiveCheckable(Z)V

    :cond_14
    invoke-virtual {v1}, Landroidx/appcompat/widget/b3;->n()V

    iget-object v1, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lg4/n;->a:Lg4/d;

    iget-object v2, v0, Lg4/n;->g:Lf9/b;

    iput-object v2, v1, Lh/n;->e:Lh/l;

    iget-object v1, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v1, v2}, Lg4/g;->setOverflowSelectedCallback(Lh/l;)V

    iget-object v1, v0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v1}, Lg4/g;->getVisibleItemCount()I

    move-result v1

    const/4 v2, 0x3

    if-eq v12, v2, :cond_15

    iget v2, v0, Lg4/n;->f:I

    if-ne v1, v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060409

    goto :goto_4

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06040a

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xb
        0x12
    .end array-data
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lg4/n;->d:Lg/k;

    if-nez v0, :cond_0

    new-instance v0, Lg/k;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg4/n;->d:Lg/k;

    :cond_0
    iget-object p0, p0, Lg4/n;->d:Lg/k;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lg4/n;->c:Lg4/i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lg4/i;->l:Z

    invoke-direct {p0}, Lg4/n;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    iget-object p0, p0, Lg4/n;->a:Lg4/d;

    invoke-virtual {v2, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lg4/i;->l:Z

    invoke-virtual {v0, v1}, Lg4/i;->e(Z)V

    return-void
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getActiveIndicatorLabelPadding()I

    move-result p0

    return p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemActiveIndicatorHeight()I

    move-result p0

    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemActiveIndicatorMarginHorizontal()I

    move-result p0

    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Ll4/k;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemActiveIndicatorShapeAppearance()Ll4/k;

    move-result-object p0

    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemActiveIndicatorWidth()I

    move-result p0

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemIconSize()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemPaddingTop()I

    move-result p0

    return p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemRippleColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemTextAppearanceActive()I

    move-result p0

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemTextAppearanceInactive()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getLabelVisibilityMode()I

    move-result p0

    return p0
.end method

.method public abstract getMaxItemCount()I
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lg4/n;->a:Lg4/d;

    return-object p0
.end method

.method public getMenuView()Lh/d0;
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    return-object p0
.end method

.method public getPresenter()Lg4/i;
    .locals 0

    iget-object p0, p0, Lg4/n;->c:Lg4/i;

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0}, Lg4/g;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Ll4/h;

    if-eqz v1, :cond_0

    check-cast v0, Ll4/h;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/annotation/i0;->E(Landroid/view/View;Ll4/h;)V

    :cond_0
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lg4/m;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lg4/m;

    iget-object v0, p1, Lh0/b;->a:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lg4/m;->c:Landroid/os/Bundle;

    iget-object p0, p0, Lg4/n;->a:Lg4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android:menu:presenters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lh/n;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/b0;

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lh/b0;->getId()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    if-eqz v1, :cond_2

    invoke-interface {v2, v1}, Lh/b0;->c(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lg4/m;

    invoke-direct {v1, v0}, Lg4/m;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lg4/m;->c:Landroid/os/Bundle;

    iget-object p0, p0, Lg4/n;->a:Lg4/d;

    iget-object p0, p0, Lh/n;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lh/b0;

    if-nez v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Lh/b0;->getId()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v5}, Lh/b0;->h()Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "android:menu:presenters"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :goto_1
    return-object v1
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setActiveIndicatorLabelPadding(I)V

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

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorEnabled(Z)V

    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorHeight(I)V

    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorMarginHorizontal(I)V

    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Ll4/k;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorShapeAppearance(Ll4/k;)V

    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemActiveIndicatorWidth(I)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconSizeRes(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lg4/n;->setItemIconSize(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemPaddingBottom(I)V

    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemPaddingTop(I)V

    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemTextAppearanceActive(I)V

    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemTextAppearanceActiveBoldEnabled(Z)V

    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemTextAppearanceInactive(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 2

    iget-object v0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {v0}, Lg4/g;->getLabelVisibilityMode()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lg4/g;->setLabelVisibilityMode(I)V

    iget-object p0, p0, Lg4/n;->c:Lg4/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lg4/i;->e(Z)V

    :cond_0
    return-void
.end method

.method public setMaxItemCount(I)V
    .locals 0

    iget-object p0, p0, Lg4/n;->b:Lx3/b;

    invoke-virtual {p0, p1}, Lg4/g;->setMaxItemCount(I)V

    return-void
.end method

.method public setOnItemClickListener(Lg4/j;)V
    .locals 0

    return-void
.end method

.method public setOnItemReselectedListener(Lg4/k;)V
    .locals 0

    return-void
.end method

.method public setOnItemSelectedListener(Lg4/l;)V
    .locals 0

    iput-object p1, p0, Lg4/n;->e:Lg4/l;

    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 2

    iget-object v0, p0, Lg4/n;->a:Lg4/d;

    invoke-virtual {v0, p1}, Lh/n;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lg4/n;->c:Lg4/i;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lh/n;->q(Landroid/view/MenuItem;Lh/b0;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
