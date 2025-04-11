.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final synthetic u:I


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lo/g;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Lp/o;

.field public k:Lp/i;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public final n:Landroid/util/SparseArray;

.field public final p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

.field public q:I

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lo/g;

    invoke-direct {p1}, Lo/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lp/i;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/o;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    new-instance p1, Lo/g;

    invoke-direct {p1}, Lo/g;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lp/i;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/o;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/o;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v0

    if-lez p0, :cond_0

    move v2, p0

    :cond_0
    return v2
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lo/f;
    .locals 0

    if-ne p1, p0, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lp/g;

    iget-object p0, p0, Lp/g;->k0:Lo/f;

    :goto_0
    return-object p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    iput-object p0, v0, Lo/f;->a0:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iput-object v1, v0, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iget-object v2, v0, Lo/g;->m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

    iput-object v1, v2, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lp/r;->b:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v2, v4

    :goto_0
    if-ge v2, p2, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    goto :goto_2

    :cond_0
    const/16 v5, 0xa

    if-ne v3, v5, :cond_1

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_1
    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    if-ne v3, v5, :cond_3

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_3
    const/16 v5, 0x5a

    if-ne v3, v5, :cond_4

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_4
    const/16 v5, 0x27

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    new-instance v5, Lp/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lp/i;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lp/i;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lp/i;

    goto :goto_2

    :cond_5
    const/16 v5, 0x12

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v5, Lp/o;

    invoke-direct {v5}, Lp/o;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lp/o;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iput p0, v0, Lo/g;->w0:I

    const/16 p0, 0x200

    invoke-virtual {v0, p0}, Lo/g;->P(I)Z

    move-result p0

    sput-boolean p0, Ln/d;->p:Z

    return-void
.end method

.method public final c()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne v2, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lp/g;

    return p0
.end method

