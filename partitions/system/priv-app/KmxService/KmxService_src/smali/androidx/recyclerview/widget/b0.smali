.class public Landroidx/recyclerview/widget/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroidx/recyclerview/widget/u0;

.field public d:Z

.field public e:Z

.field public f:Landroid/view/View;

.field public final g:Landroidx/recyclerview/widget/h1;

.field public h:Z

.field public final i:Landroid/view/animation/LinearInterpolator;

.field public final j:Landroid/view/animation/DecelerateInterpolator;

.field public k:Landroid/graphics/PointF;

.field public final l:Landroid/util/DisplayMetrics;

.field public m:Z

.field public n:F

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/b0;->a:I

    new-instance v0, Landroidx/recyclerview/widget/h1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h1;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/b0;->g:Landroidx/recyclerview/widget/h1;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/b0;->i:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/b0;->j:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->m:Z

    iput v0, p0, Landroidx/recyclerview/widget/b0;->o:I

    iput v0, p0, Landroidx/recyclerview/widget/b0;->p:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/b0;->l:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static a(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public b(Landroid/view/View;I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->C(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->J(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-static {v1, p1, v0, v2, p2}, Landroidx/recyclerview/widget/b0;->a(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/view/View;I)I
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/v0;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->L(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->u(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v0

    iget v2, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-static {v1, p1, v0, v2, p2}, Landroidx/recyclerview/widget/b0;->a(IIIII)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Landroid/util/DisplayMetrics;)F
    .locals 0

    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public final e(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b0;->f(I)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public f(I)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/b0;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->l:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b0;->d(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/b0;->n:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->m:Z

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/b0;->n:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public g(I)Landroid/graphics/PointF;
    .locals 1

    iget-object p0, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    instance-of v0, p0, Landroidx/recyclerview/widget/i1;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/i1;

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/i1;->a(I)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Landroidx/recyclerview/widget/i1;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslRecyclerView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(II)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Landroidx/recyclerview/widget/b0;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/b0;->j()V

    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/b0;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/b0;->g(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v4, v3

    if-nez v5, :cond_2

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v3

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->z0(II[I)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/b0;->d:Z

    iget-object v4, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    iget-object v5, p0, Landroidx/recyclerview/widget/b0;->g:Landroidx/recyclerview/widget/h1;

    if-eqz v4, :cond_5

    iget-object v6, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->Z(Landroid/view/View;)I

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/b0;->a:I

    if-ne v4, v6, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    invoke-virtual {p0, v2, v4, v5}, Landroidx/recyclerview/widget/b0;->i(Landroid/view/View;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/h1;)V

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/h1;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b0;->j()V

    goto :goto_0

    :cond_4
    const-string v4, "SeslRecyclerView"

    const-string v6, "Passed over target position while smooth scrolling."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    :cond_5
    :goto_0
    iget-boolean v2, p0, Landroidx/recyclerview/widget/b0;->e:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b0;->j()V

    goto/16 :goto_2

    :cond_6
    iget v2, p0, Landroidx/recyclerview/widget/b0;->o:I

    sub-int p1, v2, p1

    mul-int/2addr v2, p1

    if-gtz v2, :cond_7

    move p1, v1

    :cond_7
    iput p1, p0, Landroidx/recyclerview/widget/b0;->o:I

    iget v2, p0, Landroidx/recyclerview/widget/b0;->p:I

    sub-int p2, v2, p2

    mul-int/2addr v2, p2

    if-gtz v2, :cond_8

    move p2, v1

    :cond_8
    iput p2, p0, Landroidx/recyclerview/widget/b0;->p:I

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    iget p1, p0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b0;->g(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_a

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v3

    if-nez v2, :cond_9

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    mul-float/2addr p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v2

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, p2

    iput v3, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p1

    float-to-int p2, v2

    iput p2, p0, Landroidx/recyclerview/widget/b0;->o:I

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/b0;->p:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/b0;->f(I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/b0;->o:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iget v3, p0, Landroidx/recyclerview/widget/b0;->p:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->i:Landroid/view/animation/LinearInterpolator;

    iput p2, v5, Landroidx/recyclerview/widget/h1;->a:I

    iput v3, v5, Landroidx/recyclerview/widget/h1;->b:I

    iput p1, v5, Landroidx/recyclerview/widget/h1;->c:I

    iput-object v2, v5, Landroidx/recyclerview/widget/h1;->e:Landroid/view/animation/Interpolator;

    iput-boolean v4, v5, Landroidx/recyclerview/widget/h1;->f:Z

    goto :goto_2

    :cond_a
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/b0;->a:I

    iput p1, v5, Landroidx/recyclerview/widget/h1;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/b0;->j()V

    :cond_b
    :goto_2
    iget p1, v5, Landroidx/recyclerview/widget/h1;->d:I

    if-ltz p1, :cond_c

    move v1, v4

    :cond_c
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/h1;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_d

    iget-boolean p1, p0, Landroidx/recyclerview/widget/b0;->e:Z

    if-eqz p1, :cond_d

    iput-boolean v4, p0, Landroidx/recyclerview/widget/b0;->d:Z

    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->y0:Landroidx/recyclerview/widget/m1;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/m1;->b()V

    :cond_d
    return-void
.end method

.method public i(Landroid/view/View;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/h1;)V
    .locals 5

    iget-object p2, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/b0;->b(Landroid/view/View;I)I

    move-result p2

    iget-object v4, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    if-eqz v4, :cond_4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    if-lez v1, :cond_5

    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/b0;->c(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b0;->e(I)I

    move-result v0

    if-lez v0, :cond_6

    neg-int p2, p2

    neg-int p1, p1

    iget-object p0, p0, Landroidx/recyclerview/widget/b0;->j:Landroid/view/animation/DecelerateInterpolator;

    iput p2, p3, Landroidx/recyclerview/widget/h1;->a:I

    iput p1, p3, Landroidx/recyclerview/widget/h1;->b:I

    iput v0, p3, Landroidx/recyclerview/widget/h1;->c:I

    iput-object p0, p3, Landroidx/recyclerview/widget/h1;->e:Landroid/view/animation/Interpolator;

    iput-boolean v3, p3, Landroidx/recyclerview/widget/h1;->f:Z

    :cond_6
    return-void
.end method

.method public final j()V
    .locals 4

    iget-boolean v0, p0, Landroidx/recyclerview/widget/b0;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->e:Z

    iput v0, p0, Landroidx/recyclerview/widget/b0;->p:I

    iput v0, p0, Landroidx/recyclerview/widget/b0;->o:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    iget-object v2, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Landroidx/recyclerview/widget/j1;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/recyclerview/widget/j1;->a:I

    iput-object v1, p0, Landroidx/recyclerview/widget/b0;->f:Landroid/view/View;

    iput v3, p0, Landroidx/recyclerview/widget/b0;->a:I

    iput-boolean v0, p0, Landroidx/recyclerview/widget/b0;->d:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    iget-object v2, v0, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Landroidx/recyclerview/widget/u0;->e:Landroidx/recyclerview/widget/b0;

    :cond_1
    iput-object v1, p0, Landroidx/recyclerview/widget/b0;->c:Landroidx/recyclerview/widget/u0;

    iput-object v1, p0, Landroidx/recyclerview/widget/b0;->b:Landroidx/recyclerview/widget/RecyclerView;

    :goto_0
    return-void
.end method
