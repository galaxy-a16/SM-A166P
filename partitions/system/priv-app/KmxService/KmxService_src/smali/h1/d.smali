.class public final Lh1/d;
.super Landroidx/recyclerview/widget/z0;
.source "SourceFile"


# instance fields
.field public a:Lh1/j;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:Lh1/c;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/z0;-><init>()V

    iput-object p1, p0, Lh1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    iput-object p1, p0, Lh1/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lh1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Lh1/c;

    invoke-direct {p1}, Lh1/c;-><init>()V

    iput-object p1, p0, Lh1/d;->g:Lh1/c;

    invoke-virtual {p0}, Lh1/d;->e()V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget p2, p0, Lh1/d;->e:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget v3, p0, Lh1/d;->f:I

    if-eq v3, v2, :cond_3

    :cond_0
    if-ne p1, v2, :cond_3

    iput-boolean v1, p0, Lh1/d;->m:Z

    iput v2, p0, Lh1/d;->e:I

    iget p1, p0, Lh1/d;->i:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lh1/d;->h:I

    iput v0, p0, Lh1/d;->i:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lh1/d;->h:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lh1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0()I

    move-result p1

    iput p1, p0, Lh1/d;->h:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lh1/d;->d(I)V

    return-void

    :cond_3
    const/4 v3, 0x4

    if-eq p2, v2, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x2

    if-eqz v4, :cond_7

    if-ne p1, v5, :cond_7

    iget-boolean p1, p0, Lh1/d;->k:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v5}, Lh1/d;->d(I)V

    iput-boolean v2, p0, Lh1/d;->j:Z

    :cond_6
    return-void

    :cond_7
    if-eq p2, v2, :cond_9

    if-ne p2, v3, :cond_8

    goto :goto_3

    :cond_8
    move p2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move p2, v2

    :goto_4
    iget-object v3, p0, Lh1/d;->g:Lh1/c;

    if-eqz p2, :cond_d

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lh1/d;->f()V

    iget-boolean p2, p0, Lh1/d;->k:Z

    if-nez p2, :cond_a

    iget p2, v3, Lh1/c;->a:I

    if-eq p2, v0, :cond_c

    iget-object v4, p0, Lh1/d;->a:Lh1/j;

    if-eqz v4, :cond_c

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v6, v1}, Lh1/j;->b(IFI)V

    goto :goto_5

    :cond_a
    iget p2, v3, Lh1/c;->c:I

    if-nez p2, :cond_b

    iget p2, p0, Lh1/d;->h:I

    iget v4, v3, Lh1/c;->a:I

    if-eq p2, v4, :cond_c

    invoke-virtual {p0, v4}, Lh1/d;->c(I)V

    goto :goto_5

    :cond_b
    move v2, v1

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {p0, v1}, Lh1/d;->d(I)V

    invoke-virtual {p0}, Lh1/d;->e()V

    :cond_d
    iget p2, p0, Lh1/d;->e:I

    if-ne p2, v5, :cond_10

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lh1/d;->l:Z

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lh1/d;->f()V

    iget p1, v3, Lh1/c;->c:I

    if-nez p1, :cond_10

    iget p1, p0, Lh1/d;->i:I

    iget p2, v3, Lh1/c;->a:I

    if-eq p1, p2, :cond_f

    if-ne p2, v0, :cond_e

    move p2, v1

    :cond_e
    invoke-virtual {p0, p2}, Lh1/d;->c(I)V

    :cond_f
    invoke-virtual {p0, v1}, Lh1/d;->d(I)V

    invoke-virtual {p0}, Lh1/d;->e()V

    :cond_10
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh1/d;->k:Z

    invoke-virtual {p0}, Lh1/d;->f()V

    iget-boolean v0, p0, Lh1/d;->j:Z

    const/4 v1, -0x1

    iget-object v2, p0, Lh1/d;->g:Lh1/c;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lh1/d;->j:Z

    if-gtz p3, :cond_3

    if-nez p3, :cond_2

    if-gez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    iget-object p3, p0, Lh1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/u0;->B()I

    move-result p3

    if-ne p3, p1, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, v3

    :goto_1
    if-ne p2, p3, :cond_2

    goto :goto_2

    :cond_2
    move p2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p1

    :goto_3
    if-eqz p2, :cond_4

    iget p2, v2, Lh1/c;->c:I

    if-eqz p2, :cond_4

    iget p2, v2, Lh1/c;->a:I

    add-int/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, v2, Lh1/c;->a:I

    :goto_4
    iput p2, p0, Lh1/d;->i:I

    iget p3, p0, Lh1/d;->h:I

    if-eq p3, p2, :cond_7

    goto :goto_5

    :cond_5
    iget p2, p0, Lh1/d;->e:I

    if-nez p2, :cond_7

    iget p2, v2, Lh1/c;->a:I

    if-ne p2, v1, :cond_6

    move p2, v3

    :cond_6
    :goto_5
    invoke-virtual {p0, p2}, Lh1/d;->c(I)V

    :cond_7
    iget p2, v2, Lh1/c;->a:I

    if-ne p2, v1, :cond_8

    move p2, v3

    :cond_8
    iget p3, v2, Lh1/c;->b:F

    iget v0, v2, Lh1/c;->c:I

    iget-object v4, p0, Lh1/d;->a:Lh1/j;

    if-eqz v4, :cond_9

    invoke-virtual {v4, p2, p3, v0}, Lh1/j;->b(IFI)V

    :cond_9
    iget p2, v2, Lh1/c;->a:I

    iget p3, p0, Lh1/d;->i:I

    if-eq p2, p3, :cond_a

    if-ne p3, v1, :cond_b

    :cond_a
    iget p2, v2, Lh1/c;->c:I

    if-nez p2, :cond_b

    iget p2, p0, Lh1/d;->f:I

    if-eq p2, p1, :cond_b

    invoke-virtual {p0, v3}, Lh1/d;->d(I)V

    invoke-virtual {p0}, Lh1/d;->e()V

    :cond_b
    return-void
