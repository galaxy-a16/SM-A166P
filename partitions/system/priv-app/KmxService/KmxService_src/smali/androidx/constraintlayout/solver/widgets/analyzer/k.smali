.class public final Landroidx/constraintlayout/solver/widgets/analyzer/k;
.super Landroidx/constraintlayout/solver/widgets/analyzer/r;
.source "SourceFile"


# static fields
.field public static final k:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/k;->k:[I

    return-void
.end method

.method public constructor <init>(Lo/f;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;-><init>(Lo/f;)V

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    return-void
.end method

.method public static m([IIIIIFI)V
    .locals 2

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    const/4 p1, -0x1

    const/4 p3, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p6, p1, :cond_2

    if-eqz p6, :cond_1

    if-eq p6, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p2, p0, p3

    aput p1, p0, v1

    goto :goto_0

    :cond_1
    int-to-float p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    aput p1, p0, p3

    aput p4, p0, v1

    goto :goto_0

    :cond_2
    int-to-float p1, p4

    mul-float/2addr p1, p5

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p6, p2

    div-float/2addr p6, p5

    add-float/2addr p6, v0

    float-to-int p5, p6

    if-gt p1, p2, :cond_3

    aput p1, p0, p3

    aput p4, p0, v1

    goto :goto_0

    :cond_3
    if-gt p5, p4, :cond_4

    aput p2, p0, p3

    aput p5, p0, v1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/j;->a:[I

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_27

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v4, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    if-nez v4, :cond_1e

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_1e

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v9, v4, Lo/f;->l:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1d

    if-eq v9, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    iget v9, v4, Lo/f;->m:I

    const/4 v10, -0x1

    if-eqz v9, :cond_4

    if-ne v9, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v4, Lo/f;->S:I

    if-eq v3, v10, :cond_3

    if-eqz v3, :cond_2

    if-eq v3, v8, :cond_3

    move v3, v2

    goto/16 :goto_10

    :cond_2
    iget-object v3, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v3, v3

    iget v4, v4, Lo/f;->R:F

    div-float/2addr v3, v4

    goto/16 :goto_f

    :cond_3
    iget-object v3, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v3, v3

    iget v4, v4, Lo/f;->R:F

    goto/16 :goto_e

    :cond_4
    :goto_0
    iget-object v3, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v9, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v11, v4, Lo/f;->C:Lo/d;

    iget-object v11, v11, Lo/d;->f:Lo/d;

    if-eqz v11, :cond_5

    move v11, v8

    goto :goto_1

    :cond_5
    move v11, v2

    :goto_1
    iget-object v12, v4, Lo/f;->D:Lo/d;

    iget-object v12, v12, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_6

    move v12, v8

    goto :goto_2

    :cond_6
    move v12, v2

    :goto_2
    iget-object v13, v4, Lo/f;->E:Lo/d;

    iget-object v13, v13, Lo/d;->f:Lo/d;

    if-eqz v13, :cond_7

    move v13, v8

    goto :goto_3

    :cond_7
    move v13, v2

    :goto_3
    iget-object v14, v4, Lo/f;->F:Lo/d;

    iget-object v14, v14, Lo/d;->f:Lo/d;

    if-eqz v14, :cond_8

    move v14, v8

    goto :goto_4

    :cond_8
    move v14, v2

    :goto_4
    iget v15, v4, Lo/f;->S:I

    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    if-eqz v13, :cond_11

    if-eqz v14, :cond_11

    iget v4, v4, Lo/f;->R:F

    iget-boolean v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    sget-object v11, Landroidx/constraintlayout/solver/widgets/analyzer/k;->k:[I

    if-eqz v10, :cond_b

    iget-boolean v10, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v10, :cond_b

    iget-boolean v7, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v7, :cond_a

    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v16, v7, v5

    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v17, v5, v6

    iget v5, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v18, v5, v6

    iget v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v19, v5, v3

    move v10, v15

    move-object v15, v11

    move/from16 v20, v4

    move/from16 v21, v10

    invoke-static/range {v15 .. v21}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->m([IIIIIFI)V

    aget v2, v11, v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    aget v1, v11, v8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    move v10, v15

    iget-boolean v12, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v13, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    if-eqz v12, :cond_e

    iget-boolean v12, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v12, :cond_e

    iget-boolean v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v12, :cond_d

    iget-boolean v12, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v12, :cond_c

    goto :goto_6

    :cond_c
    iget v12, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v16, v12, v14

    iget v12, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v17, v12, v14

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v18, v12, v14

    iget-object v12, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v19, v12, v14

    move-object v15, v11

    move/from16 v20, v4

    move/from16 v21, v10

    invoke-static/range {v15 .. v21}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->m([IIIIIFI)V

    aget v12, v11, v2

    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v12, v12, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    aget v14, v11, v8

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_7

    :cond_d
    :goto_6
    return-void

    :cond_e
    :goto_7
    iget-boolean v12, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v12, :cond_10

    iget-boolean v12, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v12, :cond_10

    iget-boolean v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v12, :cond_10

    iget-boolean v12, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v12, :cond_f

    goto :goto_8

    :cond_f
    iget-object v12, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v16, v12, v14

    iget-object v12, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v14, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v17, v12, v14

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int v18, v12, v9

    iget-object v9, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int v19, v9, v3

    move-object v15, v11

    move/from16 v20, v4

    move/from16 v21, v10

    invoke-static/range {v15 .. v21}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->m([IIIIIFI)V

    aget v3, v11, v2

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v3, v3, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    aget v4, v11, v8

    goto/16 :goto_c

    :cond_10
    :goto_8
    return-void

    :cond_11
    if-eqz v11, :cond_17

    if-eqz v13, :cond_17

    iget-boolean v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v3, :cond_16

    iget-boolean v3, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v3, :cond_12

    goto :goto_a

    :cond_12
    iget v3, v4, Lo/f;->R:F

    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v9, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v4, v9

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v11, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int/2addr v9, v11

    if-eq v15, v10, :cond_14

    if-eqz v15, :cond_14

    if-eq v15, v8, :cond_13

    goto/16 :goto_11

    :cond_13
    sub-int/2addr v9, v4

    invoke-virtual {v0, v9, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v4

    int-to-float v9, v4

    div-float/2addr v9, v3

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_15

    int-to-float v4, v10

    mul-float/2addr v4, v3

    goto :goto_9

    :cond_14
    sub-int/2addr v9, v4

    invoke-virtual {v0, v9, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v4

    int-to-float v9, v4

    mul-float/2addr v9, v3

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_15

    int-to-float v4, v10

    div-float/2addr v4, v3

    :goto_9
    add-float/2addr v4, v7

    float-to-int v4, v4

    :cond_15
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v3, v3, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto/16 :goto_11

    :cond_16
    :goto_a
    return-void

    :cond_17
    if-eqz v12, :cond_1e

    if-eqz v14, :cond_1e

    iget-boolean v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v11, :cond_1c

    iget-boolean v11, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v11, :cond_18

    goto :goto_d

    :cond_18
    iget v4, v4, Lo/f;->R:F

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v11, v9

    iget-object v9, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    sub-int/2addr v9, v3

    if-eq v15, v10, :cond_1a

    if-eqz v15, :cond_19

    if-eq v15, v8, :cond_1a

    goto :goto_11

    :cond_19
    sub-int/2addr v9, v11

    invoke-virtual {v0, v9, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v3

    int-to-float v9, v3

    mul-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_1b

    int-to-float v3, v10

    div-float/2addr v3, v4

    goto :goto_b

    :cond_1a
    sub-int/2addr v9, v11

    invoke-virtual {v0, v9, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v3

    int-to-float v9, v3

    div-float/2addr v9, v4

    add-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v0, v9, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v10

    if-eq v9, v10, :cond_1b

    int-to-float v3, v10

    mul-float/2addr v3, v4

    :goto_b
    add-float/2addr v3, v7

    float-to-int v3, v3

    :cond_1b
    move v4, v3

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v3, v3, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    :goto_c
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_11

    :cond_1c
    :goto_d
    return-void

    :cond_1d
    iget-object v3, v4, Lo/f;->O:Lo/f;

    if-eqz v3, :cond_1e

    iget-object v3, v3, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v9, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v9, :cond_1e

    iget v4, v4, Lo/f;->q:F

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v3, v3

    :goto_e
    mul-float/2addr v3, v4

    :goto_f
    add-float/2addr v3, v7

    float-to-int v3, v3

    :goto_10
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_1e
    :goto_11
    iget-boolean v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v3, :cond_26

    iget-boolean v3, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v3, :cond_1f

    goto/16 :goto_13

    :cond_1f
    iget-boolean v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_20

    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_20

    return-void

    :cond_20
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v4, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v9, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    if-nez v3, :cond_21

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v10, :cond_21

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v10, v3, Lo/f;->l:I

    if-nez v10, :cond_21

    invoke-virtual {v3}, Lo/f;->t()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v0, v3

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v2, v3

    sub-int v3, v2, v0

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    return-void

    :cond_21
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v3, :cond_23

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v10, :cond_23

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    if-ne v3, v8, :cond_23

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v10, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v3, v10

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v10, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v3

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v10, v8, Lo/f;->p:I

    iget v8, v8, Lo/f;->o:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v10, :cond_22

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_22
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_23
    iget-boolean v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v3, :cond_24

    return-void

    :cond_24
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v8, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v8, v4

    iget v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v10, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v10, v9

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v0, v0, Lo/f;->Y:F

    if-ne v3, v2, :cond_25

    move v0, v7

    goto :goto_12

    :cond_25
    move v4, v8

    move v9, v10

    :goto_12
    sub-int/2addr v9, v4

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    sub-int/2addr v9, v2

    int-to-float v2, v4

    add-float/2addr v2, v7

    int-to-float v3, v9

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    float-to-int v0, v3

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget v0, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    add-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    :cond_26
    :goto_13
    return-void

    :cond_27
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v3, v1, Lo/f;->C:Lo/d;

    iget-object v1, v1, Lo/f;->E:Lo/d;

    invoke-virtual {v0, v3, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->l(Lo/d;Lo/d;I)V

    return-void
.end method

.method public final d()V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v1, v0, Lo/f;->a:Z

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/f;->n()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v5, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_7

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_3

    iget-object v7, v0, Lo/f;->O:Lo/f;

    if-eqz v7, :cond_1

    iget-object v8, v7, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v4

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_2

    :cond_1
    iget-object v8, v7, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v4

    if-ne v8, v6, :cond_3

    :cond_2
    invoke-virtual {v7}, Lo/f;->n()I

    move-result v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->C:Lo/d;

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->E:Lo/d;

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, v7, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v5, v5, Lo/f;->C:Lo/d;

    invoke-virtual {v5}, Lo/d;->e()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object v3, v7, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->E:Lo/d;

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    return-void

    :cond_3
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_7

    invoke-virtual {v0}, Lo/f;->n()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v0, Lo/f;->O:Lo/f;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v4

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_6

    :cond_5
    iget-object v7, v6, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v4

    if-ne v7, v5, :cond_7

    :cond_6
    iget-object v2, v6, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Lo/f;->C:Lo/d;

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    invoke-static {v3, v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object v0, v6, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->E:Lo/d;

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    return-void

    :cond_7
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v6, v0, Lo/f;->a:Z

    if-eqz v6, :cond_e

    iget-object v6, v0, Lo/f;->K:[Lo/d;

    aget-object v7, v6, v4

    iget-object v8, v7, Lo/d;->f:Lo/d;

    if-eqz v8, :cond_b

    aget-object v9, v6, v5

    iget-object v9, v9, Lo/d;->f:Lo/d;

    if-eqz v9, :cond_b

    invoke-virtual {v0}, Lo/f;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object p0, p0, v5

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v2, v2, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    invoke-static {v3, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :cond_a
    iput-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    iput-boolean v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    goto/16 :goto_7

    :cond_b
    if-eqz v8, :cond_c

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    :goto_1
    invoke-static {v3, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto :goto_2

    :cond_c
    aget-object v4, v6, v5

    iget-object v6, v4, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_d

    invoke-static {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object p0, p0, v5

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    neg-int p0, p0

    invoke-static {v3, v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto/16 :goto_7

    :cond_d
    instance-of v4, v0, Lo/l;

    if-nez v4, :cond_1a

    iget-object v4, v0, Lo/f;->O:Lo/f;

    if-eqz v4, :cond_1a

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v4}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-nez v0, :cond_1a

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, p0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0}, Lo/f;->o()I

    move-result p0

    goto :goto_1

    :goto_2
    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-static {v1, v3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v6, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v6, v0, Lo/f;->l:I

    const/4 v7, 0x2

    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    if-eq v6, v7, :cond_13

    const/4 v7, 0x3

    if-eq v6, v7, :cond_f

    goto/16 :goto_4

    :cond_f
    iget v6, v0, Lo/f;->m:I

    if-ne v6, v7, :cond_12

    iput-object p0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v6, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iput-object p0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iput-object p0, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iput-object p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    invoke-virtual {v0}, Lo/f;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-object p0, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    goto :goto_3

    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    invoke-virtual {v0}, Lo/f;->t()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    goto :goto_3

    :cond_12
    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_13
    iget-object v0, v0, Lo/f;->O:Lo/f;

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v0, Lo/f;->K:[Lo/d;

    aget-object v7, v6, v4

    iget-object v8, v7, Lo/d;->f:Lo/d;

    if-eqz v8, :cond_17

    aget-object v9, v6, v5

    iget-object v9, v9, Lo/d;->f:Lo/d;

    if-eqz v9, :cond_17

    invoke-virtual {v0}, Lo/f;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object p0, p0, v5

    :goto_5
    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    iput p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_7

    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v1, v1, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v5

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    goto :goto_7

    :cond_17
    if-eqz v8, :cond_18

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v6, Lo/f;->K:[Lo/d;

    aget-object v4, v6, v4

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    invoke-static {v3, v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto :goto_6

    :cond_18
    aget-object v4, v6, v5

    iget-object v6, v4, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_19

    invoke-static {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->K:[Lo/d;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    neg-int v4, v4

    invoke-static {v1, v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    goto :goto_7

    :cond_19
    instance-of v4, v0, Lo/l;

    if-nez v4, :cond_1a

    iget-object v4, v0, Lo/f;->O:Lo/f;

    if-eqz v4, :cond_1a

    iget-object v4, v4, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0}, Lo/f;->o()I

    move-result v0

    invoke-static {v3, v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :goto_6
    invoke-virtual {p0, v1, v3, v5, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    :cond_1a
    :goto_7
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iput v0, p0, Lo/f;->T:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c:Landroidx/constraintlayout/solver/widgets/analyzer/l;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget p0, p0, Lo/f;->l:I

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public final n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HorizontalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->c0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
