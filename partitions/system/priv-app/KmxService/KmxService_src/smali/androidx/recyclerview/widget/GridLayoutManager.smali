.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field public F:Z

.field public G:I

.field public H:[I

.field public I:[Landroid/view/View;

.field public final J:Landroid/util/SparseIntArray;

.field public final K:Landroid/util/SparseIntArray;

.field public final L:Landroidx/appcompat/widget/i4;

.field public final M:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/util/SparseIntArray;

    new-instance v1, Landroidx/appcompat/widget/i4;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/i4;-><init>(I)V

    iput-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->q1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/appcompat/widget/i4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/i4;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/u0;->I(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/t0;

    move-result-object p1

    iget p1, p1, Landroidx/recyclerview/widget/t0;->b:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->q1(I)V

    return-void
.end method


# virtual methods
.method public final E0()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->A:Landroidx/recyclerview/widget/z;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final G0(Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/r;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-ge v2, v3, :cond_1

    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/y;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroidx/recyclerview/widget/r;->a(II)V

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    iget v3, p2, Landroidx/recyclerview/widget/y;->d:I

    iget v4, p2, Landroidx/recyclerview/widget/y;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/y;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final K(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final T0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;ZZ)Landroid/view/View;
    .locals 9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result p3

    sub-int/2addr p3, v0

    const/4 p4, -0x1

    move v0, p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    move v8, p4

    move p4, p3

    move p3, v8

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->L0()V

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/c0;->h()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/c0;->f()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    invoke-virtual {p0, v7, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/v0;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v5, :cond_5

    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/c0;->d(Landroid/view/View;)I

    move-result v7

    if-ge v7, v3, :cond_4

    iget-object v7, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/c0;->b(Landroid/view/View;)I

    move-result v7

    if-gt v7, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    move-object v4, v6

    :cond_5
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v5

    :goto_4
    return-object v4
.end method

.method public final V(Landroid/view/View;ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    if-nez v3, :cond_0

    :goto_0
    move-object v3, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->P(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/recyclerview/widget/u0;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/d;->j(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/u;

    iget v7, v6, Landroidx/recyclerview/widget/u;->e:I

    iget v6, v6, Landroidx/recyclerview/widget/u;->f:I

    add-int/2addr v6, v7

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->V(Landroid/view/View;ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    return-object v4

    :cond_4
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->K0(I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_5

    move v5, v8

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->u:Z

    if-eq v5, v10, :cond_6

    move v5, v8

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    const/4 v10, -0x1

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v5

    sub-int/2addr v5, v8

    move v11, v10

    move v12, v11

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v5

    move v11, v5

    move v12, v8

    const/4 v5, 0x0

    :goto_5
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    if-ne v13, v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v8

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v0, v5, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v14

    move v9, v10

    move v15, v9

    move/from16 v16, v12

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v10, v5

    move-object v5, v4

    :goto_7
    if-eq v10, v11, :cond_1a

    move/from16 v17, v11

    invoke-virtual {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v11

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_9

    goto/16 :goto_10

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_b

    if-eq v11, v14, :cond_b

    if-eqz v4, :cond_a

    goto/16 :goto_10

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move/from16 v19, v8

    const/16 v20, 0x1

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/u;

    iget v2, v11, Landroidx/recyclerview/widget/u;->e:I

    move-object/from16 v18, v3

    iget v3, v11, Landroidx/recyclerview/widget/u;->f:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-ne v2, v7, :cond_c

    if-ne v3, v6, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_d

    if-eqz v4, :cond_e

    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_f

    if-nez v5, :cond_f

    :cond_e
    move-object/from16 v21, v5

    goto :goto_9

    :cond_f
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v5

    sub-int v5, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_12

    if-le v5, v8, :cond_10

    goto :goto_9

    :cond_10
    if-ne v5, v8, :cond_16

    if-le v2, v15, :cond_11

    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-ne v13, v5, :cond_16

    :goto_9
    move/from16 v19, v8

    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_d

    :cond_12
    if-nez v4, :cond_16

    move/from16 v19, v8

    iget-object v8, v0, Landroidx/recyclerview/widget/u0;->c:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/a2;->h(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v0, Landroidx/recyclerview/widget/u0;->d:Landroidx/recyclerview/widget/a2;

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/a2;->h(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    const/16 v20, 0x1

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_17

    if-le v5, v12, :cond_14

    goto :goto_c

    :cond_14
    if-ne v5, v12, :cond_17

    if-le v2, v9, :cond_15

    move/from16 v5, v20

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-ne v13, v5, :cond_17

    :goto_c
    move/from16 v5, v20

    goto :goto_d

    :cond_16
    move/from16 v19, v8

    const/16 v20, 0x1

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_18

    iget v4, v11, Landroidx/recyclerview/widget/u;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v8, v3, v2

    move v15, v4

    move-object/from16 v5, v21

    move-object v4, v1

    goto :goto_f

    :cond_18
    iget v5, v11, Landroidx/recyclerview/widget/u;->e:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v12, v3, v2

    move v9, v5

    move/from16 v8, v19

    move-object v5, v1

    goto :goto_f

    :cond_19
    :goto_e
    move/from16 v8, v19

    move-object/from16 v5, v21

    :goto_f
    add-int v10, v10, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v11, v17

    move-object/from16 v3, v18

    goto/16 :goto_7

    :cond_1a
    :goto_10
    move-object/from16 v21, v5

    if-eqz v4, :cond_1b

    goto :goto_11

    :cond_1b
    move-object/from16 v4, v21

    :goto_11
    return-object v4
.end method

.method public final X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->X(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Lc0/l;)V

    const-class p0, Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lc0/l;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Z(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroid/view/View;Lc0/l;)V
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/u;

    if-nez v1, :cond_0

    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/u0;->Y(Landroid/view/View;Lc0/l;)V

    return-void

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/v0;->a()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p1

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 p2, 0x1

    if-nez p0, :cond_1

    iget p0, v0, Landroidx/recyclerview/widget/u;->e:I

    iget p3, v0, Landroidx/recyclerview/widget/u;->f:I

    move v2, p1

    move p1, p0

    move p0, v2

    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_0

    :cond_1
    iget p0, v0, Landroidx/recyclerview/widget/u;->e:I

    iget p3, v0, Landroidx/recyclerview/widget/u;->f:I

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, p3, v0}, Lc0/k;->a(IIIIZ)Lc0/k;

    move-result-object p0

    invoke-virtual {p4, p0}, Lc0/l;->h(Lc0/k;)V

    return-void
.end method

.method public final Z0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/y;Landroidx/recyclerview/widget/x;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    iget v6, v5, Landroidx/recyclerview/widget/c0;->d:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, v5, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/u0;

    iget v5, v5, Landroidx/recyclerview/widget/u0;->m:I

    goto :goto_1

    :goto_0
    iget-object v5, v5, Landroidx/recyclerview/widget/d0;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/recyclerview/widget/u0;

    iget v5, v5, Landroidx/recyclerview/widget/u0;->l:I

    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-eq v5, v6, :cond_0

    move v6, v7

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    aget v8, v8, v9

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->r1()V

    :cond_2
    iget v9, v3, Landroidx/recyclerview/widget/y;->e:I

    if-ne v9, v7, :cond_3

    move v9, v7

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    :goto_4
    iget v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-nez v9, :cond_4

    iget v10, v3, Landroidx/recyclerview/widget/y;->d:I

    invoke-virtual {v0, v10, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v10

    iget v11, v3, Landroidx/recyclerview/widget/y;->d:I

    invoke-virtual {v0, v11, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v11

    add-int/2addr v10, v11

    :cond_4
    const/4 v11, 0x0

    :goto_5
    iget v12, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-ge v11, v12, :cond_9

    iget v12, v3, Landroidx/recyclerview/widget/y;->d:I

    if-ltz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v13

    if-ge v12, v13, :cond_5

    move v12, v7

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_9

    if-lez v10, :cond_9

    iget v12, v3, Landroidx/recyclerview/widget/y;->d:I

    invoke-virtual {v0, v12, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v13

    iget v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-gt v13, v14, :cond_8

    sub-int/2addr v10, v13

    if-gez v10, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/y;->b(Landroidx/recyclerview/widget/c1;)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    goto :goto_7

    :cond_7
    iget-object v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Item at position "

    const-string v3, " requires "

    const-string v4, " spans but GridLayoutManager has only "

    invoke-static {v2, v12, v3, v13, v4}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    const-string v3, " spans."

    invoke-static {v2, v0, v3}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_7
    if-nez v11, :cond_a

    iput-boolean v7, v4, Landroidx/recyclerview/widget/x;->b:Z

    return-void

    :cond_a
    if-eqz v9, :cond_b

    const/4 v12, 0x0

    move v13, v11

    goto :goto_8

    :cond_b
    add-int/lit8 v12, v11, -0x1

    const/4 v7, -0x1

    const/4 v13, -0x1

    :goto_8
    const/4 v14, 0x0

    :goto_9
    if-eq v12, v13, :cond_c

    iget-object v15, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aget-object v15, v15, v12

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroidx/recyclerview/widget/u;

    invoke-static {v15}, Landroidx/recyclerview/widget/u0;->H(Landroid/view/View;)I

    move-result v15

    invoke-virtual {v0, v15, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v15

    iput v15, v10, Landroidx/recyclerview/widget/u;->f:I

    iput v14, v10, Landroidx/recyclerview/widget/u;->e:I

    add-int/2addr v14, v15

    add-int/2addr v12, v7

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_a
    if-ge v2, v11, :cond_13

    iget-object v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aget-object v10, v10, v2

    iget-object v12, v3, Landroidx/recyclerview/widget/y;->k:Ljava/util/List;

    if-nez v12, :cond_e

    if-eqz v9, :cond_d

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual {v0, v10, v13, v12}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_b

    :cond_d
    const/4 v13, -0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v12}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_b

    :cond_e
    const/4 v13, -0x1

    const/4 v12, 0x0

    if-eqz v9, :cond_f

    const/4 v14, 0x1

    invoke-virtual {v0, v10, v13, v14}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    goto :goto_b

    :cond_f
    const/4 v13, 0x1

    invoke-virtual {v0, v10, v12, v13}, Landroidx/recyclerview/widget/u0;->b(Landroid/view/View;IZ)V

    :goto_b
    iget-object v13, v0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v14, v0, Landroidx/recyclerview/widget/GridLayoutManager;->M:Landroid/graphics/Rect;

    if-nez v13, :cond_10

    invoke-virtual {v14, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_c

    :cond_10
    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/RecyclerView;->d0(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_c
    invoke-virtual {v0, v10, v5, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->p1(Landroid/view/View;IZ)V

    iget-object v12, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v12

    if-le v12, v7, :cond_11

    move v7, v12

    :cond_11
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/u;

    iget-object v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v13, v10}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v10, v13

    iget v12, v12, Landroidx/recyclerview/widget/u;->f:I

    int-to-float v12, v12

    div-float/2addr v10, v12

    cmpl-float v12, v10, v1

    if-lez v12, :cond_12

    move v1, v10

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_13
    if-eqz v6, :cond_15

    iget v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v1

    :goto_d
    if-ge v2, v11, :cond_15

    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aget-object v1, v1, v2

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->p1(Landroid/view/View;IZ)V

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, v7, :cond_14

    move v7, v1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v11, :cond_18

    iget-object v2, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/c0;->c(Landroid/view/View;)I

    move-result v5

    if-eq v5, v7, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/u;

    iget-object v6, v5, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v6

    iget v6, v5, Landroidx/recyclerview/widget/u;->e:I

    iget v10, v5, Landroidx/recyclerview/widget/u;->f:I

    invoke-virtual {v0, v6, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(II)I

    move-result v6

    iget v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_16

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v10, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v6, v12, v9, v5, v10}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v5

    sub-int v6, v7, v8

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    sub-int v9, v7, v9

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v6, v12, v8, v5, v10}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v6

    move v5, v9

    :goto_f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/v0;

    invoke-virtual {v0, v2, v5, v6, v8}, Landroidx/recyclerview/widget/u0;->B0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    const/4 v1, 0x0

    iput v7, v4, Landroidx/recyclerview/widget/x;->a:I

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    iget v2, v3, Landroidx/recyclerview/widget/y;->f:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_19

    iget v2, v3, Landroidx/recyclerview/widget/y;->b:I

    sub-int v3, v2, v7

    goto :goto_10

    :cond_19
    iget v3, v3, Landroidx/recyclerview/widget/y;->b:I

    add-int v2, v7, v3

    :goto_10
    move v5, v1

    move v6, v3

    move v3, v2

    move v2, v5

    goto :goto_12

    :cond_1a
    const/4 v5, -0x1

    iget v2, v3, Landroidx/recyclerview/widget/y;->f:I

    if-ne v2, v5, :cond_1b

    iget v2, v3, Landroidx/recyclerview/widget/y;->b:I

    sub-int v3, v2, v7

    goto :goto_11

    :cond_1b
    iget v3, v3, Landroidx/recyclerview/widget/y;->b:I

    add-int v2, v7, v3

    :goto_11
    move v6, v1

    move v5, v3

    move v3, v6

    :goto_12
    if-ge v1, v11, :cond_20

    iget-object v7, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/u;

    iget v9, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v2

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    iget v10, v8, Landroidx/recyclerview/widget/u;->e:I

    sub-int/2addr v9, v10

    aget v5, v5, v9

    add-int/2addr v2, v5

    iget-object v5, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result v5

    sub-int v5, v2, v5

    goto :goto_13

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v2

    iget-object v5, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget v9, v8, Landroidx/recyclerview/widget/u;->e:I

    aget v5, v5, v9

    add-int/2addr v5, v2

    iget-object v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    goto :goto_13

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v3

    iget-object v6, v0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget v9, v8, Landroidx/recyclerview/widget/u;->e:I

    aget v6, v6, v9

    add-int/2addr v3, v6

    iget-object v6, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/c0;->n(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v3

    move/from16 v17, v6

    move v6, v3

    move/from16 v3, v17

    :goto_13
    invoke-static {v7, v5, v6, v2, v3}, Landroidx/recyclerview/widget/u0;->P(Landroid/view/View;IIII)V

    invoke-virtual {v8}, Landroidx/recyclerview/widget/v0;->c()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {v8}, Landroidx/recyclerview/widget/v0;->b()Z

    move-result v8

    if-eqz v8, :cond_1f

    :cond_1e
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroidx/recyclerview/widget/x;->c:Z

    :cond_1f
    iget-boolean v8, v4, Landroidx/recyclerview/widget/x;->d:Z

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    or-int/2addr v7, v8

    iput-boolean v7, v4, Landroidx/recyclerview/widget/x;->d:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    iget-object v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final a0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/i4;->e()V

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final a1(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;Landroidx/recyclerview/widget/w;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->r1()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Landroidx/recyclerview/widget/j1;->g:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/w;->b:I

    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroidx/recyclerview/widget/w;->b:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Landroidx/recyclerview/widget/w;->b:I

    invoke-virtual {p0, p4, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroidx/recyclerview/widget/w;->b:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/w;->b:I

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    if-eqz p1, :cond_4

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-eq p1, p2, :cond_5

    :cond_4
    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    :cond_5
    return-void
.end method

.method public final b0()V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/i4;->e()V

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final c0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/i4;->e()V

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final d0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/i4;->e()V

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final e0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p0}, Landroidx/appcompat/widget/i4;->e()V

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/v0;)Z
    .locals 0

    instance-of p0, p1, Landroidx/recyclerview/widget/u;

    return p0
.end method

.method public final f0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)V
    .locals 7

    iget-boolean v0, p2, Landroidx/recyclerview/widget/j1;->g:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/util/SparseIntArray;

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->w()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/u0;->v(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/u;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/v0;->a()I

    move-result v5

    iget v6, v4, Landroidx/recyclerview/widget/u;->f:I

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v4, v4, Landroidx/recyclerview/widget/u;->e:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->f0(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)V

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final g0(Landroidx/recyclerview/widget/j1;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g0(Landroidx/recyclerview/widget/j1;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:Z

    return-void
.end method

.method public final g1(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->g1(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final k1(I)V
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final l1(II)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    sub-int v1, p0, p1

    aget v1, v0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    add-int/2addr p2, p1

    aget p2, p0, p2

    aget p0, p0, p1

    sub-int/2addr p2, p0

    return p2
.end method

.method public final m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 1

    iget-boolean p3, p3, Landroidx/recyclerview/widget/j1;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/widget/i4;->b(II)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/c1;->b(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    invoke-virtual {v0, p2, p0}, Landroidx/appcompat/widget/i4;->b(II)I

    move-result p0

    return p0
.end method

.method public final n(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->I0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final n1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    iget-boolean p3, p3, Landroidx/recyclerview/widget/j1;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    if-nez p3, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/widget/i4;->c(II)I

    move-result p0

    return p0

    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/c1;->b(I)I

    move-result p2

    if-ne p2, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    invoke-virtual {v0, p2, p0}, Landroidx/appcompat/widget/i4;->c(II)I

    move-result p0

    return p0
.end method

.method public final o(Landroidx/recyclerview/widget/j1;)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->J0(Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final o1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    iget-boolean p3, p3, Landroidx/recyclerview/widget/j1;->g:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->J:Landroid/util/SparseIntArray;

    const/4 p3, -0x1

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, p3, :cond_1

    return p0

    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/c1;->b(I)I

    move-result p0

    if-ne p0, p3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v1
.end method

.method public final p1(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/u;

    iget-object v1, v0, Landroidx/recyclerview/widget/v0;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/u;->e:I

    iget v4, v0, Landroidx/recyclerview/widget/u;->f:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->l1(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/u0;->m:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->r:Landroidx/recyclerview/widget/c0;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/c0;->i()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/u0;->l:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/u0;->x(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/v0;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/u0;->B0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/u0;->z0(Landroid/view/View;IILandroidx/recyclerview/widget/v0;)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final q1(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->F:Z

    if-lt p1, v0, :cond_1

    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->L:Landroidx/appcompat/widget/i4;

    invoke-virtual {p1}, Landroidx/appcompat/widget/i4;->e()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->q0()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Span count should be at least 1. Provided "

    invoke-static {v0, p1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r()Landroidx/recyclerview/widget/v0;
    .locals 2

    iget p0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/u;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/u;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/u;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/u;-><init>(II)V

    return-object p0
.end method

.method public final r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->r1()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->r0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final r1()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/u0;->n:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/u0;->o:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->k1(I)V

    return-void
.end method

.method public final s(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/v0;
    .locals 0

    new-instance p0, Landroidx/recyclerview/widget/u;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public final t(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/v0;
    .locals 0

    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/recyclerview/widget/u;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/u;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final t0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->r1()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->I:[Landroid/view/View;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->t0(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    return p0
.end method

.method public final w0(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->w0(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->E()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->F()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->G()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->D()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/i0;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Landroidx/core/view/x0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/i0;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->H:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    iget-object v0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/i0;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/u0;->g(III)I

    move-result p1

    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/u0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->m(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public final y(Landroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    if-ge v0, v1, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    return p0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p1

    add-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    if-ge p1, v0, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->G:I

    return p0

    :cond_2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    if-ge v0, v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/j1;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->m1(ILandroidx/recyclerview/widget/c1;Landroidx/recyclerview/widget/j1;)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
