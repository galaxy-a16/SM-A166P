.class public abstract Landroidx/recyclerview/widget/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/d;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/recyclerview/widget/a2;

.field public final d:Landroidx/recyclerview/widget/a2;

.field public e:Landroidx/recyclerview/widget/b0;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/s0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Landroidx/recyclerview/widget/s0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/recyclerview/widget/s0;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Landroidx/recyclerview/widget/a2;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/a2;-><init>(Landroidx/recyclerview/widget/s0;)V

    iput-object v4, p0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/a2;

    new-instance v0, Landroidx/recyclerview/widget/a2;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/a2;-><init>(Landroidx/recyclerview/widget/s0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->d:Landroidx/recyclerview/widget/a2;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/u0;->f:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/u0;->g:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/u0;->h:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/u0;->i:Z

    return-void
.end method

.method public static C(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public static H(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v0;->a()I

    move-result p0

    return p0
.end method

.method public static I(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/t0;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/t0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/t0;-><init>()V

    sget-object v1, Lr0/a;->a:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Landroidx/recyclerview/widget/t0;->a:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Landroidx/recyclerview/widget/t0;->b:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Landroidx/recyclerview/widget/t0;->c:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/t0;->d:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static J(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public static L(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static O(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static P(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object v1, v0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static g(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static u(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/v0;

    iget-object p0, p0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public static x(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    :goto_0
    move p1, v3

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move p3, p0

    move p1, p2

    goto :goto_3

    :cond_6
    :goto_1
    move p3, p0

    move p1, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p1, p2

    move p3, p1

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public A0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final B()I
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/j0;->d(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final B0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z
    .locals 1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/u0;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/u0;->O(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/u0;->O(III)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public abstract C0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public final D()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D0(Landroidx/recyclerview/widget/b0;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/b0;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/b0;->j()V

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/m1;

    iget-object v2, v1, Landroidx/recyclerview/widget/m1;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Landroidx/recyclerview/widget/m1;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->r(Landroid/view/View;F)V

    iget-boolean v1, p1, Landroidx/recyclerview/widget/b0;->h:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p1, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    iget p0, p1, Landroidx/recyclerview/widget/b0;->a:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    iput p0, v1, Landroidx/recyclerview/widget/j1;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p1, Landroidx/recyclerview/widget/b0;->e:Z

    iput-boolean v1, p1, Landroidx/recyclerview/widget/b0;->d:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/u0;->q(I)Landroid/view/View;

    move-result-object p0

    iput-object p0, p1, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    iget-object p0, p1, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/m1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m1;->b()V

    iput-boolean v1, p1, Landroidx/recyclerview/widget/b0;->h:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public E0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final G()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public K(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j0;->seslUseCustomAccessibilityPosition()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->seslGetAccessibilityItemCount()I

    move-result p2

    :cond_1
    return p2

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result p2

    :cond_3
    :goto_0
    return p2
.end method

.method public final M(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    iget-object v0, v0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroid/graphics/RectF;

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Q(I)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public R(I)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/d;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/d;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract U(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public abstract V(Landroid/view/View;ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)Landroid/view/View;
.end method

.method public W(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->seslUseCustomAccessibilityPosition()Z

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->seslGetAccessibilityItemCount()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lc0/l;->a(I)V

    invoke-virtual {p3, v2}, Lc0/l;->j(Z)V

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lc0/l;->a(I)V

    invoke-virtual {p3, v2}, Lc0/l;->j(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->K(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->y(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    iget-object p1, p3, Lc0/l;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public final Y(Landroid/view/View;Lc0/l;)V
    .locals 2

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    iget-object v0, v0, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Landroidx/recyclerview/widget/c1;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/u0;->Z(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroid/view/View;Lc0/l;)V

    :cond_0
    return-void
.end method

.method public Z(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroid/view/View;Lc0/l;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->e()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->seslUseCustomAccessibilityPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j0;->seslGetAccessibilityItemPosition(I)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/j0;->seslGetAccessibilityItemPosition(I)I

    move-result p3

    :cond_2
    const/4 p0, 0x1

    invoke-static {p1, p0, p3, p0, p2}, Lc0/k;->a(IIIIZ)Lc0/k;

    move-result-object p0

    invoke-virtual {p4, p0}, Lc0/l;->h(Lc0/k;)V

    return-void
.end method

.method public a0(II)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;IZ)V
    .locals 7

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/a2;->l(Landroidx/recyclerview/widget/n1;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/a2;->a(Landroidx/recyclerview/widget/n1;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->wasReturnedFromScrap()Z

    move-result v1

    const-string v2, "SeslRecyclerView"

    const/4 v3, 0x0

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    iget-object v4, v1, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget-object v4, v4, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v1, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/c;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/c;->b(I)I

    move-result v1

    sub-int/2addr v4, v1

    :goto_3
    if-ne p2, v5, :cond_5

    iget-object p2, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/d;->e()I

    move-result p2

    :cond_5
    if-eq v4, v5, :cond_8

    if-eq v4, p2, :cond_c

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/d;->c(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/v0;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/a2;->a(Landroidx/recyclerview/widget/n1;)V

    goto :goto_4

    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/a2;->l(Landroidx/recyclerview/widget/n1;)V

    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v4

    invoke-virtual {p0, p1, p2, v1, v4}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_7

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot move a child from non-existing index:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p3}, Landroidx/activity/b;->c(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v1, p1, p2, v3}, Landroidx/recyclerview/widget/d;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p3, Landroidx/recyclerview/widget/v0;->c:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-eqz p0, :cond_c

    iget-boolean p2, p0, Landroidx/recyclerview/widget/b0;->e:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->Z(Landroid/view/View;)I

    move-result p2

    iget v1, p0, Landroidx/recyclerview/widget/b0;->a:I

    if-ne p2, v1, :cond_c

    iput-object p1, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz p0, :cond_c

    const-string p0, "smooth scroll target view has been attached"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    :goto_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->unScrap()V

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v3}, Landroidx/recyclerview/widget/d;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_c
    :goto_7
    iget-boolean p0, p3, Landroidx/recyclerview/widget/v0;->d:Z

    if-eqz p0, :cond_e

    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "consuming pending invalidate on child "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Landroidx/recyclerview/widget/v0;->a:Landroidx/recyclerview/widget/n1;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object p0, v0, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iput-boolean v3, p3, Landroidx/recyclerview/widget/v0;->d:Z

    :cond_e
    return-void
.end method

.method public b0()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c0(II)V
    .locals 0

    return-void
.end method

.method public abstract d()Z
.end method

.method public d0(II)V
    .locals 0

    return-void
.end method

.method public abstract e()Z
.end method

.method public e0(II)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/v0;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract f0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)V
.end method

.method public abstract g0(Landroidx/recyclerview/widget/j1;)V
.end method

.method public h(IILandroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/r;)V
    .locals 0

    return-void
.end method

.method public h0(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public i(ILandroidx/recyclerview/widget/r;)V
    .locals 0

    return-void
.end method

.method public i0()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract j(Landroidx/recyclerview/widget/j1;)I
.end method

.method public j0(I)V
    .locals 0

    return-void
.end method

.method public abstract k(Landroidx/recyclerview/widget/j1;)I
.end method

.method public k0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/u0;->o:I

    iget p4, p0, Landroidx/recyclerview/widget/u0;->n:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p4

    :cond_1
    const/16 v0, 0x1000

    const/4 v1, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2000

    if-eq p3, v0, :cond_2

    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p3

    sub-int/2addr p1, p3

    neg-int p1, p1

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p3

    sub-int/2addr p4, p3

    neg-int p3, p4

    goto :goto_2

    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_5
    move p1, p2

    :goto_1
    iget-object p3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p3

    sub-int p3, p4, p3

    goto :goto_2

    :cond_6
    move p3, p2

    :goto_2
    if-nez p1, :cond_7

    if-nez p3, :cond_7

    return p2

    :cond_7
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p3, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->D0(IIZ)V

    return v1
.end method

.method public abstract l(Landroidx/recyclerview/widget/j1;)I
.end method

.method public final l0(Landroidx/recyclerview/widget/c1;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->o0(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/c1;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract m(Landroidx/recyclerview/widget/j1;)I
.end method

.method public final m0(Landroidx/recyclerview/widget/c1;)V
    .locals 6

    iget-object v0, p1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/c1;->a:Ljava/util/ArrayList;

    if-ltz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/n1;

    iget-object v2, v2, Landroidx/recyclerview/widget/n1;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/n1;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->T:Landroidx/recyclerview/widget/p0;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/p0;->d(Landroidx/recyclerview/widget/n1;)V

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/n1;->setIsRecyclable(Z)V

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/n1;->mScrapContainer:Landroidx/recyclerview/widget/c1;

    iput-boolean v4, v2, Landroidx/recyclerview/widget/n1;->mInChangeScrap:Z

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n1;->clearReturnedFromScrapFlag()V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Landroidx/recyclerview/widget/c1;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v0, :cond_5

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public abstract n(Landroidx/recyclerview/widget/j1;)I
.end method

.method public final n0(Landroid/view/View;Landroidx/recyclerview/widget/c1;)V
    .locals 5

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget v1, p0, Landroidx/recyclerview/widget/d;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput v2, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object p1, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/c;->f(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/q0;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v3, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/c1;->i(Landroid/view/View;)V

    return-void

    :catchall_0
    move-exception p1

    iput v3, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract o(Landroidx/recyclerview/widget/j1;)I
.end method

.method public final o0(I)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    iget-object v0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/q0;

    iget v1, p0, Landroidx/recyclerview/widget/d;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->f(I)I

    move-result p1

    iget-object v4, v0, Landroidx/recyclerview/widget/q0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object v4, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/d;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/c;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/d;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q0;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v3, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    goto :goto_1

    :catchall_0
    move-exception p1

    iput v3, p0, Landroidx/recyclerview/widget/d;->d:I

    iput-object v1, p0, Landroidx/recyclerview/widget/d;->e:Landroid/view/View;

    throw p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public final p(Landroidx/recyclerview/widget/c1;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->z2:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ignoring view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeslRecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/n1;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/j0;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->o0(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/c1;->j(Landroidx/recyclerview/widget/n1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/d;->c(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/c1;->k(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/a2;->l(Landroidx/recyclerview/widget/n1;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public p0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->B()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    if-eqz p5, :cond_7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result p5

    iget v3, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v5}, Landroidx/recyclerview/widget/u0;->z(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v2

    if-ge p0, v3, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, v2

    if-le p0, p3, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    if-ge p0, v4, :cond_6

    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    if-gt p0, p5, :cond_5

    goto :goto_3

    :cond_5
    move p0, v7

    goto :goto_4

    :cond_6
    :goto_3
    move p0, v0

    :goto_4
    if-eqz p0, :cond_8

    :cond_7
    if-nez v2, :cond_9

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    return v0

    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1, v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->D0(IIZ)V

    :goto_6
    return v7
.end method

.method public q(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->b0(Landroid/view/View;)Landroidx/recyclerview/widget/n1;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/n1;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final q0()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract r()Landroidx/recyclerview/widget/v0;
.end method

.method public abstract r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
.end method

.method public s(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/v0;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/v0;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/v0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public abstract s0(I)V
.end method

.method public t(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/v0;
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/v0;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/v0;

    check-cast p1, Landroidx/recyclerview/widget/v0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/v0;-><init>(Landroidx/recyclerview/widget/v0;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Landroidx/recyclerview/widget/v0;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/v0;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Landroidx/recyclerview/widget/v0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/v0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public abstract t0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
.end method

.method public final u0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/u0;->v0(II)V

    return-void
.end method

.method public final v(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->d(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final v0(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/u0;->l:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->C2:Z

    if-nez p1, :cond_0

    iput v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/u0;->m:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->C2:Z

    if-nez p1, :cond_1

    iput v0, p0, Landroidx/recyclerview/widget/u0;->o:I

    :cond_1
    return-void
.end method

.method public final w()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w0(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/i0;->e(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->m(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final x0(II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->A(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/u0;->z(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/u0;->w0(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public y(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/j0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public final y0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/u0;->n:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d;

    iput-object v0, p0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/u0;->o:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroidx/recyclerview/widget/u0;->l:I

    iput p1, p0, Landroidx/recyclerview/widget/u0;->m:I

    return-void
.end method

.method public z(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final z0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/u0;->h:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/u0;->O(III)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/u0;->O(III)Z

    move-result p0

    if-nez p0, :cond_0

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
