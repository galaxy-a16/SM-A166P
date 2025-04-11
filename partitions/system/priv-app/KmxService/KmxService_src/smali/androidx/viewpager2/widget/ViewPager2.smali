.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public c:I

.field public d:Z

.field public final e:Lh1/e;

.field public f:Lh1/i;

.field public g:I

.field public h:Landroid/os/Parcelable;

.field public i:Lh1/n;

.field public j:Lh1/m;

.field public k:Lh1/d;

.field public l:Lh1/f;

.field public m:Lp1/v;

.field public n:Lh1/b;

.field public p:Landroidx/recyclerview/widget/p0;

.field public q:Z

.field public t:Z

.field public u:I

.field public v:Lh1/k;

.field public w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    new-instance v0, Lh1/f;

    invoke-direct {v0}, Lh1/f;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    new-instance v2, Lh1/e;

    invoke-direct {v2, p0, v1}, Lh1/e;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lh1/e;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    iput v2, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->w:I

    new-instance v4, Lh1/k;

    invoke-direct {v4, p0}, Lh1/k;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    new-instance v4, Lh1/n;

    invoke-direct {v4, p0, p1}, Lh1/n;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    sget-object v5, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Landroidx/core/view/j0;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v4, Lh1/i;

    invoke-direct {v4, p0}, Lh1/i;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    iget-object v5, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/u0;)V

    iget-object v4, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    sget-object v7, Lg1/a;->a:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, v4

    invoke-virtual/range {v5 .. v11}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {v4, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    new-instance p2, Lh1/g;

    invoke-direct {p2}, Lh1/g;-><init>()V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh1/d;

    invoke-direct {p1, p0}, Lh1/d;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    new-instance p2, Lp1/v;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    const/4 v4, 0x4

    invoke-direct {p2, p0, p1, v2, v4}, Lp1/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lp1/v;

    new-instance p1, Lh1/m;

    invoke-direct {p1, p0}, Lh1/m;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lh1/m;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/e0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->p(Landroidx/recyclerview/widget/z0;)V

    new-instance p1, Lh1/f;

    invoke-direct {p1}, Lh1/f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Lh1/f;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    iput-object p1, p2, Lh1/d;->a:Lh1/j;

    new-instance p2, Lh1/f;

    invoke-direct {p2, p0, v1}, Lh1/f;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    new-instance v2, Lh1/f;

    invoke-direct {v2, p0, v3}, Lh1/f;-><init>(Landroidx/viewpager2/widget/ViewPager2;I)V

    iget-object p1, p1, Lh1/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Lh1/f;

    iget-object p1, p1, Lh1/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p1, p2}, Lh1/k;->n(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Lh1/f;

    iget-object p1, p1, Lh1/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh1/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-direct {p1, p2}, Lh1/b;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lh1/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Lh1/f;

    iget-object p2, p2, Lh1/f;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/os/Parcelable;

    :cond_2
    iget v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->A0(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Lh1/k;->r()V

    return-void
.end method

.method public final b(I)V
    .locals 9

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-ne p1, v0, :cond_4

    iget-object v3, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    iget v3, v3, Lh1/d;->f:I

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    return-void

    :cond_4
    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    int-to-double v3, v0

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {v0}, Lh1/k;->r()V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    iget v5, v0, Lh1/d;->f:I

    if-nez v5, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    if-nez v5, :cond_7

    invoke-virtual {v0}, Lh1/d;->f()V

    iget-object v0, v0, Lh1/d;->g:Lh1/c;

    iget v3, v0, Lh1/c;->a:I

    int-to-double v3, v3

    iget v0, v0, Lh1/c;->b:F

    float-to-double v5, v0

    add-double/2addr v3, v5

    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    iput v5, v0, Lh1/d;->e:I

    iput-boolean v1, v0, Lh1/d;->m:Z

    iget v6, v0, Lh1/d;->i:I

    if-eq v6, p1, :cond_8

    move v1, v2

    :cond_8
    iput p1, v0, Lh1/d;->i:I

    invoke-virtual {v0, v5}, Lh1/d;->d(I)V

    if-eqz v1, :cond_9

    invoke-virtual {v0, p1}, Lh1/d;->c(I)V

    :cond_9
    int-to-double v0, p1

    sub-double v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_b

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    cmpl-double v0, v0, v3

    if-lez v0, :cond_a

    add-int/lit8 v0, p1, -0x3

    goto :goto_2

    :cond_a
    add-int/lit8 v0, p1, 0x3

    :goto_2
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->A0(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    new-instance v0, Landroidx/recyclerview/widget/f0;

    invoke-direct {v0, p1, p0}, Landroidx/recyclerview/widget/f0;-><init>(ILh1/n;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_b
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->E0(I)V

    :goto_3
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Lh1/m;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-virtual {v0, v1}, Lh1/m;->e(Landroidx/recyclerview/widget/u0;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Lh1/f;

    invoke-virtual {v1, v0}, Lh1/f;->c(I)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    instance-of v1, v0, Lh1/o;

    if-eqz v1, :cond_0

    check-cast v0, Lh1/o;

    iget v0, v0, Lh1/o;->a:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/j0;
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentItem()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    return p0
.end method

.method public getItemDecorationCount()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p0

    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    return p0
.end method

.method public getPageSize()I
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    :goto_0
    sub-int/2addr p0, v0

    return p0
.end method

.method public getScrollState()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Lh1/d;

    iget p0, p0, Lh1/d;->f:I

    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0, p1}, Lh1/k;->o(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->a:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p5, p2

    iput p5, v2, Landroid/graphics/Rect;->bottom:I

    const p2, 0x800033

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0, v2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget p4, p3, Landroid/graphics/Rect;->top:I

    iget p5, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->c()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    invoke-static {v1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lh1/o;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lh1/o;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lh1/o;->b:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    iget-object p1, p1, Lh1/o;->c:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/os/Parcelable;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lh1/o;

    invoke-direct {v1, v0}, Lh1/o;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Lh1/o;->a:I

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    :cond_0
    iput v0, v1, Lh1/o;->b:I

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, v1, Lh1/o;->c:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    :goto_0
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ViewPager2 does not support direct child views"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x2000

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0, p1, p2}, Lh1/k;->p(ILandroid/os/Bundle;)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/j0;)V
    .locals 2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/j0;

    move-result-object v0

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {v1, v0}, Lh1/k;->m(Landroidx/recyclerview/widget/j0;)V

    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Lh1/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/l0;)V

    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/j0;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0, p1}, Lh1/k;->l(Landroidx/recyclerview/widget/j0;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/j0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/l0;)V

    :cond_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Lp1/v;

    iget-object v0, v0, Lp1/v;->c:Ljava/lang/Object;

    check-cast v0, Lh1/d;

    iget-boolean v0, v0, Lh1/d;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->b(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutDirection(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Lh1/k;->r()V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Lh1/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->f1(I)V

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Lh1/k;->r()V

    return-void
.end method

.method public setPageTransformer(Lh1/l;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/p0;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/p0;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Lh1/n;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/p0;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroidx/recyclerview/widget/p0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lh1/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lh1/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Lh1/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Z

    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->v:Lh1/k;

    invoke-virtual {p0}, Lh1/k;->r()V

    return-void
.end method
