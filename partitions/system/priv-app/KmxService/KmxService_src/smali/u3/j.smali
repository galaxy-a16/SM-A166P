.class public abstract Lu3/j;
.super Lu3/o;
.source "SourceFile"


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu3/o;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lu3/j;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lu3/j;->d:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lu3/j;->e:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lu3/o;-><init>(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lu3/j;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lu3/j;->d:Landroid/graphics/Rect;

    iput p1, p0, Lu3/j;->e:I

    return-void
.end method


# virtual methods
.method public final j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_6

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->w(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    if-lez p5, :cond_1

    sget-object v4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/c2;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/core/view/c2;->e()I

    move-result v5

    invoke-virtual {v4}, Landroidx/core/view/c2;->b()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr p5, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    add-int/2addr v4, p5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    instance-of p0, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;

    if-eqz p0, :cond_3

    neg-int p0, p5

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    sub-int/2addr v4, p5

    :goto_1
    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-ne v0, v2, :cond_5

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_3

    :cond_5
    const/high16 p0, -0x80000000

    :goto_3
    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;III)V

    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method public final u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 14

    move-object v0, p0

    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->w(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lr/f;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v7, v6

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v6

    iget-object v11, v0, Lu3/j;->c:Landroid/graphics/Rect;

    invoke-virtual {v11, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/c2;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static/range {p2 .. p2}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroidx/core/view/c2;->c()I

    move-result v5

    add-int/2addr v5, v4

    iput v5, v11, Landroid/graphics/Rect;->left:I

    iget v4, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroidx/core/view/c2;->d()I

    move-result v3

    sub-int/2addr v4, v3

    iput v4, v11, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v3, v0, Lu3/j;->d:Landroid/graphics/Rect;

    iget v2, v2, Lr/f;->c:I

    if-nez v2, :cond_1

    const v2, 0x800033

    :cond_1
    move v8, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    move-object v12, v3

    move/from16 v13, p3

    invoke-static/range {v8 .. v13}, Landroidx/core/view/e;->b(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v1}, Lu3/j;->v(Landroid/view/View;)I

    move-result v2

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v2

    move-object/from16 v2, p2

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Lu3/j;->e:I

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    const/4 v1, 0x0

    iput v1, v0, Lu3/j;->e:I

    :goto_0
    return-void
.end method

.method public final v(Landroid/view/View;)I
    .locals 5

    iget v0, p0, Lu3/j;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lr/f;

    iget-object p1, p1, Lr/f;->a:Lr/c;

    instance-of v4, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz v3, :cond_2

    add-int v4, v0, p1

    if-gt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v3

    if-eqz v0, :cond_3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v2, p1, v0

    :cond_3
    :goto_1
    iget p0, p0, Lu3/j;->f:I

    int-to-float p1, p0

    mul-float/2addr v2, p1

    float-to-int p1, v2

    invoke-static {p1, v1, p0}, Lv9/a;->k(III)I

    move-result v1

    :goto_2
    return v1
.end method
