.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lu3/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lu3/i;"
    }
.end annotation


# instance fields
.field public A:F

.field public B:Z

.field public C:Z

.field public m:I

.field public n:I

.field public o:Landroid/animation/ValueAnimator;

.field public p:Lcom/google/android/material/appbar/f;

.field public q:Ljava/lang/ref/WeakReference;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:F

.field public w:F

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lu3/i;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lu3/i;-><init>(I)V

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    return-void
.end method

.method public static A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/core/view/o;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/AbsListView;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static B(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lu3/c;

    iget v6, v3, Lu3/c;->a:I

    const/16 v7, 0x20

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-eqz v6, :cond_2

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v6

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    :cond_2
    neg-int v3, p1

    if-gt v4, v3, :cond_3

    if-lt v5, v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    const/4 v0, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lu3/c;

    iget v1, v1, Lu3/c;->a:I

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v3

    if-lez p3, :cond_2

    and-int/lit8 p3, v1, 0xc

    if-eqz p3, :cond_2

    neg-int p2, p2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    if-lt p2, p3, :cond_3

    goto :goto_2

    :cond_2
    and-int/lit8 p3, v1, 0x2

    if-eqz p3, :cond_3

    neg-int p2, p2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    if-lt p2, p3, :cond_3

    :goto_2
    move p2, v0

    goto :goto_3

    :cond_3
    move p2, v2

    :goto_3
    iget-boolean p3, p1, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz p3, :cond_4

    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->j(Landroid/view/View;)Z

    move-result p2

    :cond_4
    iget-boolean p3, p1, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    xor-int/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lva/e;

    iget-object p0, p0, Lva/e;->b:Ljava/lang/Object;

    check-cast p0, Ll/j;

    invoke-virtual {p0, p1, v4}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    if-nez v4, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    move p2, v2

    :goto_5
    if-ge p2, p0, :cond_8

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lr/f;

    iget-object p3, p3, Lr/f;->a:Lr/c;

    instance-of v1, p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v1, :cond_7

    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    iget p0, p3, Lu3/j;->f:I

    if-eqz p0, :cond_8

    move v2, v0

    goto :goto_6

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    :cond_b
    return-void
.end method


# virtual methods
.method public C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lr/f;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p5, -0x2

    const/4 v0, 0x0

    if-ne p0, p5, :cond_0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(Landroid/view/View;III)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v3, v2

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v10, v12

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_0

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    :cond_0
    const/16 v4, -0x1e

    if-ge v8, v4, :cond_1

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_0

    :cond_1
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    :goto_0
    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v10, v5

    const-wide v12, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v10, v12

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_3

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    :cond_3
    const/16 v3, 0x1e

    if-le v8, v3, :cond_4

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    goto :goto_1

    :cond_4
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_1
    invoke-virtual {p0}, Lu3/o;->t()I

    move-result v0

    if-ne v0, v2, :cond_5

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    :cond_5
    move v5, v1

    move v4, v2

    :goto_2
    iget-object v0, v6, Lu3/i;->c:La0/a;

    if-eqz v0, :cond_6

    move v1, v9

    :cond_6
    if-eqz v1, :cond_7

    iget-object v0, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v9}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_7
    if-eq v4, v5, :cond_8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lu3/i;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v9

    :cond_8
    iget-boolean v0, v7, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p3}, Lcom/google/android/material/appbar/AppBarLayout;->j(Landroid/view/View;)Z

    move-result v0

    iget-boolean v1, v7, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    xor-int/2addr v1, v9

    invoke-virtual {v7, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    :cond_9
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-virtual {p0, v8, v7, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->J(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 6

    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result p4

    invoke-static {p2, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result p4

    if-ltz p4, :cond_1

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lu3/c;

    iget p4, p4, Lu3/c;->a:I

    const/high16 p6, 0x10000

    and-int/2addr p4, p6

    if-ne p4, p6, :cond_1

    :goto_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    move p4, p5

    :goto_1
    if-eqz p4, :cond_3

    if-gez p7, :cond_2

    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    if-nez p4, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lu3/i;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p4

    aput p4, p9, p5

    goto :goto_2

    :cond_2
    sget-object p4, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    instance-of p4, p3, Landroidx/core/view/o;

    if-eqz p4, :cond_4

    check-cast p3, Landroidx/core/view/o;

    invoke-interface {p3, p5}, Landroidx/core/view/o;->g(I)V

    goto :goto_3

    :cond_3
    if-gez p7, :cond_4

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lu3/i;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p4

    aput p4, p9, p5

    :goto_2
    invoke-virtual {p0, p7, p2, p3, p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->J(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    :cond_4
    :goto_3
    if-nez p7, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_5
    return-void
.end method

.method public F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-nez p4, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p4

    if-eqz p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_1

    move p1, p5

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    move p1, p5

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_5

    iput-boolean p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    invoke-virtual {p2, p5, p5}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    goto :goto_3

    :cond_5
    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    invoke-virtual {p2, v0, p5}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    :goto_3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->m()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;

    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    return p1
.end method

.method public G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Lu3/i;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lu3/i;->j:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->I(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_1
    iget p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I

    if-eqz p1, :cond_2

    if-ne p4, v1, :cond_4

    :cond_2
    iget-boolean p1, p2, Lcom/google/android/material/appbar/AppBarLayout;->l:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->j(Landroid/view/View;)Z

    move-result p1

    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->i:Z

    xor-int/2addr p4, v1

    invoke-virtual {p2, p1, p4}, Lcom/google/android/material/appbar/AppBarLayout;->i(ZZ)Z

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final H(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/f;
    .locals 6

    invoke-virtual {p0}, Lu3/o;->t()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p0

    if-gtz v5, :cond_4

    if-ltz v4, :cond_4

    new-instance v0, Lcom/google/android/material/appbar/f;

    if-nez p1, :cond_0

    sget-object p1, Lh0/b;->b:Lh0/a;

    :cond_0
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/f;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    if-nez p0, :cond_1

    move v5, p1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iput-boolean v5, v0, Lcom/google/android/material/appbar/f;->d:Z

    if-nez v5, :cond_2

    neg-int p0, p0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v5

    if-lt p0, v5, :cond_2

    move p0, p1

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    iput-boolean p0, v0, Lcom/google/android/material/appbar/f;->c:Z

    iput v2, v0, Lcom/google/android/material/appbar/f;->e:I

    sget-object p0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p2, p0

    if-ne v4, p2, :cond_3

    move v1, p1

    :cond_3
    iput-boolean v1, v0, Lcom/google/android/material/appbar/f;->g:Z

    int-to-float p0, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iput p0, v0, Lcom/google/android/material/appbar/f;->f:F

    return-object v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final I(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 12

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ltz v1, :cond_14

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lu3/c;

    iget v6, v5, Lu3/c;->a:I

    and-int/lit16 v7, v6, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_0

    iput-boolean v2, p0, Lu3/i;->l:Z

    goto/16 :goto_c

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lu3/i;->l:Z

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    neg-int v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    neg-int v9, v9

    if-nez v1, :cond_1

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p2}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v8, v1

    :cond_1
    and-int/lit8 v1, v6, 0x2

    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v7

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v1

    if-eqz v1, :cond_3

    int-to-float v1, v9

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v4, v9

    add-float/2addr v4, v1

    float-to-int v9, v4

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v6, 0x5

    const/4 v10, 0x5

    if-ne v1, v10, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v7

    :goto_1
    if-eqz v1, :cond_7

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v9

    if-ge v0, v1, :cond_6

    move v8, v1

    goto :goto_2

    :cond_6
    move v9, v1

    :cond_7
    :goto_2
    const/16 v1, 0x20

    and-int/lit8 v4, v6, 0x20

    if-ne v4, v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v7

    :goto_3
    if-eqz v2, :cond_9

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v1

    :cond_9
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    if-eqz v1, :cond_a

    int-to-double v0, v0

    add-int v2, v9, v8

    int-to-double v4, v2

    const-wide v10, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v4, v10

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_b

    goto :goto_4

    :cond_a
    int-to-double v0, v0

    add-int v2, v9, v8

    int-to-double v4, v2

    const-wide v10, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v4, v10

    cmpg-double v0, v0, v4

    if-gez v0, :cond_c

    :cond_b
    move v0, v9

    goto :goto_5

    :cond_c
    :goto_4
    move v0, v8

    :goto_5
    if-nez v3, :cond_d

    sget v1, Lcom/google/android/material/appbar/AppBarLayout;->r0:I

    const-string v1, "AppBarLayout"

    const-string v2, "coordinatorLayout.getChildAt(1) is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    goto :goto_7

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    if-eqz v1, :cond_e

    iput-boolean v7, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v7, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_6

    :cond_e
    move v9, v0

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    if-eqz v0, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iput-boolean v7, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_7

    :cond_f
    move v8, v9

    :goto_7
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {v8, v0, v7}, Lv9/a;->k(III)I

    move-result v0

    goto :goto_b

    :cond_10
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v7

    int-to-double v2, v2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v4

    float-to-double v4, v4

    const-wide v8, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_11

    move v2, v0

    goto :goto_8

    :cond_11
    move v2, v1

    :goto_8
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    if-eqz v3, :cond_12

    goto :goto_9

    :cond_12
    move v1, v2

    :goto_9
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move v0, v1

    :goto_a
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v7}, Lv9/a;->k(III)I

    move-result v0

    :goto_b
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_14
    :goto_c
    return-void
.end method

.method public final J(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result p0

    if-gez p1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p0, p1, :cond_2

    :cond_1
    sget-object p0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    instance-of p0, p3, Landroidx/core/view/o;

    if-eqz p0, :cond_2

    check-cast p3, Landroidx/core/view/o;

    invoke-interface {p3, v0}, Landroidx/core/view/o;->g(I)V

    :cond_2
    return-void
.end method

.method public final K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 9

    sget-object v0, Lc0/f;->f:Lc0/f;

    invoke-virtual {v0}, Lc0/f;->a()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    sget-object v1, Lc0/f;->g:Lc0/f;

    invoke-virtual {v1}, Lc0/f;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/view/x0;->e(Landroid/view/View;I)V

    invoke-static {p1, v0}, Landroidx/core/view/x0;->d(Landroid/view/View;I)V

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v8, 0x1

    if-ge v2, v1, :cond_3

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lu3/c;

    iget v3, v3, Lu3/c;->a:I

    if-eqz v3, :cond_2

    move v1, v8

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Landroidx/core/view/u0;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v8

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/material/appbar/b;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/b;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V

    invoke-static {p1, v1}, Landroidx/core/view/x0;->g(Landroid/view/View;Landroidx/core/view/c;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    if-eq v1, v2, :cond_7

    sget-object v1, Lc0/f;->f:Lc0/f;

    new-instance v2, Lcom/google/android/material/appbar/d;

    invoke-direct {v2, p2, v0}, Lcom/google/android/material/appbar/d;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-static {p1, v1, v2}, Landroidx/core/view/x0;->f(Landroid/view/View;Lc0/f;Lc0/y;)V

    move v0, v8

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, -0x1

    invoke-virtual {v6, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    neg-int v7, v1

    if-eqz v7, :cond_9

    sget-object v0, Lc0/f;->g:Lc0/f;

    new-instance v1, Lcom/google/android/material/appbar/c;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/c;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    invoke-static {p1, v0, v1}, Landroidx/core/view/x0;->f(Landroid/view/View;Lc0/f;Lc0/y;)V

    goto :goto_3

    :cond_8
    sget-object v0, Lc0/f;->g:Lc0/f;

    new-instance v1, Lcom/google/android/material/appbar/d;

    invoke-direct {v1, p2, v8}, Lcom/google/android/material/appbar/d;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-static {p1, v0, v1}, Landroidx/core/view/x0;->f(Landroid/view/View;Lc0/f;Lc0/y;)V

    goto :goto_3

    :cond_9
    move v8, v0

    :goto_3
    iput-boolean v8, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->r:Z

    return-void
.end method

.method public final i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-super {p0, p1, p2, p3}, Lu3/o;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_3

    iget-boolean p3, v0, Lcom/google/android/material/appbar/f;->c:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    goto/16 :goto_5

    :cond_0
    iget-boolean p3, v0, Lcom/google/android/material/appbar/f;->d:Z

    if-eqz p3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget p3, v0, Lcom/google/android/material/appbar/f;->e:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    iget-boolean v3, v3, Lcom/google/android/material/appbar/f;->g:Z

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p3}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v3, p3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    iget v3, v3, Lcom/google/android/material/appbar/f;->f:F

    mul-float/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int v3, p3, v0

    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lu3/i;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/16 :goto_7

    :cond_3
    if-eqz p3, :cond_c

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lr/f;

    iget-object v3, v3, Lr/f;->a:Lr/c;

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v3, v3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v2

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    add-int/2addr v3, p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result p3

    sub-int/2addr v3, p3

    int-to-float p3, v3

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_6
    and-int/lit16 v3, p3, 0x200

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lr/f;

    iget-object v3, v3, Lr/f;->a:Lr/c;

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v3, v3, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->g()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v2

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    add-int/2addr v3, p3

    int-to-float p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_8

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v3

    if-nez v3, :cond_8

    iget v3, p2, Lcom/google/android/material/appbar/AppBarLayout;->I:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    move p3, v4

    :cond_8
    if-eqz v0, :cond_9

    :goto_4
    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_7

    :cond_9
    float-to-int p3, p3

    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Lu3/i;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto :goto_7

    :cond_a
    and-int/2addr p3, v1

    if-eqz p3, :cond_c

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {p0, p1, p2, v2}, Lu3/i;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    :cond_c
    :goto_7
    iput v2, p2, Lcom/google/android/material/appbar/AppBarLayout;->f:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    invoke-virtual {p0}, Lu3/o;->t()I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {p3, v0, v2}, Lv9/a;->k(III)I

    move-result p3

    iget-object v0, p0, Lu3/o;->a:Lu3/p;

    if-eqz v0, :cond_d

    iget v3, v0, Lu3/p;->d:I

    if-eq v3, p3, :cond_e

    iput p3, v0, Lu3/p;->d:I

    invoke-virtual {v0}, Lu3/p;->a()V

    goto :goto_8

    :cond_d
    iput p3, p0, Lu3/o;->b:I

    :cond_e
    :goto_8
    invoke-virtual {p0}, Lu3/o;->t()I

    move-result p3

    invoke-static {p1, p2, p3, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    invoke-virtual {p0}, Lu3/o;->t()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->f(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return v1
.end method

.method public bridge synthetic j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final k(Landroid/view/View;Landroid/view/View;F)Z
    .locals 1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    const/high16 p1, -0x3c6a0000    # -300.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43960000    # 300.0f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_1
    return p2
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final o(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    instance-of p1, p2, Lcom/google/android/material/appbar/f;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/material/appbar/f;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/f;

    :goto_0
    return-void
.end method

.method public final p(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/f;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p3

    move-object/from16 v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    if-gez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result v3

    iput-boolean v3, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_1
    iput-boolean v3, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v10, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    sub-float v10, v0, v10

    cmpl-float v8, v10, v8

    if-eqz v8, :cond_2

    iput v10, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    :cond_2
    iget v8, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    int-to-float v10, v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_8

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    goto :goto_1

    :cond_3
    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v10, 0x41a80000    # 21.0f

    cmpl-float v0, v0, v10

    if-lez v0, :cond_5

    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    cmpg-float v10, v0, v8

    if-gez v10, :cond_4

    iput-boolean v3, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_0

    :cond_4
    cmpl-float v0, v0, v8

    if-lez v0, :cond_6

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v3, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_0

    :cond_5
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput v8, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    :cond_6
    :goto_0
    iget-boolean v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    if-eqz v0, :cond_8

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    invoke-virtual {v6, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->I(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto :goto_1

    :cond_7
    iput-boolean v3, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    iput v8, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    :cond_8
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, v6, Lu3/i;->k:I

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v8, 0x0

    const/4 v10, -0x1

    if-eq v0, v3, :cond_d

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_11

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move v3, v9

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lu3/i;->f:I

    invoke-virtual {v7, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Lu3/i;->g:I

    goto/16 :goto_4

    :cond_b
    iget v0, v6, Lu3/i;->f:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v10, :cond_c

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v3, v6, Lu3/i;->g:I

    sub-int/2addr v3, v0

    iput v0, v6, Lu3/i;->g:I

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lu3/i;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto/16 :goto_4

    :cond_d
    iget-boolean v0, v6, Lu3/i;->l:Z

    if-eqz v0, :cond_11

    iget-object v0, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    iget v4, v6, Lu3/i;->f:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    const/16 v19, 0x0

    iget-object v5, v6, Lu3/i;->c:La0/a;

    if-eqz v5, :cond_e

    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v8, v6, Lu3/i;->c:La0/a;

    :cond_e
    iget-object v5, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    if-nez v5, :cond_f

    new-instance v5, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    :cond_f
    iget-object v11, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lu3/o;->t()I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v4

    invoke-virtual/range {v11 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, La0/a;

    const/16 v3, 0x12

    invoke-direct {v0, v6, v1, v2, v3}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, v6, Lu3/i;->c:La0/a;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v2, v0}, Landroidx/core/view/i0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_10
    iget-object v0, v6, Lu3/i;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_11
    :goto_3
    iput-boolean v9, v6, Lu3/i;->e:Z

    iput v10, v6, Lu3/i;->f:I

    iget-object v0, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    :cond_12
    :goto_4
    iget-object v0, v6, Lu3/i;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    iget-boolean v9, v6, Lu3/i;->e:Z

    :goto_5
    return v9
.end method

.method public final v()I
    .locals 1

    invoke-virtual {p0}, Lu3/o;->t()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p2

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_d

    if-lt v4, v2, :cond_d

    move/from16 v6, p5

    if-gt v4, v6, :cond_d

    invoke-static/range {p3 .. p5}, Lv9/a;->k(III)I

    move-result v2

    if-eq v4, v2, :cond_e

    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    if-eqz v6, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_4

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lu3/c;

    iget-object v11, v10, Lu3/c;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    if-lt v6, v12, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v12

    if-gt v6, v12, :cond_3

    if-eqz v11, :cond_4

    iget v7, v10, Lu3/c;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v12

    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v10

    add-int/2addr v8, v5

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v9}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v8, v7

    goto :goto_1

    :cond_0
    move v8, v5

    :cond_1
    :goto_1
    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v9}, Landroidx/core/view/i0;->b(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v7

    sub-int/2addr v8, v7

    :cond_2
    if-lez v8, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v7, v8

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-interface {v11, v6}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v7

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v6

    mul-int/2addr v8, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v8, v2

    :goto_2
    iget-object v6, v0, Lu3/o;->a:Lu3/p;

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    iget v9, v6, Lu3/p;->d:I

    if-eq v9, v8, :cond_5

    iput v8, v6, Lu3/p;->d:I

    invoke-virtual {v6}, Lu3/p;->a()V

    move v6, v7

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v5

    goto :goto_4

    :cond_6
    iput v8, v0, Lu3/o;->b:I

    goto :goto_3

    :goto_4
    sub-int v9, v4, v2

    sub-int v8, v2, v8

    iput v8, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    const/4 v8, 0x0

    if-eqz v6, :cond_9

    move v10, v5

    :goto_5
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_9

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lu3/c;

    iget-object v12, v11, Lu3/c;->b:Lp1/l;

    if-eqz v12, :cond_8

    iget v11, v11, Lu3/c;->a:I

    and-int/2addr v11, v7

    if-eqz v11, :cond_8

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lu3/o;->t()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v12, Lp1/l;->b:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    invoke-virtual {v11, v14}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v11, v14}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v15

    neg-int v15, v15

    invoke-virtual {v14, v5, v15}, Landroid/graphics/Rect;->offset(II)V

    iget-object v14, v12, Lp1/l;->b:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v14, v13

    const/4 v13, 0x0

    cmpg-float v15, v14, v13

    if-gtz v15, :cond_7

    iget-object v15, v12, Lp1/l;->b:Ljava/lang/Object;

    check-cast v15, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v15, v13, v7}, Lv9/a;->j(FFF)F

    move-result v13

    neg-float v14, v14

    sub-float v13, v7, v13

    mul-float/2addr v13, v13

    sub-float/2addr v7, v13

    iget-object v13, v12, Lp1/l;->b:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v13, v15

    mul-float/2addr v13, v7

    sub-float/2addr v14, v13

    invoke-virtual {v11, v14}, Landroid/view/View;->setTranslationY(F)V

    iget-object v7, v12, Lp1/l;->c:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v11, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, v12, Lp1/l;->c:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    neg-float v13, v14

    float-to-int v13, v13

    invoke-virtual {v7, v5, v13}, Landroid/graphics/Rect;->offset(II)V

    iget-object v7, v12, Lp1/l;->c:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    sget-object v12, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v11, v7}, Landroidx/core/view/k0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_7
    sget-object v7, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v11, v8}, Landroidx/core/view/k0;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_9
    if-nez v6, :cond_b

    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->e:Z

    if-eqz v6, :cond_b

    iget-object v6, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lva/e;

    iget-object v6, v6, Lva/e;->b:Ljava/lang/Object;

    check-cast v6, Ll/j;

    invoke-virtual {v6, v3, v8}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_b

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lr/f;

    iget-object v8, v8, Lr/f;->a:Lr/c;

    if-eqz v8, :cond_a

    invoke-virtual {v8, v1, v7, v3}, Lr/c;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lu3/o;->t()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/material/appbar/AppBarLayout;->f(I)V

    if-ge v2, v4, :cond_c

    const/4 v7, -0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x1

    :goto_8
    invoke-static {v1, v3, v2, v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    move v5, v9

    goto :goto_9

    :cond_d
    iput v5, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    :cond_e
    :goto_9
    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    return v5
.end method

.method public final z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 7

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0xfa

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v0

    float-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v3, v5

    double-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-gt v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v()I

    move-result v0

    if-ne v0, p3, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    sget-object v5, Lc/a;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/google/android/material/appbar/a;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/material/appbar/a;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    const/16 p2, 0x1c2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v0, p2, v4

    const/4 v0, 0x1

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_3
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    return-void
.end method
