.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/i1;


# instance fields
.field public p:La4/c;

.field public final q:La4/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, La4/e;

    invoke-direct {v0}, La4/e;-><init>()V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, La4/b;

    invoke-direct {v0}, La4/b;-><init>()V

    new-instance v0, La4/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La4/a;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:La4/a;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance p3, La4/b;

    invoke-direct {p3}, La4/b;-><init>()V

    new-instance p3, La4/a;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, La4/a;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;I)V

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:La4/a;

    new-instance p3, La4/e;

    invoke-direct {p3}, La4/e;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    if-eqz p2, :cond_0

    .line 5
    sget-object p3, Ls3/a;->f:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    .line 7
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public static H0(FLp1/c;)F
    .locals 4

    iget-object v0, p1, Lp1/c;->b:Ljava/lang/Object;

    check-cast v0, La4/d;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lp1/c;->c:Ljava/lang/Object;

    check-cast p1, La4/d;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v0, p0}, Lt3/a;->a(FFFFF)F

    move-result p0

    return p0
.end method

.method public static I0(FLjava/util/List;Z)Lp1/c;
    .locals 13

    const/4 v0, -0x1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    move v6, v0

    move v7, v6

    move v8, v7

    move v9, v8

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La4/d;

    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v10, v11, p0

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v12, v11, p0

    if-gtz v12, :cond_0

    cmpg-float v12, v10, v1

    if-gtz v12, :cond_0

    move v6, v5

    move v1, v10

    :cond_0
    cmpl-float v12, v11, p0

    if-lez v12, :cond_1

    cmpg-float v12, v10, v2

    if-gtz v12, :cond_1

    move v8, v5

    move v2, v10

    :cond_1
    cmpg-float v10, v11, v3

    if-gtz v10, :cond_2

    move v7, v5

    move v3, v11

    :cond_2
    cmpl-float v10, v11, v4

    if-lez v10, :cond_3

    move v9, v5

    move v4, v11

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ne v6, v0, :cond_5

    move v6, v7

    :cond_5
    if-ne v8, v0, :cond_6

    move v8, v9

    :cond_6
    new-instance p0, Lp1/c;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La4/d;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La4/d;

    invoke-direct {p0, p2, p1}, Lp1/c;-><init>(La4/d;La4/d;)V

    return-object p0
.end method


# virtual methods
.method public final C0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/a0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/recyclerview/widget/a0;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    iput p2, v0, Landroidx/recyclerview/widget/b0;->a:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->D0(Landroidx/recyclerview/widget/b0;)V

    return-void
.end method

.method public final F0(I)F
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:La4/c;

    iget p1, p0, La4/c;->b:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, La4/c;->g()I

    goto :goto_1

    :goto_0
    iget-object p1, p0, La4/c;->c:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La4/c;->f()I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, La4/c;->e()I

    :goto_1
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final G0()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/u0;->n:I

    return p0

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/u0;->o:I

    return p0
.end method

.method public final J0()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:La4/c;

    iget p0, p0, La1/c;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final K0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->B()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final L0(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation:"

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/u0;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:La4/c;

    if-eqz v1, :cond_2

    iget v1, v1, La1/c;->a:I

    if-eq p1, v1, :cond_5

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    new-instance p1, La4/c;

    invoke-direct {p1, v0, p0, v1}, La4/c;-><init>(ILcom/google/android/material/carousel/CarouselLayoutManager;I)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, La4/c;

    invoke-direct {p1, v1, p0, v0}, La4/c;-><init>(ILcom/google/android/material/carousel/CarouselLayoutManager;I)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:La4/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    :cond_5
    return-void
.end method

.method public final T(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:La4/a;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final U(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:La4/a;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final V(Landroid/view/View;ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    iget-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:La4/c;

    iget p4, p4, La1/c;->a:I

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eq p2, v3, :cond_7

    const/4 v4, 0x2

    if-eq p2, v4, :cond_6

    const/16 v4, 0x11

    if-eq p2, v4, :cond_4

    const/16 v4, 0x21

    if-eq p2, v4, :cond_3

    const/16 v4, 0x42

    if-eq p2, v4, :cond_2

    const/16 v4, 0x82

    if-eq p2, v4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v4, "Unknown focus request:"

    invoke-direct {p4, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CarouselLayoutManager"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-ne p4, v3, :cond_5

    goto :goto_1

    :cond_2
    if-nez p4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_3
    if-ne p4, v3, :cond_5

    goto :goto_2

    :cond_4
    if-nez p4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    :cond_5
    :goto_0
    move p2, v2

    goto :goto_3

    :cond_6
    :goto_1
    move p2, v3

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v1

    :goto_3
    if-ne p2, v2, :cond_8

    return-object v0

    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    const-string p4, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    const/4 v2, 0x0

    if-ne p2, v1, :cond_d

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v3

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->A()I

    move-result p2

    if-lt p1, p2, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->F0(I)F

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/c1;->d(I)Landroid/view/View;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :cond_c
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->A()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v3

    if-ltz p1, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->A()I

    move-result p2

    if-lt p1, p2, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->F0(I)F

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/c1;->d(I)Landroid/view/View;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    :goto_6
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public final W(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->W(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a0(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->A()I

    return-void
.end method

.method public final d()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result p0

    return p0
.end method

.method public final d0(II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->A()I

    return-void
.end method

.method public final e()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final f0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->G0()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0()Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/c1;->d(I)Landroid/view/View;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->l0(Landroidx/recyclerview/widget/c1;)V

    return-void
.end method

.method public final g0(Landroidx/recyclerview/widget/j1;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    :goto_0
    return-void
.end method

.method public final j(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    const/4 p0, 0x0

    return p0
.end method

.method public final k(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    const/4 p0, 0x0

    return p0
.end method

.method public final n(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final r()Landroidx/recyclerview/widget/v0;
    .locals 1

    new-instance p0, Landroidx/recyclerview/widget/v0;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/v0;-><init>(II)V

    return-object p0
.end method

.method public final r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/c1;->d(I)Landroid/view/View;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final s0(I)V
    .locals 0

    return-void
.end method

.method public final t0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->e()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/c1;->d(I)Landroid/view/View;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final z(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->J0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
