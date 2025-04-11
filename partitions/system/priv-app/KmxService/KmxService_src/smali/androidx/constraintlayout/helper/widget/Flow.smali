.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lp/s;
.source "SourceFile"


# instance fields
.field public j:Lo/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/util/AttributeSet;)V
    .locals 7

    invoke-super {p0, p1}, Lp/s;->f(Landroid/util/AttributeSet;)V

    new-instance v0, Lo/i;

    invoke-direct {v0}, Lo/i;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lp/r;->b:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1a

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->P0:I

    goto/16 :goto_1

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->m0:I

    iput v3, v4, Lo/i;->n0:I

    iput v3, v4, Lo/i;->o0:I

    iput v3, v4, Lo/i;->p0:I

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->o0:I

    iput v3, v4, Lo/i;->q0:I

    iput v3, v4, Lo/i;->r0:I

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0xc

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->p0:I

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->q0:I

    goto/16 :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->m0:I

    goto/16 :goto_1

    :cond_5
    const/4 v5, 0x4

    if-ne v3, v5, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->r0:I

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->n0:I

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0x26

    if-ne v3, v5, :cond_8

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->N0:I

    goto/16 :goto_1

    :cond_8
    const/16 v5, 0x1c

    if-ne v3, v5, :cond_9

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->x0:I

    goto/16 :goto_1

    :cond_9
    const/16 v5, 0x25

    if-ne v3, v5, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->y0:I

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x16

    if-ne v3, v5, :cond_b

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->z0:I

    goto/16 :goto_1

    :cond_b
    const/16 v5, 0x1e

    if-ne v3, v5, :cond_c

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->B0:I

    goto/16 :goto_1

    :cond_c
    const/16 v5, 0x18

    if-ne v3, v5, :cond_d

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->A0:I

    goto/16 :goto_1

    :cond_d
    const/16 v5, 0x20

    if-ne v3, v5, :cond_e

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->C0:I

    goto/16 :goto_1

    :cond_e
    const/16 v5, 0x1a

    const/high16 v6, 0x3f000000    # 0.5f

    if-ne v3, v5, :cond_f

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->D0:F

    goto/16 :goto_1

    :cond_f
    const/16 v5, 0x15

    if-ne v3, v5, :cond_10

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->F0:F

    goto/16 :goto_1

    :cond_10
    const/16 v5, 0x1d

    if-ne v3, v5, :cond_11

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->H0:F

    goto/16 :goto_1

    :cond_11
    const/16 v5, 0x17

    if-ne v3, v5, :cond_12

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->G0:F

    goto :goto_1

    :cond_12
    const/16 v5, 0x1f

    if-ne v3, v5, :cond_13

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->I0:F

    goto :goto_1

    :cond_13
    const/16 v5, 0x23

    if-ne v3, v5, :cond_14

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v4, Lo/i;->E0:F

    goto :goto_1

    :cond_14
    const/16 v5, 0x19

    if-ne v3, v5, :cond_15

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Lo/i;->L0:I

    goto :goto_1

    :cond_15
    const/16 v5, 0x22

    if-ne v3, v5, :cond_16

    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Lo/i;->M0:I

    goto :goto_1

    :cond_16
    const/16 v4, 0x1b

    if-ne v3, v4, :cond_17

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->J0:I

    goto :goto_1

    :cond_17
    const/16 v4, 0x24

    if-ne v3, v4, :cond_18

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lo/i;->K0:I

    goto :goto_1

    :cond_18
    const/16 v4, 0x21

    if-ne v3, v4, :cond_19

    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lo/i;->O0:I

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput-object p1, p0, Lp/d;->d:Lo/m;

    invoke-virtual {p0}, Lp/d;->h()V

    return-void
.end method

.method public final g(Lo/f;Z)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iget p1, p0, Lo/i;->o0:I

    if-gtz p1, :cond_0

    iget v0, p0, Lo/i;->p0:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lo/i;->p0:I

    iput p2, p0, Lo/i;->q0:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lo/i;->q0:I

    iget p1, p0, Lo/i;->p0:I

    :goto_0
    iput p1, p0, Lo/i;->r0:I

    :cond_2
    return-void
.end method