.end method

.method public final c(I)V
    .locals 0

    iget-object p0, p0, Lh1/d;->a:Lh1/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lh1/j;->c(I)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 2

    iget v0, p0, Lh1/d;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lh1/d;->f:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh1/d;->f:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lh1/d;->f:I

    iget-object p0, p0, Lh1/d;->a:Lh1/j;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lh1/j;->a(I)V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lh1/d;->e:I

    iput v0, p0, Lh1/d;->f:I

    iget-object v1, p0, Lh1/d;->g:Lh1/c;

    const/4 v2, -0x1

    iput v2, v1, Lh1/c;->a:I

    const/4 v3, 0x0

    iput v3, v1, Lh1/c;->b:F

    iput v0, v1, Lh1/c;->c:I

    iput v2, p0, Lh1/d;->h:I

    iput v2, p0, Lh1/d;->i:I

    iput-boolean v0, p0, Lh1/d;->j:Z

    iput-boolean v0, p0, Lh1/d;->k:Z

    iput-boolean v0, p0, Lh1/d;->m:Z

    iput-boolean v0, p0, Lh1/d;->l:Z

    return-void
.end method

.method public final f()V
    .locals 13

    iget-object v0, p0, Lh1/d;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->P0()I

    move-result v1

    iget-object v2, p0, Lh1/d;->g:Lh1/c;

    iput v1, v2, Lh1/c;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    iput v5, v2, Lh1/c;->a:I

    iput v3, v2, Lh1/c;->b:F

    iput v4, v2, Lh1/c;->c:I

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->q(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iput v5, v2, Lh1/c;->a:I

    iput v3, v2, Lh1/c;->b:F

    iput v4, v2, Lh1/c;->c:I

    return-void

    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->C(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->J(Landroid/view/View;)I

    move-result v6

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->L(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Landroidx/recyclerview/widget/u0;->u(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v10

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v10

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    iget v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v10, 0x1

    if-nez v6, :cond_3

    move v6, v10

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    iget-object v11, p0, Lh1/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object p0, p0, Lh1/d;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->B()I

    move-result p0

    if-ne p0, v10, :cond_4

    move p0, v10

    goto :goto_1

    :cond_4
    move p0, v4

    :goto_1
    if-eqz p0, :cond_5

    neg-int v1, v1

    :cond_5
    move v9, v8

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p0, v7

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, p0, v1

    :goto_2
    neg-int p0, v1

    iput p0, v2, Lh1/c;->c:I

    if-gez p0, :cond_17

    new-instance p0, Lh1/a;

    invoke-direct {p0, v0}, Lh1/a;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_9

    :cond_7
    iget v3, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v3, :cond_8

    move v3, v10

    goto :goto_3

    :cond_8
    move v3, v4

    :goto_3
    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v5, v6, v10

    aput v1, v6, v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v6, v4

    :goto_4
    if-ge v6, v1, :cond_d

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_9

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_5

    :cond_9
    sget-object v8, Lh1/a;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    :goto_5
    aget-object v9, v5, v6

    if-eqz v3, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_6
    sub-int/2addr v11, v12

    aput v11, v9, v4

    aget-object v9, v5, v6

    if-eqz v3, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_7
    add-int/2addr v7, v8

    aput v7, v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "null view contained in the view hierarchy"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance v3, Ln/f;

    invoke-direct {v3, p0, v10}, Ln/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move p0, v10

    :goto_8
    if-ge p0, v1, :cond_f

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v5, v3

    aget v3, v3, v10

    aget-object v6, v5, p0

    aget v6, v6, v4

    if-eq v3, v6, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_f
    aget-object p0, v5, v4

    aget v3, p0, v10

    aget p0, p0, v4

    sub-int/2addr v3, p0

    if-gtz p0, :cond_11

    sub-int/2addr v1, v10

    aget-object p0, v5, v1

    aget p0, p0, v10

    if-ge p0, v3, :cond_10

    goto :goto_a

    :cond_10
    :goto_9
    move p0, v10

    goto :goto_b

    :cond_11
    :goto_a
    move p0, v4

    :goto_b
    if-eqz p0, :cond_12

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p0

    if-gt p0, v10, :cond_15

    :cond_12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p0

    move v1, v4

    :goto_c
    if-ge v1, p0, :cond_14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lh1/a;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_13

    move p0, v10

    goto :goto_d

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_14
    move p0, v4

    :goto_d
    if-eqz p0, :cond_15

    move p0, v10

    goto :goto_e

    :cond_15
    move p0, v4

    :goto_e
    if-eqz p0, :cond_16

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, v2, Lh1/c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Page can only be offset by a positive amount, not by %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    if-nez v9, :cond_18

    goto :goto_f

    :cond_18
    int-to-float p0, p0

    int-to-float v0, v9

    div-float v3, p0, v0

    :goto_f
    iput v3, v2, Lh1/c;->b:F

    return-void
.end method