.method public final d(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/o;->d:I

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/o;->c:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    aget-object v7, v6, v1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v4

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float/2addr v6, v4

    float-to-int v6, v6

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final f()Z
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Lo/f;->y()V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    if-eqz v3, :cond_9

    move v10, v2

    :goto_4
    if-ge v10, v5, :cond_9

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v8, :cond_4

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-nez v13, :cond_6

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_6

    if-eq v13, v0, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_6

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_6
    if-ne v13, v0, :cond_7

    :goto_5
    move-object v11, v9

    goto :goto_6

    :cond_7
    if-nez v13, :cond_8

    move-object v11, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lp/g;

    iget-object v11, v11, Lp/g;->k0:Lo/f;

    :goto_6
    iput-object v12, v11, Lo/f;->c0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-eq v10, v8, :cond_a

    move v10, v2

    :goto_7
    if-ge v10, v5, :cond_a

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    if-eqz v10, :cond_b

    invoke-virtual {v10, v0}, Lp/o;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_b
    iget-object v10, v9, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_13

    move v13, v2

    :goto_8
    if-ge v13, v11, :cond_13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp/d;

    invoke-virtual {v14}, Landroid/view/View;->isInEditMode()Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v15, v14, Lp/d;->e:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lp/d;->setIds(Ljava/lang/String;)V

    :cond_c
    iget-object v15, v14, Lp/d;->d:Lo/m;

    if-nez v15, :cond_d

    goto/16 :goto_b

    :cond_d
    iput v2, v15, Lo/m;->l0:I

    iget-object v15, v15, Lo/m;->k0:[Lo/f;

    invoke-static {v15, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v15, v2

    :goto_9
    iget v7, v14, Lp/d;->b:I

    if-ge v15, v7, :cond_12

    iget-object v7, v14, Lp/d;->a:[I

    aget v7, v7, v15

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    if-nez v17, :cond_e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v14, Lp/d;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v14, v0, v7}, Lp/d;->e(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v12, v14, Lp/d;->a:[I

    aput v2, v12, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/view/View;

    :cond_e
    move-object/from16 v2, v17

    if-eqz v2, :cond_11

    iget-object v7, v14, Lp/d;->d:Lo/m;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v2, v7, :cond_11

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    iget v8, v7, Lo/m;->l0:I

    add-int/2addr v8, v4

    iget-object v12, v7, Lo/m;->k0:[Lo/f;

    array-length v4, v12

    if-le v8, v4, :cond_10

    array-length v4, v12

    const/4 v8, 0x2

    mul-int/2addr v4, v8

    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lo/f;

    iput-object v4, v7, Lo/m;->k0:[Lo/f;

    :cond_10
    iget-object v4, v7, Lo/m;->k0:[Lo/f;

    iget v8, v7, Lo/m;->l0:I

    aput-object v2, v4, v8

    const/4 v2, 0x1

    add-int/2addr v8, v2

    iput v8, v7, Lo/m;->l0:I

    :cond_11
    :goto_a
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    goto :goto_9

    :cond_12
    iget-object v2, v14, Lp/d;->d:Lo/m;

    invoke-interface {v2}, Lo/l;->a()V

    :goto_b
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto/16 :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v5, :cond_14

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_15

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_e
    if-ge v4, v5, :cond_41

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v8

    if-nez v8, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lp/g;

    iget-object v10, v9, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v8, Lo/f;->O:Lo/f;

    if-eqz v10, :cond_17

    check-cast v10, Lo/n;

    iget-object v10, v10, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lo/f;->y()V

    :cond_17
    iput-object v9, v8, Lo/f;->O:Lo/f;

    invoke-virtual {v15}, Lp/g;->a()V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    iput v10, v8, Lo/f;->b0:I

    iput-object v7, v8, Lo/f;->a0:Ljava/lang/Object;

    instance-of v10, v7, Lp/d;

    if-eqz v10, :cond_18

    check-cast v7, Lp/d;

    iget-boolean v10, v9, Lo/g;->o0:Z

    invoke-virtual {v7, v8, v10}, Lp/d;->g(Lo/f;Z)V

    :cond_18
    iget-boolean v7, v15, Lp/g;->Y:Z

    if-eqz v7, :cond_1c

    check-cast v8, Lo/k;

    iget v7, v15, Lp/g;->h0:I

    iget v10, v15, Lp/g;->i0:I

    iget v11, v15, Lp/g;->j0:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v13, v11, v12

    if-eqz v13, :cond_19

    if-lez v13, :cond_1b

    iput v11, v8, Lo/k;->k0:F

    const/4 v11, -0x1

    iput v11, v8, Lo/k;->l0:I

    iput v11, v8, Lo/k;->m0:I

    goto :goto_f

    :cond_19
    const/4 v11, -0x1

    if-eq v7, v11, :cond_1a

    if-le v7, v11, :cond_1b

    iput v12, v8, Lo/k;->k0:F

    iput v7, v8, Lo/k;->l0:I

    iput v11, v8, Lo/k;->m0:I

    goto :goto_f

    :cond_1a
    if-eq v10, v11, :cond_1b

    if-le v10, v11, :cond_1b

    iput v12, v8, Lo/k;->k0:F

    iput v11, v8, Lo/k;->l0:I

    iput v10, v8, Lo/k;->m0:I

    :cond_1b
    :goto_f
    move/from16 v19, v1

    move/from16 v16, v5

    move-object/from16 v18, v9

    const/4 v0, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v11, -0x1

    goto/16 :goto_20

    :cond_1c
    iget v7, v15, Lp/g;->a0:I

    iget v10, v15, Lp/g;->b0:I

    iget v14, v15, Lp/g;->c0:I

    iget v13, v15, Lp/g;->d0:I

    iget v12, v15, Lp/g;->e0:I

    iget v11, v15, Lp/g;->f0:I

    iget v0, v15, Lp/g;->g0:F

    move/from16 v16, v5

    iget v5, v15, Lp/g;->m:I

    move-object/from16 v18, v9

    const/4 v9, -0x1

    if-eq v5, v9, :cond_1e

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lo/f;

    if-eqz v12, :cond_1d

    iget v0, v15, Lp/g;->o:F

    iget v14, v15, Lp/g;->n:I

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v5, 0x0

    move-object v10, v8

    move-object v11, v13

    move-object v9, v15

    move v15, v5

    invoke-virtual/range {v10 .. v15}, Lo/f;->r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    iput v0, v8, Lo/f;->x:F

    goto :goto_10

    :cond_1d
    move-object v9, v15

    :goto_10
    move/from16 v19, v1

    goto/16 :goto_16

    :cond_1e
    move v5, v9

    move-object v9, v15

    if-eq v7, v5, :cond_1f

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/f;

    if-eqz v7, :cond_20

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object v5, v7

    move-object v7, v10

    move/from16 v19, v15

    move-object v15, v7

    goto :goto_11

    :cond_1f
    if-eq v10, v5, :cond_20

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/f;

    if-eqz v5, :cond_20

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v19, v15

    move-object v15, v10

    :goto_11
    move-object v10, v8

    move/from16 v20, v11

    move-object v11, v7

    move v7, v12

    move-object v12, v5

    move v5, v13

    move-object v13, v15

    move v15, v14

    move/from16 v14, v19

    move/from16 v19, v1

    move v1, v15

    move v15, v7

    invoke-virtual/range {v10 .. v15}, Lo/f;->r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_12

    :cond_20
    move/from16 v19, v1

    move/from16 v20, v11

    move v5, v13

    move v1, v14

    :goto_12
    const/4 v7, -0x1

    if-eq v1, v7, :cond_21

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_22

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v12, v1

    move-object v13, v10

    move v14, v11

    move-object v11, v5

    goto :goto_13

    :cond_21
    if-eq v5, v7, :cond_22

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_22

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object v12, v1

    move-object v11, v5

    move-object v13, v11

    move v14, v7

    :goto_13
    move-object v10, v8

    move/from16 v15, v20

    invoke-virtual/range {v10 .. v15}, Lo/f;->r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_22
    iget v1, v9, Lp/g;->h:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_23

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_24

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v9, Lp/g;->u:I

    move-object v12, v1

    move-object v13, v7

    move v14, v10

    move v15, v11

    move-object v11, v13

    goto :goto_14

    :cond_23
    iget v1, v9, Lp/g;->i:I

    if-eq v1, v5, :cond_24

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_24

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v9, Lp/g;->u:I

    move-object v12, v1

    move-object v13, v7

    move v14, v10

    move v15, v11

    move-object v11, v5

    :goto_14
    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Lo/f;->r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_24
    iget v1, v9, Lp/g;->j:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_25

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_26

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v12, v9, Lp/g;->w:I

    move-object v13, v10

    move v14, v11

    move v15, v12

    move-object v12, v1

    move-object v11, v7

    goto :goto_15

    :cond_25
    iget v1, v9, Lp/g;->k:I

    if-eq v1, v5, :cond_26

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    if-eqz v1, :cond_26

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v10, v9, Lp/g;->w:I

    move-object v12, v1

    move-object v11, v5

    move-object v13, v11

    move v14, v7

    move v15, v10

    :goto_15
    move-object v10, v8

    invoke-virtual/range {v10 .. v15}, Lo/f;->r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    :cond_26
    iget v1, v9, Lp/g;->l:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v5, v9, Lp/g;->l:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/f;

    if-eqz v5, :cond_27

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Lp/g;

    if-eqz v7, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lp/g;

    const/4 v7, 0x1

    iput-boolean v7, v9, Lp/g;->X:Z

    iput-boolean v7, v1, Lp/g;->X:Z

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v10}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v11

    invoke-virtual {v5, v10}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v5

    const/4 v10, -0x1

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12, v10, v7}, Lo/d;->b(Lo/d;IIZ)Z

    iput-boolean v7, v8, Lo/f;->y:Z

    iget-object v1, v1, Lp/g;->k0:Lo/f;

    iput-boolean v7, v1, Lo/f;->y:Z

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    invoke-virtual {v1}, Lo/d;->j()V

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    invoke-virtual {v1}, Lo/d;->j()V

    :cond_27
    const/4 v1, 0x0

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_28

    iput v0, v8, Lo/f;->Y:F

    :cond_28
    iget v0, v9, Lp/g;->A:F

    cmpl-float v5, v0, v1

    if-ltz v5, :cond_29

    iput v0, v8, Lo/f;->Z:F

    :cond_29
    :goto_16
    if-eqz v3, :cond_2b

    iget v0, v9, Lp/g;->P:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2a

    iget v5, v9, Lp/g;->Q:I

    if-eq v5, v1, :cond_2b

    :cond_2a
    iget v1, v9, Lp/g;->Q:I

    iput v0, v8, Lo/f;->T:I

    iput v1, v8, Lo/f;->U:I

    :cond_2b
    iget-boolean v0, v9, Lp/g;->V:Z

    const/4 v1, -0x2

    if-nez v0, :cond_2e

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2d

    iget-boolean v0, v9, Lp/g;->S:Z

    if-eqz v0, :cond_2c

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_17

    :cond_2c
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_17
    invoke-virtual {v8, v0}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v0, Lo/d;->g:I

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v0, Lo/d;->g:I

    goto :goto_18

    :cond_2d
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lo/f;->G(I)V

    goto :goto_18

    :cond_2e
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v8, v0}, Lo/f;->G(I)V

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v0, v1, :cond_2f

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_2f
    :goto_18
    iget-boolean v0, v9, Lp/g;->W:Z

    if-nez v0, :cond_32

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v0, v11, :cond_31

    iget-boolean v0, v9, Lp/g;->T:Z

    if-eqz v0, :cond_30

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_19

    :cond_30
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :goto_19
    invoke-virtual {v8, v0}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Lo/d;->g:I

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Lo/d;->g:I

    goto :goto_1a

    :cond_31
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lo/f;->D(I)V

    goto :goto_1a

    :cond_32
    const/4 v11, -0x1

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v8, v0}, Lo/f;->D(I)V

    iget v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v0, v1, :cond_33

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_33
    :goto_1a
    iget-object v0, v9, Lp/g;->B:Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_1e

    :cond_34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_37

    add-int/lit8 v7, v1, -0x1

    if-ge v5, v7, :cond_37

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v7, "W"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/4 v7, 0x0

    goto :goto_1b

    :cond_35
    const-string v7, "H"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    goto :goto_1b

    :cond_36
    move v7, v11

    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_37
    move v7, v11

    const/4 v5, 0x0

    :goto_1c
    const/16 v10, 0x3a

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_39

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_39

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3a

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v5, 0x0

    cmpl-float v10, v1, v5

    if-lez v10, :cond_3a

    cmpl-float v10, v0, v5

    if-lez v10, :cond_3a

    const/4 v5, 0x1

    if-ne v7, v5, :cond_38

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_1d

    :cond_38
    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1d

    :cond_39
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3a

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1d

    :catch_1
    :cond_3a
    const/4 v0, 0x0

    :goto_1d
    const/4 v1, 0x0

    cmpl-float v5, v0, v1

    if-lez v5, :cond_3c

    iput v0, v8, Lo/f;->R:F

    iput v7, v8, Lo/f;->S:I

    goto :goto_1f

    :cond_3b
    :goto_1e
    const/4 v1, 0x0

    iput v1, v8, Lo/f;->R:F

    :cond_3c
    :goto_1f
    iget v0, v9, Lp/g;->D:F

    iget-object v1, v8, Lo/f;->f0:[F

    const/4 v5, 0x0

    aput v0, v1, v5

    iget v0, v9, Lp/g;->E:F

    const/4 v7, 0x1

    aput v0, v1, v7

    iget v0, v9, Lp/g;->F:I

    iput v0, v8, Lo/f;->d0:I

    iget v0, v9, Lp/g;->G:I

    iput v0, v8, Lo/f;->e0:I

    iget v0, v9, Lp/g;->H:I

    iget v1, v9, Lp/g;->J:I

    iget v10, v9, Lp/g;->L:I

    iget v12, v9, Lp/g;->N:F

    iput v0, v8, Lo/f;->l:I

    iput v1, v8, Lo/f;->o:I

    const v1, 0x7fffffff

    if-ne v10, v1, :cond_3d

    move v10, v5

    :cond_3d
    iput v10, v8, Lo/f;->p:I

    iput v12, v8, Lo/f;->q:F

    const/4 v10, 0x0

    cmpl-float v13, v12, v10

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v13, :cond_3e

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3e

    if-nez v0, :cond_3e

    const/4 v0, 0x2

    iput v0, v8, Lo/f;->l:I

    :cond_3e
    iget v0, v9, Lp/g;->I:I

    iget v12, v9, Lp/g;->K:I

    iget v13, v9, Lp/g;->M:I

    iget v9, v9, Lp/g;->O:F

    iput v0, v8, Lo/f;->m:I

    iput v12, v8, Lo/f;->r:I

    if-ne v13, v1, :cond_3f

    move v13, v5

    :cond_3f
    iput v13, v8, Lo/f;->s:I

    iput v9, v8, Lo/f;->t:F

    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-lez v1, :cond_40

    cmpg-float v1, v9, v10

    if-gez v1, :cond_40

    if-nez v0, :cond_40

    const/4 v0, 0x2

    iput v0, v8, Lo/f;->m:I

    goto :goto_20

    :cond_40
    const/4 v0, 0x2

    :goto_20
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    move-object/from16 v9, v18

    move/from16 v1, v19

    goto/16 :goto_e

    :cond_41
    move/from16 v19, v1

    return v19
.end method

.method public final forceLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->forceLayout()V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lp/g;

    invoke-direct {p0}, Lp/g;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lp/g;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lp/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lp/g;

    invoke-direct {p0, p1}, Lp/g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getMaxHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return p0
.end method

.method public getMaxWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    return p0
.end method

.method public getOptimizationLevel()I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    iget p0, p0, Lo/g;->w0:I

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lp/g;

    iget-object v1, v0, Lp/g;->k0:Lo/f;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lp/g;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lp/g;->Z:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lo/f;->o()I

    move-result v0

    invoke-virtual {v1}, Lo/f;->p()I

    move-result v2

    invoke-virtual {v1}, Lo/f;->n()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lo/f;->l()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    :goto_2
    if-ge p3, p1, :cond_2

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lp/d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-eqz v7, :cond_0

    iput-boolean v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    if-nez v3, :cond_3

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-ne v3, v1, :cond_2

    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-ne v9, v2, :cond_2

    invoke-virtual {v8}, Lo/f;->n()I

    move-result v3

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v4

    :goto_2
    iget-boolean v5, v8, Lo/g;->x0:Z

    goto :goto_3

    :cond_2
    if-ne v3, v1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v7, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v9

    if-lt v3, v9, :cond_3

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {v8}, Lo/f;->n()I

    move-result v3

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v4

    goto :goto_2

    :goto_3
    iget-boolean v6, v8, Lo/g;->y0:Z

    goto/16 :goto_3c

    :cond_3
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Z

    move-result v3

    iput-boolean v3, v8, Lo/g;->o0:Z

    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    iget-object v9, v8, Lo/g;->l0:Lp1/v;

    if-eqz v3, :cond_4

    iput-boolean v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v9, v8}, Lp1/v;->q(Lo/g;)V

    :cond_4
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v5, v14, v15

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v7

    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iput v14, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->a:I

    iput v15, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b:I

    iput v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->c:I

    iput v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->d:I

    iput v1, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->e:I

    iput v2, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v15, :cond_6

    if-lez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Z

    move-result v19

    if-eqz v19, :cond_7

    move v15, v1

    :cond_7
    :goto_5
    sub-int/2addr v11, v7

    sub-int/2addr v13, v5

    iget v1, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->d:I

    iget v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/o;->c:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/high16 v4, -0x80000000

    if-eq v10, v4, :cond_b

    if-eqz v10, :cond_9

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v10, v4, :cond_8

    move-object v4, v6

    goto :goto_6

    :cond_8
    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v4, v5

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    move-object v4, v6

    goto :goto_8

    :cond_9
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v7, :cond_c

    :goto_7
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v4, v20

    goto :goto_8

    :cond_c
    move v2, v11

    :goto_8
    move-object/from16 v20, v6

    const/high16 v6, -0x80000000

    if-eq v12, v6, :cond_10

    if-eqz v12, :cond_e

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_d

    move-object/from16 v6, v20

    goto :goto_9

    :cond_d
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v6, v1

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v6

    move/from16 v18, v13

    move-object/from16 v6, v20

    goto :goto_b

    :cond_e
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v18, v13

    const/4 v7, 0x0

    goto :goto_b

    :cond_10
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez v7, :cond_11

    :goto_a
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v18

    move/from16 v18, v13

    goto :goto_b

    :cond_11
    move v7, v13

    move/from16 v18, v7

    :goto_b
    invoke-virtual {v8}, Lo/f;->n()I

    move-result v13

    move/from16 v20, v11

    iget-object v11, v8, Lo/g;->m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

    if-ne v2, v13, :cond_12

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v13

    if-eq v7, v13, :cond_13

    :cond_12
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c:Z

    :cond_13
    const/4 v13, 0x0

    iput v13, v8, Lo/f;->T:I

    iput v13, v8, Lo/f;->U:I

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v13, v5

    move-object/from16 v21, v11

    iget-object v11, v8, Lo/f;->w:[I

    move/from16 v22, v12

    const/4 v12, 0x0

    aput v13, v11, v12

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v13, v1

    const/16 v16, 0x1

    aput v13, v11, v16

    iput v12, v8, Lo/f;->W:I

    iput v12, v8, Lo/f;->X:I

    invoke-virtual {v8, v4}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v8, v2}, Lo/f;->G(I)V

    invoke-virtual {v8, v6}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v8, v7}, Lo/f;->D(I)V

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    sub-int/2addr v2, v5

    if-gez v2, :cond_14

    const/4 v2, 0x0

    :cond_14
    iput v2, v8, Lo/f;->W:I

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int v1, v2, v1

    if-gez v1, :cond_15

    const/4 v1, 0x0

    :cond_15
    iput v1, v8, Lo/f;->X:I

    iput v15, v8, Lo/g;->q0:I

    iput v14, v8, Lo/g;->r0:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iget-object v2, v8, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v8}, Lo/f;->n()I

    move-result v4

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v5

    const/16 v6, 0x80

    invoke-static {v3, v6}, Lkotlin/jvm/internal/m;->e(II)Z

    move-result v6

    const/16 v7, 0x40

    if-nez v6, :cond_17

    invoke-static {v3, v7}, Lkotlin/jvm/internal/m;->e(II)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v3, 0x1

    :goto_d
    if-eqz v3, :cond_20

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v2, :cond_20

    iget-object v14, v8, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/f;

    iget-object v15, v14, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x0

    aget-object v7, v15, v19

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v12, :cond_18

    const/4 v7, 0x1

    goto :goto_f

    :cond_18
    const/4 v7, 0x0

    :goto_f
    const/16 v16, 0x1

    aget-object v15, v15, v16

    if-ne v15, v12, :cond_19

    const/4 v12, 0x1

    goto :goto_10

    :cond_19
    const/4 v12, 0x0

    :goto_10
    if-eqz v7, :cond_1a

    if-eqz v12, :cond_1a

    iget v7, v14, Lo/f;->R:F

    const/4 v12, 0x0

    cmpl-float v7, v7, v12

    if-lez v7, :cond_1a

    const/4 v7, 0x1

    goto :goto_11

    :cond_1a
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v14}, Lo/f;->t()Z

    move-result v12

    if-eqz v12, :cond_1b

    if-eqz v7, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-virtual {v14}, Lo/f;->u()Z

    move-result v12

    if-eqz v12, :cond_1c

    if-eqz v7, :cond_1c

    goto :goto_12

    :cond_1c
    instance-of v7, v14, Lo/i;

    if-eqz v7, :cond_1d

    goto :goto_12

    :cond_1d
    invoke-virtual {v14}, Lo/f;->t()Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-virtual {v14}, Lo/f;->u()Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_12

    :cond_1e
    add-int/lit8 v13, v13, 0x1

    const/16 v7, 0x40

    goto :goto_e

    :cond_1f
    :goto_12
    const/4 v3, 0x0

    :cond_20
    const/high16 v7, 0x40000000    # 2.0f

    move/from16 v12, v22

    if-ne v10, v7, :cond_21

    if-eq v12, v7, :cond_22

    :cond_21
    if-eqz v6, :cond_23

    :cond_22
    const/4 v7, 0x1

    goto :goto_13

    :cond_23
    const/4 v7, 0x0

    :goto_13
    and-int/2addr v3, v7

    if-eqz v3, :cond_42

    const/4 v7, 0x0

    aget v14, v11, v7

    move/from16 v7, v20

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v14, 0x1

    aget v11, v11, v14

    move/from16 v15, v18

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v10, v15, :cond_24

    invoke-virtual {v8}, Lo/f;->n()I

    move-result v13

    if-eq v13, v7, :cond_24

    invoke-virtual {v8, v7}, Lo/f;->G(I)V

    move-object/from16 v7, v21

    iput-boolean v14, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    goto :goto_14

    :cond_24
    move-object/from16 v7, v21

    :goto_14
    if-ne v12, v15, :cond_25

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v13

    if-eq v13, v11, :cond_25

    invoke-virtual {v8, v11}, Lo/f;->D(I)V

    iput-boolean v14, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    :cond_25
    if-ne v10, v15, :cond_3b

    if-ne v12, v15, :cond_3b

    and-int/2addr v6, v14

    iget-boolean v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    iget-object v13, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    if-nez v11, :cond_27

    iget-boolean v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c:Z

    if-eqz v11, :cond_26

    goto :goto_15

    :cond_26
    const/4 v11, 0x0

    goto :goto_17

    :cond_27
    :goto_15
    iget-object v11, v13, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_16
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_28

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/f;

    invoke-virtual {v14}, Lo/f;->i()V

    const/4 v15, 0x0

    iput-boolean v15, v14, Lo/f;->a:Z

    iget-object v15, v14, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->n()V

    iget-object v14, v14, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->m()V

    goto :goto_16

    :cond_28
    invoke-virtual {v13}, Lo/f;->i()V

    const/4 v11, 0x0

    iput-boolean v11, v13, Lo/f;->a:Z

    iget-object v14, v13, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->n()V

    iget-object v14, v13, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->m()V

    iput-boolean v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c:Z

    :goto_17
    iget-object v14, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d:Lo/g;

    invoke-virtual {v7, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Lo/g;)V

    iput v11, v13, Lo/f;->T:I

    iput v11, v13, Lo/f;->U:I

    invoke-virtual {v13, v11}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    iget-boolean v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    if-eqz v11, :cond_29

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c()V

    :cond_29
    invoke-virtual {v13}, Lo/f;->o()I

    move-result v11

    invoke-virtual {v13}, Lo/f;->p()I

    move-result v0

    move/from16 v20, v3

    iget-object v3, v13, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v3, v13, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g()V

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v21, v1

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e:Ljava/util/ArrayList;

    if-eq v14, v3, :cond_2b

    if-ne v15, v3, :cond_2a

    goto :goto_18

    :cond_2a
    move/from16 v22, v4

    goto :goto_1a

    :cond_2b
    :goto_18
    if-eqz v6, :cond_2d

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    invoke-virtual/range {v22 .. v22}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->k()Z

    move-result v22

    if-nez v22, :cond_2c

    const/4 v6, 0x0

    :cond_2d
    if-eqz v6, :cond_2e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v3, :cond_2e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    move/from16 v22, v4

    const/4 v3, 0x0

    invoke-virtual {v7, v13, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d(Lo/g;I)I

    move-result v4

    invoke-virtual {v13, v4}, Lo/f;->G(I)V

    iget-object v3, v13, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v13}, Lo/f;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_19

    :cond_2e
    move/from16 v22, v4

    :goto_19
    if-eqz v6, :cond_2f

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v3, :cond_2f

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v3}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v13, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d(Lo/g;I)I

    move-result v4

    invoke-virtual {v13, v4}, Lo/f;->D(I)V

    iget-object v3, v13, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v13}, Lo/f;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_2f
    :goto_1a
    iget-object v3, v13, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v6, v3, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v24, v5

    if-eq v6, v4, :cond_31

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_30

    goto :goto_1b

    :cond_30
    const/4 v0, 0x0

    goto :goto_1c

    :cond_31
    :goto_1b
    invoke-virtual {v13}, Lo/f;->n()I

    move-result v5

    add-int/2addr v5, v11

    iget-object v6, v13, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v6, v13, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    sub-int/2addr v5, v11

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g()V

    const/4 v5, 0x1

    aget-object v3, v3, v5

    if-eq v3, v4, :cond_32

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_33

    :cond_32
    invoke-virtual {v13}, Lo/f;->l()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, v13, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v4, v13, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    sub-int/2addr v3, v0

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_33
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g()V

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-ne v5, v13, :cond_34

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    if-nez v5, :cond_34

    goto :goto_1d

    :cond_34
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e()V

    goto :goto_1d

    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    if-nez v0, :cond_37

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-ne v4, v13, :cond_37

    goto :goto_1e

    :cond_37
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v4, :cond_38

    goto :goto_1f

    :cond_38
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v4, :cond_39

    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/h;

    if-nez v4, :cond_39

    goto :goto_1f

    :cond_39
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v4, :cond_36

    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    if-nez v4, :cond_36

    instance-of v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/h;

    if-nez v3, :cond_36

    :goto_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_3a
    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v13, v14}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v13, v15}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    move v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v4, 0x2

    goto/16 :goto_24

    :cond_3b
    move-object/from16 v21, v1

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v5

    iget-boolean v0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    invoke-virtual {v3}, Lo/f;->i()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo/f;->a:Z

    iget-object v5, v3, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v11, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v4, v11, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iput-boolean v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->n()V

    iget-object v3, v3, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->m()V

    goto :goto_21

    :cond_3c
    const/4 v4, 0x0

    invoke-virtual {v1}, Lo/f;->i()V

    iput-boolean v4, v1, Lo/f;->a:Z

    iget-object v0, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->n()V

    iget-object v0, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iput-boolean v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->m()V

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c()V

    goto :goto_22

    :cond_3d
    const/4 v4, 0x0

    :goto_22
    iget-object v0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d:Lo/g;

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b(Lo/g;)V

    iput v4, v1, Lo/f;->T:I

    iput v4, v1, Lo/f;->U:I

    iget-object v0, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v0, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v10, v0, :cond_3e

    invoke-virtual {v8, v4, v6}, Lo/g;->N(IZ)Z

    move-result v1

    const/4 v3, 0x1

    and-int/lit8 v16, v1, 0x1

    move v4, v3

    move/from16 v1, v16

    goto :goto_23

    :cond_3e
    const/4 v3, 0x1

    move v1, v3

    const/4 v4, 0x0

    :goto_23
    if-ne v12, v0, :cond_3f

    invoke-virtual {v8, v3, v6}, Lo/g;->N(IZ)Z

    move-result v5

    and-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    :cond_3f
    :goto_24
    if-eqz v1, :cond_43

    if-ne v10, v0, :cond_40

    const/4 v3, 0x1

    goto :goto_25

    :cond_40
    const/4 v3, 0x0

    :goto_25
    if-ne v12, v0, :cond_41

    const/4 v0, 0x1

    goto :goto_26

    :cond_41
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {v8, v3, v0}, Lo/g;->H(ZZ)V

    goto :goto_27

    :cond_42
    move-object/from16 v21, v1

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_43
    :goto_27
    if-eqz v1, :cond_44

    const/4 v0, 0x2

    if-eq v4, v0, :cond_6f

    :cond_44
    iget v0, v8, Lo/g;->w0:I

    if-lez v2, :cond_52

    iget-object v1, v8, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x40

    invoke-virtual {v8, v3}, Lo/g;->P(I)Z

    move-result v3

    iget-object v4, v8, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v1, :cond_50

    iget-object v6, v8, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/f;

    instance-of v7, v6, Lo/k;

    if-eqz v7, :cond_45

    goto :goto_29

    :cond_45
    instance-of v7, v6, Lo/a;

    if-eqz v7, :cond_46

    goto :goto_29

    :cond_46
    iget-boolean v7, v6, Lo/f;->z:Z

    if-eqz v7, :cond_47

    goto :goto_29

    :cond_47
    if-eqz v3, :cond_48

    iget-object v7, v6, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eqz v7, :cond_48

    iget-object v10, v6, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz v10, :cond_48

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v7, :cond_48

    iget-object v7, v10, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v7, :cond_48

    :goto_29
    const/4 v10, 0x0

    goto :goto_2c

    :cond_48
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v12, :cond_49

    iget v13, v6, Lo/f;->l:I

    if-eq v13, v7, :cond_49

    if-ne v11, v12, :cond_49

    iget v13, v6, Lo/f;->m:I

    if-eq v13, v7, :cond_49

    move v13, v7

    goto :goto_2a

    :cond_49
    const/4 v13, 0x0

    :goto_2a
    if-nez v13, :cond_4d

    invoke-virtual {v8, v7}, Lo/g;->P(I)Z

    move-result v14

    if-eqz v14, :cond_4d

    instance-of v7, v6, Lo/i;

    if-nez v7, :cond_4d

    if-ne v10, v12, :cond_4a

    iget v7, v6, Lo/f;->l:I

    if-nez v7, :cond_4a

    if-eq v11, v12, :cond_4a

    invoke-virtual {v6}, Lo/f;->t()Z

    move-result v7

    if-nez v7, :cond_4a

    const/4 v13, 0x1

    :cond_4a
    if-ne v11, v12, :cond_4b

    iget v7, v6, Lo/f;->m:I

    if-nez v7, :cond_4b

    if-eq v10, v12, :cond_4b

    invoke-virtual {v6}, Lo/f;->t()Z

    move-result v7

    if-nez v7, :cond_4b

    const/4 v13, 0x1

    :cond_4b
    if-eq v10, v12, :cond_4c

    if-ne v11, v12, :cond_4d

    :cond_4c
    iget v7, v6, Lo/f;->R:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_4e

    const/4 v13, 0x1

    goto :goto_2b

    :cond_4d
    const/4 v10, 0x0

    :cond_4e
    :goto_2b
    if-eqz v13, :cond_4f

    goto :goto_2c

    :cond_4f
    const/4 v7, 0x0

    invoke-virtual {v9, v4, v6, v7}, Lp1/v;->l(Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;I)Z

    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_28

    :cond_50
    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/o;->g:Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_51

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_51
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_52

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v3, :cond_52

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_52
    invoke-virtual {v9, v8}, Lp1/v;->q(Lo/g;)V

    iget-object v1, v9, Lp1/v;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v2, :cond_53

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v9, v8, v2, v3}, Lp1/v;->p(Lo/g;II)V

    goto :goto_2f

    :cond_53
    move/from16 v2, v22

    move/from16 v3, v24

    :goto_2f
    if-lez v1, :cond_6d

    iget-object v4, v8, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_54

    const/4 v6, 0x1

    goto :goto_30

    :cond_54
    move v6, v5

    :goto_30
    const/4 v10, 0x1

    aget-object v4, v4, v10

    if-ne v4, v7, :cond_55

    const/4 v4, 0x1

    goto :goto_31

    :cond_55
    move v4, v5

    :goto_31
    invoke-virtual {v8}, Lo/f;->n()I

    move-result v7

    iget-object v10, v9, Lp1/v;->d:Ljava/lang/Object;

    check-cast v10, Lo/g;

    iget v10, v10, Lo/f;->W:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v10

    iget-object v11, v9, Lp1/v;->d:Ljava/lang/Object;

    check-cast v11, Lo/g;

    iget v11, v11, Lo/f;->X:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v7

    move v12, v10

    move v7, v5

    move v10, v7

    :goto_32
    if-ge v7, v1, :cond_5b

    iget-object v13, v9, Lp1/v;->b:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/f;

    instance-of v14, v13, Lo/i;

    if-nez v14, :cond_56

    move/from16 v17, v0

    move-object/from16 v5, v21

    goto/16 :goto_33

    :cond_56
    invoke-virtual {v13}, Lo/f;->n()I

    move-result v14

    invoke-virtual {v13}, Lo/f;->l()I

    move-result v15

    move/from16 v17, v0

    move-object/from16 v5, v21

    const/4 v0, 0x1

    invoke-virtual {v9, v5, v13, v0}, Lp1/v;->l(Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;I)Z

    move-result v21

    or-int v0, v10, v21

    invoke-virtual {v13}, Lo/f;->n()I

    move-result v10

    move/from16 v21, v0

    invoke-virtual {v13}, Lo/f;->l()I

    move-result v0

    if-eq v10, v14, :cond_58

    invoke-virtual {v13, v10}, Lo/f;->G(I)V

    if-eqz v6, :cond_57

    invoke-virtual {v13}, Lo/f;->o()I

    move-result v10

    iget v14, v13, Lo/f;->P:I

    add-int/2addr v10, v14

    if-le v10, v11, :cond_57

    invoke-virtual {v13}, Lo/f;->o()I

    move-result v10

    iget v14, v13, Lo/f;->P:I

    add-int/2addr v10, v14

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v14}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v14

    invoke-virtual {v14}, Lo/d;->e()I

    move-result v14

    add-int/2addr v14, v10

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v10

    :cond_57
    const/16 v21, 0x1

    :cond_58
    if-eq v0, v15, :cond_5a

    invoke-virtual {v13, v0}, Lo/f;->D(I)V

    if-eqz v4, :cond_59

    invoke-virtual {v13}, Lo/f;->p()I

    move-result v0

    iget v10, v13, Lo/f;->Q:I

    add-int/2addr v0, v10

    if-le v0, v12, :cond_59

    invoke-virtual {v13}, Lo/f;->p()I

    move-result v0

    iget v10, v13, Lo/f;->Q:I

    add-int/2addr v0, v10

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v10}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v10

    invoke-virtual {v10}, Lo/d;->e()I

    move-result v10

    add-int/2addr v10, v0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v12, v0

    :cond_59
    const/16 v21, 0x1

    :cond_5a
    check-cast v13, Lo/i;

    iget-boolean v0, v13, Lo/i;->s0:Z

    or-int v0, v0, v21

    move v10, v0

    :goto_33
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v21, v5

    move/from16 v0, v17

    const/4 v5, 0x0

    goto/16 :goto_32

    :cond_5b
    move/from16 v17, v0

    move-object/from16 v5, v21

    const/4 v0, 0x0

    const/4 v7, 0x2

    :goto_34
    if-ge v0, v7, :cond_6a

    move v13, v10

    const/4 v10, 0x0

    :goto_35
    if-ge v10, v1, :cond_68

    iget-object v14, v9, Lp1/v;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/f;

    instance-of v15, v14, Lo/l;

    if-eqz v15, :cond_5c

    instance-of v15, v14, Lo/i;

    if-eqz v15, :cond_60

    :cond_5c
    instance-of v15, v14, Lo/k;

    if-eqz v15, :cond_5d

    goto :goto_36

    :cond_5d
    iget v15, v14, Lo/f;->b0:I

    const/16 v7, 0x8

    if-ne v15, v7, :cond_5e

    goto :goto_36

    :cond_5e
    if-eqz v20, :cond_5f

    iget-object v7, v14, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v7, :cond_5f

    iget-object v7, v14, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v7, :cond_5f

    goto :goto_36

    :cond_5f
    instance-of v7, v14, Lo/i;

    if-eqz v7, :cond_61

    :cond_60
    :goto_36
    move/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v23, v5

    goto/16 :goto_37

    :cond_61
    invoke-virtual {v14}, Lo/f;->n()I

    move-result v7

    invoke-virtual {v14}, Lo/f;->l()I

    move-result v15

    move/from16 v21, v1

    iget v1, v14, Lo/f;->V:I

    move/from16 v22, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_62

    const/4 v2, 0x2

    :cond_62
    invoke-virtual {v9, v5, v14, v2}, Lp1/v;->l(Landroidx/constraintlayout/solver/widgets/analyzer/o;Lo/f;I)Z

    move-result v2

    or-int/2addr v13, v2

    invoke-virtual {v14}, Lo/f;->n()I

    move-result v2

    move-object/from16 v23, v5

    invoke-virtual {v14}, Lo/f;->l()I

    move-result v5

    if-eq v2, v7, :cond_64

    invoke-virtual {v14, v2}, Lo/f;->G(I)V

    if-eqz v6, :cond_63

    invoke-virtual {v14}, Lo/f;->o()I

    move-result v2

    iget v7, v14, Lo/f;->P:I

    add-int/2addr v2, v7

    if-le v2, v11, :cond_63

    invoke-virtual {v14}, Lo/f;->o()I

    move-result v2

    iget v7, v14, Lo/f;->P:I

    add-int/2addr v2, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v7}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v7

    invoke-virtual {v7}, Lo/d;->e()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_63
    const/4 v13, 0x1

    :cond_64
    if-eq v5, v15, :cond_66

    invoke-virtual {v14, v5}, Lo/f;->D(I)V

    if-eqz v4, :cond_65

    invoke-virtual {v14}, Lo/f;->p()I

    move-result v2

    iget v5, v14, Lo/f;->Q:I

    add-int/2addr v2, v5

    if-le v2, v12, :cond_65

    invoke-virtual {v14}, Lo/f;->p()I

    move-result v2

    iget v5, v14, Lo/f;->Q:I

    add-int/2addr v2, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v5}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v5

    invoke-virtual {v5}, Lo/d;->e()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v12, v2

    :cond_65
    const/4 v13, 0x1

    :cond_66
    iget-boolean v2, v14, Lo/f;->y:Z

    if-eqz v2, :cond_67

    iget v2, v14, Lo/f;->V:I

    if-eq v1, v2, :cond_67

    const/4 v13, 0x1

    :cond_67
    :goto_37
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v5, v23

    const/4 v7, 0x2

    goto/16 :goto_35

    :cond_68
    move/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v23, v5

    if-eqz v13, :cond_69

    move/from16 v1, v22

    invoke-virtual {v9, v8, v1, v3}, Lp1/v;->p(Lo/g;II)V

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move/from16 v1, v21

    move-object/from16 v5, v23

    const/4 v7, 0x2

    const/4 v10, 0x0

    goto/16 :goto_34

    :cond_69
    move/from16 v1, v22

    move v10, v13

    goto :goto_38

    :cond_6a
    move v1, v2

    :goto_38
    if-eqz v10, :cond_6e

    invoke-virtual {v9, v8, v1, v3}, Lp1/v;->p(Lo/g;II)V

    invoke-virtual {v8}, Lo/f;->n()I

    move-result v0

    if-ge v0, v11, :cond_6b

    invoke-virtual {v8, v11}, Lo/f;->G(I)V

    const/4 v4, 0x1

    goto :goto_39

    :cond_6b
    const/4 v4, 0x0

    :goto_39
    invoke-virtual {v8}, Lo/f;->l()I

    move-result v0

    if-ge v0, v12, :cond_6c

    invoke-virtual {v8, v12}, Lo/f;->D(I)V

    const/4 v5, 0x1

    goto :goto_3a

    :cond_6c
    move v5, v4

    :goto_3a
    if-eqz v5, :cond_6e

    invoke-virtual {v9, v8, v1, v3}, Lp1/v;->p(Lo/g;II)V

    goto :goto_3b

    :cond_6d
    move/from16 v17, v0

    :cond_6e
    :goto_3b
    move/from16 v0, v17

    iput v0, v8, Lo/g;->w0:I

    const/16 v0, 0x200

    invoke-virtual {v8, v0}, Lo/g;->P(I)Z

    move-result v0

    sput-boolean v0, Ln/d;->p:Z

    :cond_6f
    invoke-virtual {v8}, Lo/f;->n()I

    move-result v0

    invoke-virtual {v8}, Lo/f;->l()I

    move-result v1

    iget-boolean v2, v8, Lo/g;->x0:Z

    iget-boolean v3, v8, Lo/g;->y0:Z

    move v4, v1

    move v5, v2

    move v6, v3

    move v3, v0

    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(IIIIZZ)V

    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lo/k;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lp/g;

    new-instance v1, Lo/k;

    invoke-direct {v1}, Lo/k;-><init>()V

    iput-object v1, v0, Lp/g;->k0:Lo/f;

    iput-boolean v2, v0, Lp/g;->Y:Z

    iget v0, v0, Lp/g;->R:I

    invoke-virtual {v1, v0}, Lo/k;->J(I)V

    :cond_0
    instance-of v0, p1, Lp/d;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lp/d;

    invoke-virtual {v0}, Lp/d;->h()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lp/g;

    iput-boolean v2, v1, Lp/g;->Z:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Lo/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    iget-object v1, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lo/f;->y()V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lp/o;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Lp/o;

    return-void
.end method

.method public setId(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lp/p;)V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lp/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lo/g;

    iput p1, p0, Lo/g;->w0:I

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lo/g;->P(I)Z

    move-result p0

    sput-boolean p0, Ln/d;->p:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