.method public final i(Lo/i;II)V
    .locals 40

    move-object/from16 v8, p1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v8, :cond_71

    iget v0, v8, Lo/m;->l0:I

    const/4 v15, 0x1

    if-lez v0, :cond_a

    iget-object v0, v8, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_0

    check-cast v0, Lo/g;

    iget-object v0, v0, Lo/g;->n0:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move v0, v13

    goto/16 :goto_5

    :cond_1
    move v1, v13

    :goto_1
    iget v2, v8, Lo/m;->l0:I

    if-ge v1, v2, :cond_9

    iget-object v2, v8, Lo/m;->k0:[Lo/f;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    instance-of v3, v2, Lo/k;

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v13}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {v2, v15}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_4

    iget v6, v2, Lo/f;->l:I

    if-eq v6, v15, :cond_4

    if-ne v4, v5, :cond_4

    iget v6, v2, Lo/f;->m:I

    if-eq v6, v15, :cond_4

    move v6, v15

    goto :goto_2

    :cond_4
    move v6, v13

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    if-ne v3, v5, :cond_6

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    if-ne v4, v5, :cond_7

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_7
    iget-object v5, v8, Lo/i;->v0:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iput-object v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v2}, Lo/f;->n()I

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    invoke-virtual {v2}, Lo/f;->l()I

    move-result v3

    iput v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    invoke-virtual {v0, v2, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->e:I

    invoke-virtual {v2, v3}, Lo/f;->G(I)V

    iget v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->f:I

    invoke-virtual {v2, v3}, Lo/f;->D(I)V

    iget v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/b;->g:I

    iput v3, v2, Lo/f;->V:I

    if-lez v3, :cond_8

    move v3, v15

    goto :goto_3

    :cond_8
    move v3, v13

    :goto_3
    iput-boolean v3, v2, Lo/f;->y:Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    move v0, v15

    :goto_5
    if-nez v0, :cond_a

    iput v13, v8, Lo/i;->t0:I

    iput v13, v8, Lo/i;->u0:I

    iput-boolean v13, v8, Lo/i;->s0:Z

    move-object/from16 v0, p0

    goto/16 :goto_3f

    :cond_a
    iget v7, v8, Lo/i;->q0:I

    iget v6, v8, Lo/i;->r0:I

    iget v5, v8, Lo/i;->m0:I

    iget v4, v8, Lo/i;->n0:I

    const/4 v0, 0x2

    new-array v3, v0, [I

    sub-int v1, v10, v7

    sub-int/2addr v1, v6

    iget v2, v8, Lo/i;->P0:I

    if-ne v2, v15, :cond_b

    sub-int v1, v12, v5

    sub-int/2addr v1, v4

    :cond_b
    const/4 v14, -0x1

    if-nez v2, :cond_d

    iget v2, v8, Lo/i;->x0:I

    if-ne v2, v14, :cond_c

    iput v13, v8, Lo/i;->x0:I

    :cond_c
    iget v2, v8, Lo/i;->y0:I

    if-ne v2, v14, :cond_f

    goto :goto_6

    :cond_d
    iget v2, v8, Lo/i;->x0:I

    if-ne v2, v14, :cond_e

    iput v13, v8, Lo/i;->x0:I

    :cond_e
    iget v2, v8, Lo/i;->y0:I

    if-ne v2, v14, :cond_f

    :goto_6
    iput v13, v8, Lo/i;->y0:I

    :cond_f
    iget-object v2, v8, Lo/m;->k0:[Lo/f;

    move v14, v13

    move/from16 v16, v14

    :goto_7
    iget v13, v8, Lo/m;->l0:I

    const/16 v0, 0x8

    if-ge v14, v13, :cond_11

    iget-object v13, v8, Lo/m;->k0:[Lo/f;

    aget-object v13, v13, v14

    iget v13, v13, Lo/f;->b0:I

    if-ne v13, v0, :cond_10

    add-int/lit8 v16, v16, 0x1

    :cond_10
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x2

    goto :goto_7

    :cond_11
    if-lez v16, :cond_14

    sub-int v13, v13, v16

    new-array v2, v13, [Lo/f;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8
    iget v15, v8, Lo/m;->l0:I

    if-ge v13, v15, :cond_13

    iget-object v15, v8, Lo/m;->k0:[Lo/f;

    aget-object v15, v15, v13

    move-object/from16 v16, v3

    iget v3, v15, Lo/f;->b0:I

    if-eq v3, v0, :cond_12

    aput-object v15, v2, v14

    add-int/lit8 v14, v14, 0x1

    :cond_12
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    goto :goto_8

    :cond_13
    move-object/from16 v16, v3

    goto :goto_9

    :cond_14
    move-object/from16 v16, v3

    move v14, v13

    :goto_9
    move-object v13, v2

    iput-object v13, v8, Lo/i;->U0:[Lo/f;

    iput v14, v8, Lo/i;->V0:I

    iget v2, v8, Lo/i;->N0:I

    iget-object v15, v8, Lo/i;->Q0:Ljava/util/ArrayList;

    if-eqz v2, :cond_66

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    move/from16 v30, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v36, v11

    move/from16 v35, v12

    move-object/from16 v29, v16

    goto/16 :goto_37

    :cond_15
    iget v0, v8, Lo/i;->P0:I

    iget v2, v8, Lo/i;->O0:I

    if-nez v0, :cond_1b

    if-gtz v2, :cond_19

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_a
    move/from16 v18, v4

    if-ge v2, v14, :cond_1a

    if-lez v2, :cond_16

    iget v4, v8, Lo/i;->J0:I

    add-int/2addr v3, v4

    :cond_16
    aget-object v4, v13, v2

    if-nez v4, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v8, v4, v1}, Lo/i;->L(Lo/f;I)I

    move-result v4

    add-int/2addr v4, v3

    if-le v4, v1, :cond_18

    goto :goto_c

    :cond_18
    add-int/lit8 v15, v15, 0x1

    move v3, v4

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v18

    goto :goto_a

    :cond_19
    move/from16 v18, v4

    move v15, v2

    :cond_1a
    :goto_c
    const/4 v2, 0x0

    goto :goto_10

    :cond_1b
    move/from16 v18, v4

    if-gtz v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v2, v14, :cond_1f

    if-lez v2, :cond_1c

    iget v15, v8, Lo/i;->K0:I

    add-int/2addr v3, v15

    :cond_1c
    aget-object v15, v13, v2

    if-nez v15, :cond_1d

    goto :goto_e

    :cond_1d
    invoke-virtual {v8, v15, v1}, Lo/i;->K(Lo/f;I)I

    move-result v15

    add-int/2addr v15, v3

    if-le v15, v1, :cond_1e

    goto :goto_f

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    move v3, v15

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1f
    :goto_f
    move v2, v4

    :cond_20
    const/4 v15, 0x0

    :goto_10
    iget-object v3, v8, Lo/i;->T0:[I

    if-nez v3, :cond_21

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v8, Lo/i;->T0:[I

    :cond_21
    if-nez v2, :cond_22

    const/4 v3, 0x1

    if-eq v0, v3, :cond_23

    :cond_22
    if-nez v15, :cond_24

    if-nez v0, :cond_24

    :cond_23
    move v4, v0

    move-object v3, v8

    move-object/from16 v19, v3

    move/from16 v17, v12

    move/from16 v20, v18

    const/4 v0, 0x1

    move v12, v9

    move-object/from16 v18, v16

    move v9, v5

    move v5, v1

    move-object/from16 v1, p0

    move/from16 v16, v11

    move v11, v7

    move-object/from16 v7, v18

    move/from16 v39, v6

    move v6, v2

    move v2, v15

    move v15, v10

    move/from16 v10, v39

    goto/16 :goto_1e

    :cond_24
    move v4, v0

    move-object/from16 p1, v8

    move-object/from16 v17, p1

    move-object v0, v13

    const/4 v3, 0x0

    move v13, v10

    move v10, v6

    move v6, v2

    move v2, v15

    move v15, v12

    move v12, v9

    move v9, v5

    move v5, v1

    move v1, v14

    move v14, v11

    move v11, v7

    move-object/from16 v7, v16

    :goto_11
    if-nez v3, :cond_3b

    if-nez v4, :cond_25

    int-to-float v6, v1

    move/from16 v19, v3

    int-to-float v3, v2

    div-float/2addr v6, v3

    move v3, v9

    move/from16 v20, v10

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v6, v9

    goto :goto_12

    :cond_25
    move/from16 v19, v3

    move v3, v9

    move/from16 v20, v10

    int-to-float v2, v1

    int-to-float v9, v6

    div-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    :goto_12
    move/from16 v39, v6

    move v6, v2

    move/from16 v2, v39

    iget-object v9, v8, Lo/i;->S0:[Lo/f;

    if-eqz v9, :cond_27

    array-length v10, v9

    if-ge v10, v6, :cond_26

    goto :goto_13

    :cond_26
    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v10, 0x0

    new-array v9, v6, [Lo/f;

    iput-object v9, v8, Lo/i;->S0:[Lo/f;

    :goto_14
    iget-object v9, v8, Lo/i;->R0:[Lo/f;

    if-eqz v9, :cond_29

    array-length v10, v9

    if-ge v10, v2, :cond_28

    goto :goto_15

    :cond_28
    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    :cond_29
    :goto_15
    new-array v9, v2, [Lo/f;

    iput-object v9, v8, Lo/i;->R0:[Lo/f;

    :goto_16
    const/4 v9, 0x0

    :goto_17
    if-ge v9, v6, :cond_32

    const/4 v10, 0x0

    :goto_18
    if-ge v10, v2, :cond_31

    mul-int v21, v10, v6

    add-int v21, v21, v9

    move/from16 v22, v1

    const/4 v1, 0x1

    if-ne v4, v1, :cond_2a

    mul-int v1, v9, v2

    add-int v21, v1, v10

    :cond_2a
    move/from16 v1, v21

    move/from16 v21, v3

    array-length v3, v0

    if-lt v1, v3, :cond_2b

    goto :goto_19

    :cond_2b
    aget-object v1, v0, v1

    if-nez v1, :cond_2c

    :goto_19
    move-object/from16 v23, v0

    goto :goto_1a

    :cond_2c
    invoke-virtual {v8, v1, v5}, Lo/i;->L(Lo/f;I)I

    move-result v3

    move-object/from16 v23, v0

    iget-object v0, v8, Lo/i;->S0:[Lo/f;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lo/f;->n()I

    move-result v0

    if-ge v0, v3, :cond_2e

    :cond_2d
    iget-object v0, v8, Lo/i;->S0:[Lo/f;

    aput-object v1, v0, v9

    :cond_2e
    invoke-virtual {v8, v1, v5}, Lo/i;->K(Lo/f;I)I

    move-result v0

    iget-object v3, v8, Lo/i;->R0:[Lo/f;

    aget-object v3, v3, v10

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lo/f;->l()I

    move-result v3

    if-ge v3, v0, :cond_30

    :cond_2f
    iget-object v0, v8, Lo/i;->R0:[Lo/f;

    aput-object v1, v0, v10

    :cond_30
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v21

    move/from16 v1, v22

    move-object/from16 v0, v23

    goto :goto_18

    :cond_31
    move-object/from16 v23, v0

    move/from16 v22, v1

    move/from16 v21, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_32
    move-object/from16 v23, v0

    move/from16 v22, v1

    move/from16 v21, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1b
    if-ge v0, v6, :cond_35

    iget-object v3, v8, Lo/i;->S0:[Lo/f;

    aget-object v3, v3, v0

    if-eqz v3, :cond_34

    if-lez v0, :cond_33

    iget v9, v8, Lo/i;->J0:I

    add-int/2addr v1, v9

    :cond_33
    invoke-virtual {v8, v3, v5}, Lo/i;->L(Lo/f;I)I

    move-result v3

    add-int/2addr v3, v1

    move v1, v3

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_35
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v0, v2, :cond_38

    iget-object v9, v8, Lo/i;->R0:[Lo/f;

    aget-object v9, v9, v0

    if-eqz v9, :cond_37

    if-lez v0, :cond_36

    iget v10, v8, Lo/i;->K0:I

    add-int/2addr v3, v10

    :cond_36
    invoke-virtual {v8, v9, v5}, Lo/i;->K(Lo/f;I)I

    move-result v9

    add-int/2addr v9, v3

    move v3, v9

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_38
    const/4 v0, 0x0

    aput v1, v7, v0

    const/4 v0, 0x1

    aput v3, v7, v0

    if-nez v4, :cond_39

    if-le v1, v5, :cond_3a

    if-le v6, v0, :cond_3a

    add-int/lit8 v6, v6, -0x1

    goto :goto_1d

    :cond_39
    if-le v3, v5, :cond_3a

    if-le v2, v0, :cond_3a

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    move/from16 v39, v6

    move v6, v2

    move/from16 v2, v39

    move/from16 v3, v19

    move/from16 v10, v20

    move/from16 v9, v21

    move/from16 v1, v22

    move-object/from16 v0, v23

    goto/16 :goto_11

    :cond_3a
    move-object/from16 v1, p0

    move-object v3, v8

    move-object/from16 v19, v17

    move/from16 v10, v20

    move/from16 v9, v21

    move-object/from16 v8, p1

    move/from16 v17, v15

    move/from16 v20, v18

    move v15, v13

    move-object/from16 v18, v16

    move-object/from16 v13, v23

    move/from16 v16, v14

    move/from16 v14, v22

    move/from16 v39, v6

    move v6, v2

    move/from16 v2, v39

    :goto_1e
    move-object/from16 p0, v1

    move-object/from16 p1, v8

    move v1, v14

    move/from16 v14, v16

    move-object/from16 v16, v18

    move/from16 v18, v20

    move-object v8, v3

    move v3, v0

    move-object v0, v13

    move v13, v15

    move/from16 v15, v17

    move-object/from16 v17, v19

    goto/16 :goto_11

    :cond_3b
    move/from16 v21, v9

    move/from16 v20, v10

    const/4 v0, 0x1

    iget-object v1, v8, Lo/i;->T0:[I

    const/4 v3, 0x0

    aput v2, v1, v3

    aput v6, v1, v0

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move v7, v11

    move v9, v12

    move v10, v13

    move v11, v14

    move v12, v15

    move-object/from16 v3, v16

    move/from16 v4, v18

    move/from16 v6, v20

    move/from16 v5, v21

    goto/16 :goto_38

    :cond_3c
    move/from16 v18, v4

    iget v4, v8, Lo/i;->P0:I

    if-nez v14, :cond_3d

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v36, v11

    move/from16 v35, v12

    move-object/from16 v29, v16

    move/from16 v30, v18

    goto/16 :goto_37

    :cond_3d
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lo/h;

    iget-object v2, v8, Lo/f;->C:Lo/d;

    move/from16 v17, v5

    iget-object v5, v8, Lo/f;->D:Lo/d;

    move/from16 v19, v6

    iget-object v6, v8, Lo/f;->E:Lo/d;

    move/from16 v20, v7

    iget-object v7, v8, Lo/f;->F:Lo/d;

    move/from16 v27, v9

    move v9, v0

    move-object v0, v3

    move/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v21, v2

    move v2, v4

    move-object v9, v3

    move-object/from16 v29, v16

    move-object/from16 v3, v21

    move/from16 v31, v4

    move/from16 v30, v18

    move-object v4, v5

    move/from16 v32, v17

    move-object v5, v6

    move/from16 v33, v19

    move-object v6, v7

    move/from16 v34, v20

    move/from16 v7, v28

    invoke-direct/range {v0 .. v7}, Lo/h;-><init>(Lo/i;ILo/d;Lo/d;Lo/d;Lo/d;I)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v31, :cond_45

    move-object v3, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_1f
    if-ge v9, v14, :cond_44

    aget-object v7, v13, v9

    move/from16 v6, v28

    invoke-virtual {v8, v7, v6}, Lo/i;->L(Lo/f;I)I

    move-result v17

    iget-object v2, v7, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3e

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    move/from16 v18, v0

    if-eq v1, v6, :cond_3f

    iget v0, v8, Lo/i;->J0:I

    add-int/2addr v0, v1

    add-int v0, v0, v17

    if-le v0, v6, :cond_40

    :cond_3f
    iget-object v0, v3, Lo/h;->b:Lo/f;

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    goto :goto_20

    :cond_40
    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_41

    if-lez v9, :cond_41

    iget v2, v8, Lo/i;->O0:I

    if-lez v2, :cond_41

    rem-int v2, v9, v2

    if-nez v2, :cond_41

    const/4 v0, 0x1

    :cond_41
    if-eqz v0, :cond_42

    new-instance v5, Lo/h;

    iget-object v3, v8, Lo/f;->C:Lo/d;

    iget-object v4, v8, Lo/f;->D:Lo/d;

    iget-object v2, v8, Lo/f;->E:Lo/d;

    iget-object v1, v8, Lo/f;->F:Lo/d;

    move-object v0, v5

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move/from16 v2, v31

    move/from16 v28, v10

    move-object v10, v5

    move-object/from16 v5, v20

    move/from16 v35, v6

    move-object/from16 v6, v19

    move/from16 v36, v11

    move-object v11, v7

    move/from16 v7, v35

    invoke-direct/range {v0 .. v7}, Lo/h;-><init>(Lo/i;ILo/d;Lo/d;Lo/d;Lo/d;I)V

    iput v9, v10, Lo/h;->n:I

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v10

    goto :goto_21

    :cond_42
    move/from16 v35, v6

    move/from16 v28, v10

    move/from16 v36, v11

    move-object v11, v7

    if-lez v9, :cond_43

    iget v0, v8, Lo/i;->J0:I

    add-int v0, v0, v17

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_22

    :cond_43
    :goto_21
    move/from16 v1, v17

    :goto_22
    invoke-virtual {v3, v11}, Lo/h;->a(Lo/f;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v18

    move/from16 v10, v28

    move/from16 v28, v35

    move/from16 v11, v36

    goto/16 :goto_1f

    :cond_44
    move/from16 v36, v11

    move/from16 v35, v28

    move/from16 v28, v10

    goto/16 :goto_27

    :cond_45
    move/from16 v36, v11

    move/from16 v35, v28

    move/from16 v28, v10

    move-object v3, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_23
    if-ge v9, v14, :cond_4c

    aget-object v10, v13, v9

    move/from16 v11, v35

    invoke-virtual {v8, v10, v11}, Lo/i;->K(Lo/f;I)I

    move-result v17

    iget-object v2, v10, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_46

    add-int/lit8 v0, v0, 0x1

    :cond_46
    move/from16 v18, v0

    if-eq v1, v11, :cond_47

    iget v0, v8, Lo/i;->K0:I

    add-int/2addr v0, v1

    add-int v0, v0, v17

    if-le v0, v11, :cond_48

    :cond_47
    iget-object v0, v3, Lo/h;->b:Lo/f;

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_24

    :cond_48
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_49

    if-lez v9, :cond_49

    iget v2, v8, Lo/i;->O0:I

    if-lez v2, :cond_49

    rem-int v2, v9, v2

    if-nez v2, :cond_49

    const/4 v0, 0x1

    :cond_49
    if-eqz v0, :cond_4a

    new-instance v7, Lo/h;

    iget-object v3, v8, Lo/f;->C:Lo/d;

    iget-object v4, v8, Lo/f;->D:Lo/d;

    iget-object v5, v8, Lo/f;->E:Lo/d;

    iget-object v6, v8, Lo/f;->F:Lo/d;

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v35, v12

    move-object v12, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lo/h;-><init>(Lo/i;ILo/d;Lo/d;Lo/d;Lo/d;I)V

    iput v9, v12, Lo/h;->n:I

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v12

    goto :goto_25

    :cond_4a
    move/from16 v35, v12

    if-lez v9, :cond_4b

    iget v0, v8, Lo/i;->K0:I

    add-int v0, v0, v17

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_26

    :cond_4b
    :goto_25
    move/from16 v1, v17

    :goto_26
    invoke-virtual {v3, v10}, Lo/h;->a(Lo/f;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v18

    move/from16 v12, v35

    move/from16 v35, v11

    goto :goto_23

    :cond_4c
    :goto_27
    move/from16 v11, v35

    move/from16 v35, v12

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v8, Lo/i;->q0:I

    iget v3, v8, Lo/i;->m0:I

    iget v4, v8, Lo/i;->r0:I

    iget v5, v8, Lo/i;->n0:I

    iget-object v6, v8, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v9, v6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v7, :cond_4e

    const/4 v9, 0x1

    aget-object v6, v6, v9

    if-ne v6, v7, :cond_4d

    goto :goto_28

    :cond_4d
    const/4 v6, 0x0

    goto :goto_29

    :cond_4e
    :goto_28
    const/4 v6, 0x1

    :goto_29
    if-lez v0, :cond_5f

    if-eqz v6, :cond_5f

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v1, :cond_5f

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/h;

    if-nez v31, :cond_4f

    invoke-virtual {v6}, Lo/h;->d()I

    move-result v7

    goto :goto_2b

    :cond_4f
    invoke-virtual {v6}, Lo/h;->c()I

    move-result v7

    :goto_2b
    sub-int v7, v11, v7

    iget v9, v6, Lo/h;->p:I

    if-nez v9, :cond_50

    move/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_32

    :cond_50
    iget v10, v6, Lo/h;->o:I

    div-int/2addr v7, v9

    const/4 v9, 0x0

    :goto_2c
    iget-object v12, v6, Lo/h;->r:Lo/i;

    if-ge v9, v10, :cond_55

    iget v13, v6, Lo/h;->n:I

    add-int/2addr v13, v9

    iget v14, v12, Lo/i;->V0:I

    if-lt v13, v14, :cond_51

    goto/16 :goto_2f

    :cond_51
    iget-object v14, v12, Lo/i;->U0:[Lo/f;

    aget-object v13, v14, v13

    iget v14, v6, Lo/h;->a:I

    if-nez v14, :cond_53

    if-eqz v13, :cond_52

    iget-object v14, v13, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v23, v2

    const/16 v17, 0x0

    aget-object v2, v14, v17

    move/from16 v24, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_54

    iget v2, v13, Lo/f;->l:I

    if-nez v2, :cond_54

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    aget-object v14, v14, v3

    invoke-virtual {v13}, Lo/f;->l()I

    move-result v17

    move-object/from16 v19, v2

    move/from16 v20, v7

    move-object/from16 v21, v14

    move/from16 v22, v17

    goto :goto_2d

    :cond_52
    move/from16 v23, v2

    move/from16 v24, v3

    goto :goto_2e

    :cond_53
    move/from16 v23, v2

    move/from16 v24, v3

    const/4 v3, 0x1

    if-eqz v13, :cond_54

    iget-object v2, v13, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v2, v3

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v3, :cond_54

    iget v3, v13, Lo/f;->m:I

    if-nez v3, :cond_54

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v13}, Lo/f;->n()I

    move-result v3

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v22, v7

    move-object/from16 v21, v14

    :goto_2d
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v22}, Lo/i;->M(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_54
    :goto_2e
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v23

    move/from16 v3, v24

    goto :goto_2c

    :cond_55
    :goto_2f
    move/from16 v23, v2

    move/from16 v24, v3

    const/4 v2, 0x0

    iput v2, v6, Lo/h;->l:I

    iput v2, v6, Lo/h;->m:I

    const/4 v3, 0x0

    iput-object v3, v6, Lo/h;->b:Lo/f;

    iput v2, v6, Lo/h;->c:I

    iget v2, v6, Lo/h;->o:I

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_5e

    iget v7, v6, Lo/h;->n:I

    add-int/2addr v7, v3

    iget v9, v12, Lo/i;->V0:I

    if-lt v7, v9, :cond_56

    goto :goto_32

    :cond_56
    iget-object v9, v12, Lo/i;->U0:[Lo/f;

    aget-object v7, v9, v7

    iget v9, v6, Lo/h;->a:I

    if-nez v9, :cond_5a

    invoke-virtual {v7}, Lo/f;->n()I

    move-result v9

    iget v10, v12, Lo/i;->J0:I

    iget v13, v7, Lo/f;->b0:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_57

    const/4 v10, 0x0

    :cond_57
    iget v13, v6, Lo/h;->l:I

    add-int/2addr v9, v10

    add-int/2addr v9, v13

    iput v9, v6, Lo/h;->l:I

    iget v9, v6, Lo/h;->q:I

    invoke-virtual {v12, v7, v9}, Lo/i;->K(Lo/f;I)I

    move-result v9

    iget-object v10, v6, Lo/h;->b:Lo/f;

    if-eqz v10, :cond_58

    iget v10, v6, Lo/h;->c:I

    if-ge v10, v9, :cond_59

    :cond_58
    iput-object v7, v6, Lo/h;->b:Lo/f;

    iput v9, v6, Lo/h;->c:I

    iput v9, v6, Lo/h;->m:I

    :cond_59
    move/from16 v17, v2

    const/16 v2, 0x8

    goto :goto_31

    :cond_5a
    iget v9, v6, Lo/h;->q:I

    invoke-virtual {v12, v7, v9}, Lo/i;->L(Lo/f;I)I

    move-result v9

    iget v10, v6, Lo/h;->q:I

    invoke-virtual {v12, v7, v10}, Lo/i;->K(Lo/f;I)I

    move-result v10

    iget v13, v12, Lo/i;->K0:I

    iget v14, v7, Lo/f;->b0:I

    move/from16 v17, v2

    const/16 v2, 0x8

    if-ne v14, v2, :cond_5b

    const/4 v13, 0x0

    :cond_5b
    iget v14, v6, Lo/h;->m:I

    add-int/2addr v10, v13

    add-int/2addr v10, v14

    iput v10, v6, Lo/h;->m:I

    iget-object v10, v6, Lo/h;->b:Lo/f;

    if-eqz v10, :cond_5c

    iget v10, v6, Lo/h;->c:I

    if-ge v10, v9, :cond_5d

    :cond_5c
    iput-object v7, v6, Lo/h;->b:Lo/f;

    iput v9, v6, Lo/h;->c:I

    iput v9, v6, Lo/h;->l:I

    :cond_5d
    :goto_31
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v17

    goto :goto_30

    :cond_5e
    :goto_32
    const/16 v2, 0x8

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_2a

    :cond_5f
    move/from16 v23, v2

    move/from16 v24, v3

    iget-object v0, v8, Lo/f;->F:Lo/d;

    iget-object v2, v8, Lo/f;->E:Lo/d;

    iget-object v3, v8, Lo/f;->C:Lo/d;

    iget-object v6, v8, Lo/f;->D:Lo/d;

    move-object v14, v0

    move-object/from16 v37, v2

    move-object v9, v3

    move v7, v5

    move-object v10, v6

    move/from16 v12, v23

    move/from16 v13, v24

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_33
    if-ge v3, v1, :cond_65

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p2, v0

    move-object/from16 v0, v16

    check-cast v0, Lo/h;

    if-nez v31, :cond_62

    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_60

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/h;

    iget-object v7, v7, Lo/h;->b:Lo/f;

    iget-object v7, v7, Lo/f;->D:Lo/d;

    move-object/from16 v38, v2

    move-object v14, v7

    const/4 v7, 0x0

    goto :goto_34

    :cond_60
    iget v7, v8, Lo/i;->n0:I

    move-object/from16 v14, p2

    move-object/from16 v38, v2

    :goto_34
    iget-object v2, v0, Lo/h;->b:Lo/f;

    iget-object v2, v2, Lo/f;->F:Lo/d;

    move-object/from16 v16, v0

    move/from16 v17, v31

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v37

    move-object/from16 v21, v14

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lo/h;->e(ILo/d;Lo/d;Lo/d;Lo/d;IIIII)V

    invoke-virtual {v0}, Lo/h;->d()I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Lo/h;->c()I

    move-result v0

    add-int/2addr v0, v5

    if-lez v3, :cond_61

    iget v5, v8, Lo/i;->K0:I

    add-int/2addr v0, v5

    :cond_61
    move v5, v0

    move-object v10, v2

    const/4 v13, 0x0

    goto :goto_36

    :cond_62
    move-object/from16 v38, v2

    add-int/lit8 v2, v1, -0x1

    if-ge v3, v2, :cond_63

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/h;

    iget-object v2, v2, Lo/h;->b:Lo/f;

    iget-object v2, v2, Lo/f;->C:Lo/d;

    move-object/from16 v37, v2

    const/4 v2, 0x0

    goto :goto_35

    :cond_63
    iget v2, v8, Lo/i;->r0:I

    move-object/from16 v37, v38

    :goto_35
    iget-object v6, v0, Lo/h;->b:Lo/f;

    iget-object v6, v6, Lo/f;->E:Lo/d;

    move-object/from16 v16, v0

    move/from16 v17, v31

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v37

    move-object/from16 v21, v14

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v2

    move/from16 v25, v7

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lo/h;->e(ILo/d;Lo/d;Lo/d;Lo/d;IIIII)V

    invoke-virtual {v0}, Lo/h;->d()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v0}, Lo/h;->c()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v3, :cond_64

    iget v4, v8, Lo/i;->J0:I

    add-int/2addr v9, v4

    :cond_64
    move v5, v0

    move v4, v9

    const/4 v12, 0x0

    move-object v9, v6

    move v6, v2

    :goto_36
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v2, v38

    goto/16 :goto_33

    :cond_65
    const/4 v0, 0x0

    aput v4, v29, v0

    const/4 v0, 0x1

    aput v5, v29, v0

    goto :goto_37

    :cond_66
    move/from16 v30, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v36, v11

    move/from16 v35, v12

    move-object/from16 v29, v16

    move v11, v1

    iget v2, v8, Lo/i;->P0:I

    if-nez v14, :cond_67

    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v17, v8

    move/from16 v9, v27

    move/from16 v10, v28

    move-object/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v12, v35

    move/from16 v11, v36

    :goto_38
    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_3b

    :cond_67
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_68

    new-instance v9, Lo/h;

    iget-object v3, v8, Lo/f;->C:Lo/d;

    iget-object v4, v8, Lo/f;->D:Lo/d;

    iget-object v5, v8, Lo/f;->E:Lo/d;

    iget-object v6, v8, Lo/f;->F:Lo/d;

    move-object v0, v9

    move-object/from16 v1, p1

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lo/h;-><init>(Lo/i;ILo/d;Lo/d;Lo/d;Lo/d;I)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_68
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lo/h;

    iput v0, v9, Lo/h;->c:I

    const/4 v1, 0x0

    iput-object v1, v9, Lo/h;->b:Lo/f;

    iput v0, v9, Lo/h;->l:I

    iput v0, v9, Lo/h;->m:I

    iput v0, v9, Lo/h;->n:I

    iput v0, v9, Lo/h;->o:I

    iput v0, v9, Lo/h;->p:I

    iget-object v0, v8, Lo/f;->C:Lo/d;

    iget-object v1, v8, Lo/f;->D:Lo/d;

    iget-object v3, v8, Lo/f;->E:Lo/d;

    iget-object v4, v8, Lo/f;->F:Lo/d;

    iget v5, v8, Lo/i;->q0:I

    iget v6, v8, Lo/i;->m0:I

    iget v7, v8, Lo/i;->r0:I

    iget v10, v8, Lo/i;->n0:I

    move-object/from16 v16, v9

    move/from16 v17, v2

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-virtual/range {v16 .. v26}, Lo/h;->e(ILo/d;Lo/d;Lo/d;Lo/d;IIIII)V

    :goto_39
    const/4 v0, 0x0

    :goto_3a
    if-ge v0, v14, :cond_69

    aget-object v1, v13, v0

    invoke-virtual {v9, v1}, Lo/h;->a(Lo/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_69
    invoke-virtual {v9}, Lo/h;->d()I

    move-result v0

    const/4 v1, 0x0

    aput v0, v29, v1

    invoke-virtual {v9}, Lo/h;->c()I

    move-result v0

    const/4 v2, 0x1

    aput v0, v29, v2

    move-object/from16 v0, p0

    move-object/from16 v17, v8

    move/from16 v9, v27

    move/from16 v10, v28

    move-object/from16 v3, v29

    move/from16 v4, v30

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v12, v35

    move/from16 v11, v36

    :goto_3b
    aget v13, v3, v1

    add-int/2addr v13, v7

    add-int v1, v13, v6

    aget v3, v3, v2

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_6a

    move v1, v10

    goto :goto_3c

    :cond_6a
    if-ne v9, v4, :cond_6b

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3c

    :cond_6b
    if-nez v9, :cond_6c

    goto :goto_3c

    :cond_6c
    const/4 v1, 0x0

    :goto_3c
    if-ne v11, v5, :cond_6d

    move v3, v12

    goto :goto_3d

    :cond_6d
    if-ne v11, v4, :cond_6e

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_3d

    :cond_6e
    if-nez v11, :cond_6f

    goto :goto_3d

    :cond_6f
    const/4 v3, 0x0

    :goto_3d
    iput v1, v8, Lo/i;->t0:I

    iput v3, v8, Lo/i;->u0:I

    invoke-virtual {v8, v1}, Lo/f;->G(I)V

    invoke-virtual {v8, v3}, Lo/f;->D(I)V

    iget v1, v8, Lo/m;->l0:I

    if-lez v1, :cond_70

    move v13, v2

    goto :goto_3e

    :cond_70
    const/4 v13, 0x0

    :goto_3e
    iput-boolean v13, v8, Lo/i;->s0:Z

    move-object/from16 v8, v17

    :goto_3f
    iget v1, v8, Lo/i;->t0:I

    iget v2, v8, Lo/i;->u0:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_40

    :cond_71
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_40
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->i(Lo/i;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->F0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->z0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->G0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->A0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->L0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->D0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->J0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->O0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->P0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->m0:I

    iput p1, v0, Lo/i;->n0:I

    iput p1, v0, Lo/i;->o0:I

    iput p1, v0, Lo/i;->p0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->n0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->q0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->r0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->m0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->M0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->E0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->K0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->y0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->j:Lo/i;

    iput p1, v0, Lo/i;->N0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
