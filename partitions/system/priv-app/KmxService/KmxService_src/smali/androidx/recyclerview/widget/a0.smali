.class public final Landroidx/recyclerview/widget/a0;
.super Landroidx/recyclerview/widget/b0;
.source "SourceFile"


# instance fields
.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Landroidx/recyclerview/widget/a0;->q:I

    iput-object p1, p0, Landroidx/recyclerview/widget/a0;->r:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/a0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/b0;->b(Landroid/view/View;I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->r:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/view/View;I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/a0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/b0;->c(Landroid/view/View;I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->r:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/a0;->q:I

    const/high16 v0, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :pswitch_2
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :goto_1
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x41c80000    # 25.0f

    div-float/2addr p1, p0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/a0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->f(I)I

    move-result p0

    return p0

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->f(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(I)Landroid/graphics/PointF;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/a0;->q:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/b0;->g(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/a0;->r:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Landroid/view/View;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/h1;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/a0;->q:I

    iget-object v3, p0, Landroidx/recyclerview/widget/a0;->r:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/b0;->i(Landroid/view/View;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/h1;)V

    return-void

    :pswitch_0
    check-cast v3, Landroidx/recyclerview/widget/e0;

    iget-object p2, v3, Landroidx/recyclerview/widget/e0;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p2

    invoke-virtual {v3, p2, p1}, Landroidx/recyclerview/widget/e0;->b(Landroidx/recyclerview/widget/u0;Landroid/view/View;)[I

    move-result-object p1

    aget p2, p1, v0

    aget p1, p1, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b0;->e(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/b0;->j:Landroid/view/animation/DecelerateInterpolator;

    iput p2, p3, Landroidx/recyclerview/widget/h1;->a:I

    iput p1, p3, Landroidx/recyclerview/widget/h1;->b:I

    iput v0, p3, Landroidx/recyclerview/widget/h1;->c:I

    iput-object p0, p3, Landroidx/recyclerview/widget/h1;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p3, Landroidx/recyclerview/widget/h1;->f:Z

    :cond_0
    return-void

    :pswitch_1
    iget-object p2, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    iget p2, p2, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v0

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a0;->b(Landroid/view/View;I)I

    move-result p2

    iget-object v5, p0, Landroidx/recyclerview/widget/b0;->k:Landroid/graphics/PointF;

    if-eqz v5, :cond_6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/a0;->c(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v2, p1, p1

    add-int/2addr v2, v0

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/b0;->e(I)I

    move-result p0

    if-lez p0, :cond_8

    int-to-double v4, v0

    const-wide v6, 0x3f2a36e2eb1c432dL    # 2.0E-4

    mul-double/2addr v4, v6

    const-wide v6, 0x3fdcccccc0000000L    # 0.44999998807907104

    add-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int p0, v4

    const/16 v0, 0x320

    if-le p0, v0, :cond_7

    move p0, v0

    :cond_7
    neg-int p2, p2

    neg-int p1, p1

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, v3, Landroidx/recyclerview/widget/LinearLayoutManager;->z:Landroid/view/animation/PathInterpolator;

    iput p2, p3, Landroidx/recyclerview/widget/h1;->a:I

    iput p1, p3, Landroidx/recyclerview/widget/h1;->b:I

    iput p0, p3, Landroidx/recyclerview/widget/h1;->c:I

    iput-object v0, p3, Landroidx/recyclerview/widget/h1;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p3, Landroidx/recyclerview/widget/h1;->f:Z

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
