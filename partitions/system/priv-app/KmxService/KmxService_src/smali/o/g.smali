.class public final Lo/g;
.super Lo/n;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/ref/WeakReference;

.field public B0:Ljava/lang/ref/WeakReference;

.field public C0:Ljava/lang/ref/WeakReference;

.field public final D0:Landroidx/constraintlayout/solver/widgets/analyzer/b;

.field public final l0:Lp1/v;

.field public final m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

.field public n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

.field public o0:Z

.field public final p0:Ln/d;

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:I

.field public u0:[Lo/b;

.field public v0:[Lo/b;

.field public w0:I

.field public x0:Z

.field public y0:Z

.field public z0:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lo/n;-><init>()V

    new-instance v0, Lp1/v;

    invoke-direct {v0, p0}, Lp1/v;-><init>(Lo/g;)V

    iput-object v0, p0, Lo/g;->l0:Lp1/v;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/e;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;-><init>(Lo/g;)V

    iput-object v0, p0, Lo/g;->m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/g;->o0:Z

    new-instance v2, Ln/d;

    invoke-direct {v2}, Ln/d;-><init>()V

    iput-object v2, p0, Lo/g;->p0:Ln/d;

    iput v1, p0, Lo/g;->s0:I

    iput v1, p0, Lo/g;->t0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lo/b;

    iput-object v3, p0, Lo/g;->u0:[Lo/b;

    new-array v2, v2, [Lo/b;

    iput-object v2, p0, Lo/g;->v0:[Lo/b;

    const/16 v2, 0x101

    iput v2, p0, Lo/g;->w0:I

    iput-boolean v1, p0, Lo/g;->x0:Z

    iput-boolean v1, p0, Lo/g;->y0:Z

    iput-object v0, p0, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lo/g;->A0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    iput-object v0, p0, Lo/g;->D0:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    return-void
.end method

.method public static O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iput-object v2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0}, Lo/f;->n()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    invoke-virtual {p0}, Lo/f;->l()I

    move-result v0

    iput v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    iput-boolean v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->i:Z

    iput v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->j:I

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget v5, p0, Lo/f;->R:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v3, :cond_4

    iget v6, p0, Lo/f;->R:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lo/f;->q(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lo/f;->l:I

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v3, :cond_5

    iget v0, p0, Lo/f;->m:I

    if-nez v0, :cond_5

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    move v0, v1

    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Lo/f;->q(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lo/f;->m:I

    if-nez v6, :cond_8

    if-nez v4, :cond_8

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz v0, :cond_7

    iget v3, p0, Lo/f;->l:I

    if-nez v3, :cond_7

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_7
    move v3, v1

    :cond_8
    invoke-virtual {p0}, Lo/f;->w()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v0, v1

    :cond_9
    invoke-virtual {p0}, Lo/f;->x()Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v3, v1

    :cond_a
    const/4 v6, -0x1

    const/4 v7, 0x4

    iget-object v8, p0, Lo/f;->n:[I

    if-eqz v5, :cond_f

    aget v5, v8, v1

    if-ne v5, v7, :cond_b

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_7

    :cond_b
    if-nez v3, :cond_f

    iget-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_c

    iget v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    goto :goto_4

    :cond_c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->f:I

    :goto_4
    iput-object v5, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, p0, Lo/f;->S:I

    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_d

    goto :goto_5

    :cond_d
    iget v5, p0, Lo/f;->R:F

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_6

    :cond_e
    :goto_5
    iget v5, p0, Lo/f;->R:F

    int-to-float v3, v3

    mul-float/2addr v5, v3

    :goto_6
    float-to-int v3, v5

    iput v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    :cond_f
    :goto_7
    if-eqz v4, :cond_14

    aget v3, v8, v2

    if-ne v3, v7, :cond_10

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    goto :goto_b

    :cond_10
    if-nez v0, :cond_14

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_11

    iget v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    goto :goto_8

    :cond_11
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->e:I

    :goto_8
    iput-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v3, p0, Lo/f;->S:I

    if-eqz v3, :cond_13

    if-ne v3, v6, :cond_12

    goto :goto_9

    :cond_12
    int-to-float v0, v0

    iget v3, p0, Lo/f;->R:F

    mul-float/2addr v0, v3

    goto :goto_a

    :cond_13
    :goto_9
    int-to-float v0, v0

    iget v3, p0, Lo/f;->R:F

    div-float/2addr v0, v3

    :goto_a
    float-to-int v0, v0

    iput v0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    :cond_14
    :goto_b
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->e:I

    invoke-virtual {p0, p1}, Lo/f;->G(I)V

    iget p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->f:I

    invoke-virtual {p0, p1}, Lo/f;->D(I)V

    iget-boolean p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->h:Z

    iput-boolean p1, p0, Lo/f;->y:Z

    iget p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->g:I

    iput p1, p0, Lo/f;->V:I

    if-lez p1, :cond_15

    goto :goto_c

    :cond_15
    move v2, v1

    :goto_c
    iput-boolean v2, p0, Lo/f;->y:Z

    iput v1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b;->j:I

    return-void
.end method


# virtual methods
.method public final H(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lo/f;->H(ZZ)V

    iget-object v0, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/f;

    invoke-virtual {v2, p1, p2}, Lo/f;->H(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 28

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Lo/f;->T:I

    iput v2, v1, Lo/f;->U:I

    iput-boolean v2, v1, Lo/g;->x0:Z

    iput-boolean v2, v1, Lo/g;->y0:Z

    iget-object v0, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    aget-object v8, v5, v2

    iget v9, v1, Lo/g;->w0:I

    invoke-static {v9, v6}, Lkotlin/jvm/internal/m;->e(II)Z

    move-result v9

    iget-object v10, v1, Lo/f;->D:Lo/d;

    iget-object v11, v1, Lo/f;->C:Lo/d;

    if-eqz v9, :cond_1e

    iget-object v9, v1, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    aget-object v12, v5, v2

    aget-object v13, v5, v6

    iput-boolean v2, v1, Lo/f;->h:Z

    iput-boolean v2, v1, Lo/f;->i:Z

    iget-object v14, v1, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v6, v2

    :goto_0
    if-ge v6, v15, :cond_0

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    check-cast v14, Lo/d;

    iput-boolean v2, v14, Lo/d;->c:Z

    iput v2, v14, Lo/d;->b:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v14, v18

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v2

    :goto_1
    if-ge v15, v14, :cond_2

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Lo/f;

    iput-boolean v2, v4, Lo/f;->h:Z

    iput-boolean v2, v4, Lo/f;->i:Z

    iget-object v4, v4, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Lo/d;

    move-object/from16 v20, v4

    const/4 v4, 0x0

    iput-boolean v4, v2, Lo/d;->c:Z

    iput v4, v2, Lo/d;->b:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    move/from16 v2, v21

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v18

    move/from16 v0, v19

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move/from16 v19, v0

    move/from16 v18, v4

    iget-boolean v0, v1, Lo/g;->o0:Z

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lo/f;->B(II)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lo/d;->l(I)V

    iput v4, v1, Lo/f;->T:I

    :goto_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_4
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v4, v14, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Lo/f;

    move-object/from16 v21, v11

    instance-of v11, v15, Lo/k;

    if-eqz v11, :cond_7

    check-cast v15, Lo/k;

    iget v11, v15, Lo/k;->o0:I

    move-object/from16 v22, v5

    const/4 v5, 0x1

    if-ne v11, v5, :cond_8

    iget v2, v15, Lo/k;->l0:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    goto :goto_5

    :cond_4
    iget v2, v15, Lo/k;->m0:I

    if-eq v2, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lo/f;->w()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v2

    iget v5, v15, Lo/k;->m0:I

    sub-int/2addr v2, v5

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo/f;->w()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v15, Lo/k;->k0:F

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    add-float v2, v2, v20

    float-to-int v2, v2

    :goto_5
    iget-object v5, v15, Lo/k;->n0:Lo/d;

    invoke-virtual {v5, v2}, Lo/d;->l(I)V

    const/4 v2, 0x1

    iput-boolean v2, v15, Lo/k;->p0:Z

    :cond_6
    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v22, v5

    instance-of v5, v15, Lo/a;

    if-eqz v5, :cond_8

    check-cast v15, Lo/a;

    invoke-virtual {v15}, Lo/a;->L()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v12, 0x1

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v21

    move-object/from16 v5, v22

    goto :goto_4

    :cond_9
    move-object/from16 v22, v5

    move-object/from16 v21, v11

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v14, :cond_b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v5, v4, Lo/k;

    if-eqz v5, :cond_a

    check-cast v4, Lo/k;

    iget v5, v4, Lo/k;->o0:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_a

    invoke-static {v4, v9, v0}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    invoke-static {v1, v9, v0}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    if-eqz v12, :cond_d

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v14, :cond_d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v5, v4, Lo/a;

    if-eqz v5, :cond_c

    check-cast v4, Lo/a;

    invoke-virtual {v4}, Lo/a;->L()I

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v4}, Lo/a;->K()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v4, v9, v0}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lo/f;->C(II)V

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lo/d;->l(I)V

    iput v4, v1, Lo/f;->U:I

    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v14, :cond_15

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/f;

    instance-of v12, v11, Lo/k;

    if-eqz v12, :cond_13

    check-cast v11, Lo/k;

    iget v12, v11, Lo/k;->o0:I

    if-nez v12, :cond_12

    iget v2, v11, Lo/k;->l0:I

    const/4 v12, -0x1

    if-eq v2, v12, :cond_f

    goto :goto_b

    :cond_f
    iget v2, v11, Lo/k;->m0:I

    if-eq v2, v12, :cond_10

    invoke-virtual/range {p0 .. p0}, Lo/f;->x()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v2

    iget v13, v11, Lo/k;->m0:I

    sub-int/2addr v2, v13

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lo/f;->x()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, v11, Lo/k;->k0:F

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v2, v13

    add-float v2, v2, v20

    float-to-int v2, v2

    :goto_b
    iget-object v13, v11, Lo/k;->n0:Lo/d;

    invoke-virtual {v13, v2}, Lo/d;->l(I)V

    const/4 v13, 0x1

    iput-boolean v13, v11, Lo/k;->p0:Z

    goto :goto_c

    :cond_11
    const/4 v13, 0x1

    :goto_c
    move v2, v13

    goto :goto_d

    :cond_12
    const/4 v12, -0x1

    goto :goto_d

    :cond_13
    const/4 v12, -0x1

    const/4 v13, 0x1

    instance-of v15, v11, Lo/a;

    if-eqz v15, :cond_14

    check-cast v11, Lo/a;

    invoke-virtual {v11}, Lo/a;->L()I

    move-result v11

    if-ne v11, v13, :cond_14

    const/4 v4, 0x1

    :cond_14
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_17

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v14, :cond_17

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/f;

    instance-of v11, v5, Lo/k;

    if-eqz v11, :cond_16

    check-cast v5, Lo/k;

    iget v11, v5, Lo/k;->o0:I

    if-nez v11, :cond_16

    invoke-static {v5, v9}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_17
    invoke-static {v1, v9}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    if-eqz v4, :cond_19

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v14, :cond_19

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v5, v4, Lo/a;

    if-eqz v5, :cond_18

    check-cast v4, Lo/a;

    invoke-virtual {v4}, Lo/a;->L()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_18

    invoke-virtual {v4}, Lo/a;->K()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v4, v9}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v14, :cond_1b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    invoke-virtual {v4}, Lo/f;->v()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v4}, Lp9/d;->i(Lo/f;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Lp9/d;->d:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-static {v4, v9, v5}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    invoke-static {v4, v9, v0}, Lp9/d;->N(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Z)V

    invoke-static {v4, v9}, Lp9/d;->w0(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_1f

    iget-object v2, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/f;

    invoke-virtual {v2}, Lo/f;->v()Z

    move-result v4

    if-eqz v4, :cond_1d

    instance-of v4, v2, Lo/k;

    if-nez v4, :cond_1d

    instance-of v4, v2, Lo/a;

    if-nez v4, :cond_1d

    instance-of v4, v2, Lo/i;

    if-nez v4, :cond_1d

    iget-boolean v4, v2, Lo/f;->z:Z

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v9, :cond_1c

    iget v5, v2, Lo/f;->l:I

    if-eq v5, v4, :cond_1c

    if-ne v6, v9, :cond_1c

    iget v5, v2, Lo/f;->m:I

    if-eq v5, v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_12

    :cond_1c
    const/4 v4, 0x0

    :goto_12
    if-nez v4, :cond_1d

    new-instance v4, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    iget-object v5, v1, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    invoke-static {v2, v5, v4}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1e
    move/from16 v19, v0

    move/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v21, v11

    :cond_1f
    const/4 v2, 0x2

    iget-object v4, v1, Lo/g;->p0:Ln/d;

    if-le v3, v2, :cond_59

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v0, :cond_20

    if-ne v7, v0, :cond_59

    :cond_20
    iget v0, v1, Lo/g;->w0:I

    const/16 v6, 0x400

    invoke-static {v0, v6}, Lkotlin/jvm/internal/m;->e(II)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, v1, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    iget-object v6, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v9, :cond_23

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/f;

    const/4 v13, 0x0

    aget-object v14, v22, v13

    const/4 v15, 0x1

    aget-object v2, v22, v15

    iget-object v5, v12, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v23, v10

    aget-object v10, v5, v13

    aget-object v5, v5, v15

    invoke-static {v14, v2, v10, v5}, Lv9/a;->f0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_14

    :cond_21
    instance-of v2, v12, Lo/i;

    if-eqz v2, :cond_22

    :goto_14
    move/from16 v24, v3

    move-object v6, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    goto/16 :goto_2f

    :cond_22
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v23

    const/4 v2, 0x2

    goto :goto_13

    :cond_23
    move-object/from16 v23, v10

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_15
    if-ge v2, v9, :cond_33

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/f;

    move/from16 v24, v3

    const/16 v17, 0x0

    aget-object v3, v22, v17

    move-object/from16 v25, v7

    const/16 v16, 0x1

    aget-object v7, v22, v16

    move-object/from16 v26, v8

    iget-object v8, v15, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v4

    aget-object v4, v8, v17

    aget-object v8, v8, v16

    invoke-static {v3, v7, v4, v8}, Lv9/a;->f0(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Lo/g;->D0:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-static {v15, v0, v3}, Lo/g;->O(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/o;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    :cond_24
    instance-of v3, v15, Lo/k;

    if-eqz v3, :cond_28

    move-object v4, v15

    check-cast v4, Lo/k;

    iget v7, v4, Lo/k;->o0:I

    if-nez v7, :cond_26

    if-nez v11, :cond_25

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v7

    :cond_25
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    iget v7, v4, Lo/k;->o0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_28

    if-nez v5, :cond_27

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    instance-of v4, v15, Lo/m;

    if-eqz v4, :cond_2e

    instance-of v4, v15, Lo/a;

    if-eqz v4, :cond_2b

    move-object v4, v15

    check-cast v4, Lo/a;

    invoke-virtual {v4}, Lo/a;->L()I

    move-result v7

    if-nez v7, :cond_2a

    if-nez v10, :cond_29

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v7

    :cond_29
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {v4}, Lo/a;->L()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    if-nez v12, :cond_2d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16

    :cond_2b
    move-object v4, v15

    check-cast v4, Lo/m;

    if-nez v10, :cond_2c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_2d

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    move-object v12, v7

    :cond_2d
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v4, v15, Lo/f;->C:Lo/d;

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_30

    iget-object v4, v15, Lo/f;->E:Lo/d;

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_30

    if-nez v3, :cond_30

    instance-of v4, v15, Lo/a;

    if-nez v4, :cond_30

    if-nez v13, :cond_2f

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    iget-object v4, v15, Lo/f;->D:Lo/d;

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_32

    iget-object v4, v15, Lo/f;->F:Lo/d;

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_32

    iget-object v4, v15, Lo/f;->G:Lo/d;

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-nez v4, :cond_32

    if-nez v3, :cond_32

    instance-of v3, v15, Lo/a;

    if-nez v3, :cond_32

    if-nez v14, :cond_31

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v24

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v4, v27

    goto/16 :goto_15

    :cond_33
    move/from16 v24, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/k;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_17

    :cond_34
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v10, :cond_35

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/m;

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    move-result-object v7

    invoke-virtual {v3, v5, v7, v0}, Lo/m;->J(ILandroidx/constraintlayout/solver/widgets/analyzer/p;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/p;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_18

    :cond_35
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_19

    :cond_36
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_1a

    :cond_37
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_1b

    :cond_38
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v13, :cond_39

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_1c

    :cond_39
    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/k;

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_1d

    :cond_3a
    const/4 v5, 0x1

    if-eqz v12, :cond_3b

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/m;

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    move-result-object v7

    invoke-virtual {v3, v5, v7, v0}, Lo/m;->J(ILandroidx/constraintlayout/solver/widgets/analyzer/p;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/p;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1e

    :cond_3b
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_1f

    :cond_3c
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_20

    :cond_3d
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_21

    :cond_3e
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    iget-object v2, v2, Lo/d;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_22

    :cond_3f
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v14, :cond_40

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    invoke-static {v3, v5, v0, v4}, Lv9/a;->p(Lo/f;ILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/p;)Landroidx/constraintlayout/solver/widgets/analyzer/p;

    goto :goto_23

    :cond_40
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v9, :cond_47

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    iget-object v4, v3, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aget-object v7, v4, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v5, :cond_41

    const/4 v7, 0x1

    aget-object v4, v4, v7

    if-ne v4, v5, :cond_41

    const/4 v4, 0x1

    goto :goto_25

    :cond_41
    const/4 v4, 0x0

    :goto_25
    if-eqz v4, :cond_46

    iget v4, v3, Lo/f;->i0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v5, :cond_43

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/p;

    iget v10, v8, Landroidx/constraintlayout/solver/widgets/analyzer/p;->b:I

    if-ne v4, v10, :cond_42

    goto :goto_27

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_43
    const/4 v8, 0x0

    :goto_27
    iget v3, v3, Lo/f;->j0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/analyzer/p;

    iget v10, v7, Landroidx/constraintlayout/solver/widgets/analyzer/p;->b:I

    if-ne v3, v10, :cond_44

    goto :goto_29

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_45
    const/4 v7, 0x0

    :goto_29
    if-eqz v8, :cond_46

    if-eqz v7, :cond_46

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/p;->c(ILandroidx/constraintlayout/solver/widgets/analyzer/p;)V

    const/4 v3, 0x2

    iput v3, v7, Landroidx/constraintlayout/solver/widgets/analyzer/p;->c:I

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_48

    move-object/from16 v6, v27

    goto/16 :goto_2f

    :cond_48
    const/4 v2, 0x0

    aget-object v3, v22, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_4c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/p;

    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/p;->c:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    move-object/from16 v6, v27

    goto :goto_2b

    :cond_49
    move-object/from16 v6, v27

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/p;->b(Ln/d;I)I

    move-result v8

    if-le v8, v3, :cond_4a

    move-object v4, v5

    move-object/from16 v27, v6

    move v3, v8

    goto :goto_2a

    :cond_4a
    :goto_2b
    move-object/from16 v27, v6

    goto :goto_2a

    :cond_4b
    move-object/from16 v6, v27

    if-eqz v4, :cond_4d

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v2}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v3}, Lo/f;->G(I)V

    const/4 v2, 0x1

    goto :goto_2c

    :cond_4c
    move-object/from16 v6, v27

    :cond_4d
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_2c
    aget-object v3, v22, v2

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v2, :cond_51

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_4e
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/p;

    iget v7, v5, Landroidx/constraintlayout/solver/widgets/analyzer/p;->c:I

    if-nez v7, :cond_4f

    goto :goto_2d

    :cond_4f
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/p;->b(Ln/d;I)I

    move-result v8

    if-le v8, v2, :cond_4e

    move-object v3, v5

    move v2, v8

    goto :goto_2d

    :cond_50
    if-eqz v3, :cond_51

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, v0}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v2}, Lo/f;->D(I)V

    goto :goto_2e

    :cond_51
    const/4 v3, 0x0

    :goto_2e
    if-nez v4, :cond_53

    if-eqz v3, :cond_52

    goto :goto_30

    :cond_52
    :goto_2f
    const/4 v0, 0x0

    goto :goto_31

    :cond_53
    :goto_30
    const/4 v0, 0x1

    :goto_31
    if-eqz v0, :cond_58

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v2, v26

    if-ne v2, v0, :cond_55

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v3

    move/from16 v4, v19

    if-ge v4, v3, :cond_54

    if-lez v4, :cond_54

    invoke-virtual {v1, v4}, Lo/f;->G(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lo/g;->x0:Z

    goto :goto_32

    :cond_54
    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v3

    goto :goto_33

    :cond_55
    move/from16 v4, v19

    :goto_32
    move v3, v4

    :goto_33
    move-object/from16 v5, v25

    if-ne v5, v0, :cond_57

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v0

    move/from16 v7, v18

    if-ge v7, v0, :cond_56

    if-lez v7, :cond_56

    invoke-virtual {v1, v7}, Lo/f;->D(I)V

    const/4 v4, 0x1

    iput-boolean v4, v1, Lo/g;->y0:Z

    goto :goto_34

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v4

    goto :goto_35

    :cond_57
    move/from16 v7, v18

    :goto_34
    move v4, v7

    :goto_35
    const/4 v0, 0x1

    goto :goto_37

    :cond_58
    move/from16 v7, v18

    move/from16 v4, v19

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    goto :goto_36

    :cond_59
    move/from16 v24, v3

    move-object v6, v4

    move-object v5, v7

    move-object v2, v8

    move-object/from16 v23, v10

    move/from16 v7, v18

    move/from16 v4, v19

    :goto_36
    move v3, v4

    move v4, v7

    const/4 v0, 0x0

    :goto_37
    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lo/g;->P(I)Z

    move-result v8

    if-nez v8, :cond_5b

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, Lo/g;->P(I)Z

    move-result v8

    if-eqz v8, :cond_5a

    goto :goto_38

    :cond_5a
    const/4 v8, 0x0

    goto :goto_39

    :cond_5b
    :goto_38
    const/4 v8, 0x1

    :goto_39
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    iput-boolean v9, v6, Ln/d;->g:Z

    iget v10, v1, Lo/g;->w0:I

    if-eqz v10, :cond_5c

    if-eqz v8, :cond_5c

    const/4 v8, 0x1

    iput-boolean v8, v6, Ln/d;->g:Z

    goto :goto_3a

    :cond_5c
    const/4 v8, 0x1

    :goto_3a
    iget-object v10, v1, Lo/n;->k0:Ljava/util/ArrayList;

    aget-object v11, v22, v9

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_5e

    aget-object v11, v22, v8

    if-ne v11, v12, :cond_5d

    goto :goto_3b

    :cond_5d
    move v8, v9

    goto :goto_3c

    :cond_5e
    :goto_3b
    const/4 v8, 0x1

    :goto_3c
    iput v9, v1, Lo/g;->s0:I

    iput v9, v1, Lo/g;->t0:I

    move/from16 v11, v24

    const/4 v9, 0x0

    :goto_3d
    if-ge v9, v11, :cond_60

    iget-object v12, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/f;

    instance-of v13, v12, Lo/n;

    if-eqz v13, :cond_5f

    check-cast v12, Lo/n;

    invoke-virtual {v12}, Lo/n;->J()V

    :cond_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    :cond_60
    invoke-virtual {v1, v7}, Lo/g;->P(I)Z

    move-result v9

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3e
    if-eqz v13, :cond_70

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    invoke-virtual {v6}, Ln/d;->u()V

    const/4 v14, 0x0

    iput v14, v1, Lo/g;->s0:I

    iput v14, v1, Lo/g;->t0:I

    invoke-virtual {v1, v6}, Lo/f;->h(Ln/d;)V

    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v11, :cond_61

    iget-object v14, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/f;

    invoke-virtual {v14, v6}, Lo/f;->h(Ln/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_61
    invoke-virtual {v1, v6}, Lo/g;->L(Ln/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v0, v1, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    const/4 v13, 0x5

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v14, v23

    :try_start_2
    invoke-virtual {v6, v14}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v23, v14

    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v14, v13}, Ln/d;->f(Ln/i;Ln/i;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    goto :goto_40

    :catch_0
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_41

    :cond_62
    :goto_40
    iget-object v0, v1, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v7, v1, Lo/f;->F:Lo/d;

    invoke-virtual {v6, v7}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v0, v14, v13}, Ln/d;->f(Ln/i;Ln/i;II)V

    const/4 v7, 0x0

    iput-object v7, v1, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    :cond_63
    iget-object v0, v1, Lo/g;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lo/g;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v7, v21

    :try_start_4
    invoke-virtual {v6, v7}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v14

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v21, v7

    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v6, v0, v14, v7, v13}, Ln/d;->f(Ln/i;Ln/i;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v7, 0x0

    :try_start_6
    iput-object v7, v1, Lo/g;->A0:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_42

    :catch_1
    move-exception v0

    move-object/from16 v21, v7

    :goto_41
    const/4 v7, 0x0

    goto :goto_44

    :cond_64
    :goto_42
    :try_start_7
    iget-object v0, v1, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v7, v1, Lo/f;->E:Lo/d;

    invoke-virtual {v6, v7}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v0, v14, v13}, Ln/d;->f(Ln/i;Ln/i;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/4 v7, 0x0

    :try_start_8
    iput-object v7, v1, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    goto :goto_43

    :catch_2
    move-exception v0

    goto :goto_41

    :cond_65
    const/4 v7, 0x0

    :goto_43
    invoke-virtual {v6}, Ln/d;->q()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const/16 v19, 0x1

    goto :goto_46

    :catch_3
    move-exception v0

    :goto_44
    const/4 v13, 0x1

    goto :goto_45

    :catch_4
    move-exception v0

    const/4 v7, 0x0

    :goto_45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v19, v13

    const-string v13, "EXCEPTION : "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_46
    sget-object v0, Lkotlin/jvm/internal/m;->e:[Z

    if-eqz v19, :cond_66

    const/4 v7, 0x2

    const/4 v13, 0x0

    aput-boolean v13, v0, v7

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lo/g;->P(I)Z

    move-result v13

    invoke-virtual {v1, v6, v13}, Lo/f;->I(Ln/d;Z)V

    iget-object v14, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v7, 0x0

    :goto_47
    if-ge v7, v14, :cond_67

    move/from16 v19, v14

    iget-object v14, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/f;

    invoke-virtual {v14, v6, v13}, Lo/f;->I(Ln/d;Z)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v19

    goto :goto_47

    :cond_66
    invoke-virtual {v1, v6, v9}, Lo/f;->I(Ln/d;Z)V

    const/4 v7, 0x0

    :goto_48
    if-ge v7, v11, :cond_67

    iget-object v13, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/f;

    invoke-virtual {v13, v6, v9}, Lo/f;->I(Ln/d;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_67
    if-eqz v8, :cond_6a

    const/16 v7, 0x8

    if-ge v15, v7, :cond_6a

    const/4 v7, 0x2

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_49
    if-ge v0, v11, :cond_68

    iget-object v7, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/f;

    move/from16 v19, v8

    iget v8, v7, Lo/f;->T:I

    invoke-virtual {v7}, Lo/f;->n()I

    move-result v24

    add-int v8, v24, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v8, v7, Lo/f;->U:I

    invoke-virtual {v7}, Lo/f;->l()I

    move-result v7

    add-int/2addr v7, v8

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v19

    const/4 v7, 0x2

    goto :goto_49

    :cond_68
    move/from16 v19, v8

    iget v0, v1, Lo/f;->W:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, v1, Lo/f;->X:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v8, :cond_69

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v13

    if-ge v13, v0, :cond_69

    invoke-virtual {v1, v0}, Lo/f;->G(I)V

    const/4 v12, 0x0

    aput-object v8, v22, v12

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_4a

    :cond_69
    const/4 v0, 0x0

    :goto_4a
    if-ne v5, v8, :cond_6b

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v13

    if-ge v13, v7, :cond_6b

    invoke-virtual {v1, v7}, Lo/f;->D(I)V

    const/4 v7, 0x1

    aput-object v8, v22, v7

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_4b

    :cond_6a
    move/from16 v19, v8

    const/4 v0, 0x0

    :cond_6b
    :goto_4b
    iget v7, v1, Lo/f;->W:I

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v8

    if-le v7, v8, :cond_6c

    invoke-virtual {v1, v7}, Lo/f;->G(I)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aput-object v0, v22, v7

    const/4 v0, 0x1

    const/4 v12, 0x1

    :cond_6c
    iget v7, v1, Lo/f;->X:I

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v8

    if-le v7, v8, :cond_6d

    invoke-virtual {v1, v7}, Lo/f;->D(I)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aput-object v0, v22, v7

    move v0, v7

    move v12, v0

    goto :goto_4c

    :cond_6d
    const/4 v7, 0x1

    :goto_4c
    if-nez v12, :cond_6f

    const/4 v8, 0x0

    aget-object v13, v22, v8

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v14, :cond_6e

    if-lez v3, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lo/f;->n()I

    move-result v13

    if-le v13, v3, :cond_6e

    iput-boolean v7, v1, Lo/g;->x0:Z

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v0, v22, v8

    invoke-virtual {v1, v3}, Lo/f;->G(I)V

    move v0, v7

    move v12, v0

    :cond_6e
    aget-object v8, v22, v7

    if-ne v8, v14, :cond_6f

    if-lez v4, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lo/f;->l()I

    move-result v8

    if-le v8, v4, :cond_6f

    iput-boolean v7, v1, Lo/g;->y0:Z

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v0, v22, v7

    invoke-virtual {v1, v4}, Lo/f;->D(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_4d

    :cond_6f
    move v13, v0

    :goto_4d
    move v0, v15

    move/from16 v8, v19

    const/16 v7, 0x40

    goto/16 :goto_3e

    :cond_70
    iput-object v10, v1, Lo/n;->k0:Ljava/util/ArrayList;

    if-eqz v12, :cond_71

    const/4 v3, 0x0

    aput-object v2, v22, v3

    const/4 v2, 0x1

    aput-object v5, v22, v2

    :cond_71
    iget-object v0, v6, Ln/d;->l:Lcom/google/firebase/messaging/r;

    invoke-virtual {v1, v0}, Lo/n;->A(Lcom/google/firebase/messaging/r;)V

    return-void
.end method

.method public final K(Lo/f;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lo/g;->s0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lo/g;->v0:[Lo/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/b;

    iput-object p2, p0, Lo/g;->v0:[Lo/b;

    :cond_0
    iget-object p2, p0, Lo/g;->v0:[Lo/b;

    iget v1, p0, Lo/g;->s0:I

    new-instance v2, Lo/b;

    iget-boolean v3, p0, Lo/g;->o0:Z

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4, v3}, Lo/b;-><init>(Lo/f;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/g;->s0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Lo/g;->t0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lo/g;->u0:[Lo/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lo/b;

    iput-object p2, p0, Lo/g;->u0:[Lo/b;

    :cond_2
    iget-object p2, p0, Lo/g;->u0:[Lo/b;

    iget v1, p0, Lo/g;->t0:I

    new-instance v2, Lo/b;

    iget-boolean v3, p0, Lo/g;->o0:Z

    invoke-direct {v2, p1, v0, v3}, Lo/b;-><init>(Lo/f;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lo/g;->t0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final L(Ln/d;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lo/g;->P(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/f;->c(Ln/d;Z)V

    iget-object v1, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/f;

    iget-object v7, v6, Lo/f;->M:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Lo/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_7

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v6, v4, Lo/a;

    if-eqz v6, :cond_6

    check-cast v4, Lo/a;

    move v6, v2

    :goto_2
    iget v7, v4, Lo/m;->l0:I

    if-ge v6, v7, :cond_6

    iget-object v7, v4, Lo/m;->k0:[Lo/f;

    aget-object v7, v7, v6

    iget v8, v4, Lo/a;->m0:I

    if-eqz v8, :cond_4

    if-ne v8, v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    :cond_3
    iget-object v7, v7, Lo/f;->M:[Z

    aput-boolean v5, v7, v5

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v7, v7, Lo/f;->M:[Z

    aput-boolean v5, v7, v2

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_b

    iget-object v4, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v4, Lo/i;

    if-nez v6, :cond_9

    instance-of v6, v4, Lo/k;

    if-eqz v6, :cond_8

    goto :goto_6

    :cond_8
    move v6, v2

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v5

    :goto_7
    if-eqz v6, :cond_a

    invoke-virtual {v4, p1, v0}, Lo/f;->c(Ln/d;Z)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    sget-boolean v3, Ln/d;->p:Z

    if-eqz v3, :cond_11

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_8
    if-ge v4, v1, :cond_f

    iget-object v6, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/f;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lo/i;

    if-nez v7, :cond_d

    instance-of v7, v6, Lo/k;

    if-eqz v7, :cond_c

    goto :goto_9

    :cond_c
    move v7, v2

    goto :goto_a

    :cond_d
    :goto_9
    move v7, v5

    :goto_a
    if-nez v7, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    iget-object v1, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, v2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_10

    move v10, v2

    goto :goto_b

    :cond_10
    move v10, v5

    :goto_b
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/f;

    invoke-static {p0, p1, v3}, Lkotlin/jvm/internal/m;->c(Lo/g;Ln/d;Lo/f;)V

    invoke-virtual {v3, p1, v0}, Lo/f;->c(Ln/d;Z)V

    goto :goto_c

    :cond_11
    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_19

    iget-object v4, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v6, v4, Lo/g;

    if-eqz v6, :cond_15

    iget-object v6, v4, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v6, v2

    aget-object v6, v6, v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_12

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_12
    if-ne v6, v8, :cond_13

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v9}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_13
    invoke-virtual {v4, p1, v0}, Lo/f;->c(Ln/d;Z)V

    if-ne v7, v8, :cond_14

    invoke-virtual {v4, v7}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_14
    if-ne v6, v8, :cond_18

    invoke-virtual {v4, v6}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_10

    :cond_15
    invoke-static {p0, p1, v4}, Lkotlin/jvm/internal/m;->c(Lo/g;Ln/d;Lo/f;)V

    instance-of v6, v4, Lo/i;

    if-nez v6, :cond_17

    instance-of v6, v4, Lo/k;

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    move v6, v2

    goto :goto_f

    :cond_17
    :goto_e
    move v6, v5

    :goto_f
    if-nez v6, :cond_18

    invoke-virtual {v4, p1, v0}, Lo/f;->c(Ln/d;Z)V

    :cond_18
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    iget v0, p0, Lo/g;->s0:I

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    invoke-static {p0, p1, v1, v2}, Lh3/a;->g(Lo/g;Ln/d;Ljava/util/ArrayList;I)V

    :cond_1a
    iget v0, p0, Lo/g;->t0:I

    if-lez v0, :cond_1b

    invoke-static {p0, p1, v1, v5}, Lh3/a;->g(Lo/g;Ln/d;Ljava/util/ArrayList;I)V

    :cond_1b
    return-void
.end method

.method public final M(Lo/d;)V
    .locals 2

    iget-object v0, p0, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/d;->d()I

    move-result v0

    iget-object v1, p0, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/d;

    invoke-virtual {v1}, Lo/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/g;->z0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final N(IZ)Z
    .locals 11

    const/4 v0, 0x1

    and-int/2addr p2, v0

    iget-object p0, p0, Lo/g;->m0:Landroidx/constraintlayout/solver/widgets/analyzer/e;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v1, v0}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    invoke-virtual {v1}, Lo/f;->o()I

    move-result v5

    invoke-virtual {v1}, Lo/f;->p()I

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    if-ne v10, p1, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->k()Z

    move-result v9

    if-nez v9, :cond_1

    move p2, v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, p2}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d(Lo/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lo/f;->G(I)V

    iget-object p2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->n()I

    move-result v8

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, p2, :cond_4

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v1, p2}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d(Lo/g;I)I

    move-result p2

    invoke-virtual {v1, p2}, Lo/f;->D(I)V

    iget-object p2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->l()I

    move-result v8

    :goto_0
    invoke-virtual {p2, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_4
    iget-object p2, v1, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_6

    aget-object p2, p2, v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v6, :cond_7

    :cond_5
    invoke-virtual {v1}, Lo/f;->n()I

    move-result p2

    add-int/2addr p2, v5

    iget-object v6, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v6, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    sub-int/2addr p2, v5

    invoke-virtual {v6, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_2

    :cond_6
    aget-object p2, p2, v0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v5, :cond_8

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v5, :cond_7

    goto :goto_1

    :cond_7
    move p2, v2

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {v1}, Lo/f;->l()I

    move-result p2

    add-int/2addr p2, v6

    iget-object v5, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget-object v5, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    sub-int/2addr p2, v6

    invoke-virtual {v5, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :goto_2
    move p2, v0

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    if-eq v6, p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-ne v6, v1, :cond_a

    iget-boolean v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e()V

    goto :goto_4

    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    if-eq v6, p1, :cond_d

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-ne v6, v1, :cond_e

    goto :goto_5

    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    if-nez v6, :cond_c

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v5, :cond_c

    :goto_6
    move v0, v2

    :cond_11
    invoke-virtual {v1, v3}, Lo/f;->E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    invoke-virtual {v1, v4}, Lo/f;->F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public final P(I)Z
    .locals 0

    iget p0, p0, Lo/g;->w0:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lo/g;->p0:Ln/d;

    invoke-virtual {v0}, Ln/d;->u()V

    const/4 v0, 0x0

    iput v0, p0, Lo/g;->q0:I

    iput v0, p0, Lo/g;->r0:I

    invoke-super {p0}, Lo/n;->y()V

    return-void
.end method
