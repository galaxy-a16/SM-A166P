.class public final Landroidx/constraintlayout/solver/widgets/analyzer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo/g;

.field public b:Z

.field public c:Z

.field public final d:Lo/g;

.field public final e:Ljava/util/ArrayList;

.field public f:Landroidx/constraintlayout/solver/widgets/analyzer/o;

.field public final g:Landroidx/constraintlayout/solver/widgets/analyzer/b;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lo/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->h:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d:Lo/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V
    .locals 9

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c:Landroidx/constraintlayout/solver/widgets/analyzer/l;

    if-nez p3, :cond_a

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    iget-object v0, p3, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eq p1, v0, :cond_a

    iget-object p3, p3, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-ne p1, p3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Landroidx/constraintlayout/solver/widgets/analyzer/l;

    invoke-direct {p5, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/l;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c:Landroidx/constraintlayout/solver/widgets/analyzer/l;

    iget-object p3, p5, Landroidx/constraintlayout/solver/widgets/analyzer/l;->b:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, p3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_0

    :cond_3
    iget-object v6, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    if-ne p2, v7, :cond_7

    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_2

    :cond_7
    iget-object p3, p3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_3

    :cond_8
    iget-object p3, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_4

    :cond_9
    if-ne p2, v7, :cond_a

    instance-of p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz p3, :cond_a

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_5

    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lo/g;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/f;

    iget-object v3, v2, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v9, 0x1

    aget-object v3, v3, v9

    iget v6, v2, Lo/f;->b0:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    iput-boolean v9, v2, Lo/f;->a:Z

    goto :goto_0

    :cond_1
    iget v6, v2, Lo/f;->q:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v10

    const/4 v8, 0x2

    if-gez v7, :cond_2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_2

    iput v8, v2, Lo/f;->l:I

    :cond_2
    iget v7, v2, Lo/f;->t:F

    cmpg-float v11, v7, v10

    if-gez v11, :cond_3

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v11, :cond_3

    iput v8, v2, Lo/f;->m:I

    :cond_3
    iget v11, v2, Lo/f;->R:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    const/4 v12, 0x3

    if-lez v11, :cond_9

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v11, :cond_5

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v13, :cond_4

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v13, :cond_5

    :cond_4
    iput v12, v2, Lo/f;->l:I

    goto :goto_2

    :cond_5
    if-ne v3, v11, :cond_6

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v13, :cond_8

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v13, :cond_6

    goto :goto_1

    :cond_6
    if-ne v5, v11, :cond_9

    if-ne v3, v11, :cond_9

    iget v11, v2, Lo/f;->l:I

    if-nez v11, :cond_7

    iput v12, v2, Lo/f;->l:I

    :cond_7
    iget v11, v2, Lo/f;->m:I

    if-nez v11, :cond_9

    :cond_8
    :goto_1
    iput v12, v2, Lo/f;->m:I

    :cond_9
    :goto_2
    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v13, v2, Lo/f;->E:Lo/d;

    iget-object v14, v2, Lo/f;->C:Lo/d;

    if-ne v5, v11, :cond_b

    iget v15, v2, Lo/f;->l:I

    if-ne v15, v9, :cond_b

    iget-object v15, v14, Lo/d;->f:Lo/d;

    if-eqz v15, :cond_a

    iget-object v15, v13, Lo/d;->f:Lo/d;

    if-nez v15, :cond_b

    :cond_a
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_b
    iget-object v15, v2, Lo/f;->F:Lo/d;

    iget-object v10, v2, Lo/f;->D:Lo/d;

    if-ne v3, v11, :cond_d

    iget v4, v2, Lo/f;->m:I

    if-ne v4, v9, :cond_d

    iget-object v4, v10, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_c

    iget-object v4, v15, Lo/d;->f:Lo/d;

    if-nez v4, :cond_d

    :cond_c
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_d
    move-object v4, v3

    iget-object v3, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iput-object v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, v2, Lo/f;->l:I

    iput v8, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    iget-object v3, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iput-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v9, v2, Lo/f;->m:I

    iput v9, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_e

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v12, :cond_e

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v12, :cond_f

    :cond_e
    if-eq v4, v3, :cond_26

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v12, :cond_26

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_f

    goto/16 :goto_8

    :cond_f
    const/high16 v10, 0x3f000000    # 0.5f

    iget-object v12, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v13, v2, Lo/f;->K:[Lo/d;

    if-ne v5, v11, :cond_17

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v14, :cond_10

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_17

    :cond_10
    const/4 v15, 0x3

    if-ne v8, v15, :cond_12

    if-ne v4, v14, :cond_11

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v14

    move-object v7, v14

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_11
    invoke-virtual {v2}, Lo/f;->l()I

    move-result v3

    int-to-float v4, v3

    iget v5, v2, Lo/f;->R:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    float-to-int v4, v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v8, v3

    move v6, v4

    move-object v7, v5

    goto :goto_3

    :cond_12
    const/4 v15, 0x1

    if-ne v8, v15, :cond_13

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v15, v4

    move-object v4, v2

    move-object v5, v14

    move-object v7, v15

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->n()I

    move-result v2

    goto/16 :goto_7

    :cond_13
    move-object v15, v4

    const/4 v4, 0x2

    if-ne v8, v4, :cond_15

    const/4 v4, 0x0

    aget-object v14, v12, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v14, v4, :cond_14

    if-ne v14, v3, :cond_18

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lo/f;->n()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v10

    float-to-int v3, v6

    invoke-virtual {v2}, Lo/f;->l()I

    move-result v5

    move v6, v3

    move v8, v5

    move-object v7, v15

    move-object v5, v4

    :goto_3
    move-object/from16 v3, p0

    move-object v4, v2

    :goto_4
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v3, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lo/f;->a:Z

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x1

    const/16 v16, 0x0

    aget-object v10, v13, v16

    iget-object v10, v10, Lo/d;->f:Lo/d;

    if-eqz v10, :cond_16

    aget-object v10, v13, v4

    iget-object v4, v10, Lo/d;->f:Lo/d;

    if-nez v4, :cond_18

    :cond_16
    move-object v5, v14

    move-object v7, v15

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_17
    move-object v15, v4

    :cond_18
    if-ne v15, v11, :cond_21

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v10, :cond_19

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_21

    :cond_19
    const/4 v4, 0x3

    if-ne v9, v4, :cond_1c

    if-ne v5, v10, :cond_1a

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v10

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_1a
    invoke-virtual {v2}, Lo/f;->n()I

    move-result v6

    iget v3, v2, Lo/f;->R:F

    iget v4, v2, Lo/f;->S:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    :cond_1b
    int-to-float v4, v6

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v4, v3

    float-to-int v8, v4

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    goto :goto_4

    :cond_1c
    const/4 v4, 0x1

    if-ne v9, v4, :cond_1d

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v7, v10

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto/16 :goto_6

    :cond_1d
    const/4 v4, 0x2

    if-ne v9, v4, :cond_1f

    const/4 v4, 0x1

    aget-object v10, v12, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v4, :cond_1e

    if-ne v10, v3, :cond_21

    :cond_1e
    invoke-virtual {v2}, Lo/f;->n()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lo/f;->l()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v7, v6

    float-to-int v6, v7

    move-object v7, v4

    move v8, v6

    move v6, v3

    goto/16 :goto_9

    :cond_1f
    move v3, v4

    aget-object v4, v13, v3

    iget-object v3, v4, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_20

    const/4 v3, 0x3

    aget-object v3, v13, v3

    iget-object v3, v3, Lo/d;->f:Lo/d;

    if-nez v3, :cond_21

    :cond_20
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v10

    move-object v7, v15

    goto/16 :goto_a

    :cond_21
    const/4 v3, 0x1

    if-ne v5, v11, :cond_0

    if-ne v15, v11, :cond_0

    if-eq v8, v3, :cond_25

    if-ne v9, v3, :cond_22

    goto :goto_5

    :cond_22
    const/4 v4, 0x2

    if-ne v9, v4, :cond_0

    if-ne v8, v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v12, v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_23

    if-ne v4, v5, :cond_0

    :cond_23
    aget-object v4, v12, v3

    if-eq v4, v5, :cond_24

    if-ne v4, v5, :cond_0

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lo/f;->n()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v6, v3

    float-to-int v4, v6

    invoke-virtual/range {p1 .. p1}, Lo/f;->l()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    add-float/2addr v7, v3

    float-to-int v3, v7

    move v8, v3

    move v6, v4

    move-object v7, v5

    goto :goto_9

    :cond_25
    :goto_5
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v2

    move-object v5, v7

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->n()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    :goto_6
    iget-object v3, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->l()I

    move-result v2

    :goto_7
    iput v2, v3, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    goto/16 :goto_0

    :cond_26
    :goto_8
    invoke-virtual {v2}, Lo/f;->n()I

    move-result v6

    if-ne v5, v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Lo/f;->n()I

    move-result v5

    iget v6, v14, Lo/d;->g:I

    sub-int/2addr v5, v6

    iget v6, v13, Lo/d;->g:I

    sub-int v6, v5, v6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_27
    invoke-virtual {v2}, Lo/f;->l()I

    move-result v7

    if-ne v4, v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Lo/f;->l()I

    move-result v3

    iget v4, v10, Lo/d;->g:I

    sub-int/2addr v3, v4

    iget v4, v15, Lo/d;->g:I

    sub-int v7, v3, v4

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_28
    move v8, v7

    move-object v7, v4

    :goto_9
    move-object/from16 v3, p0

    move-object v4, v2

    :goto_a
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    iget-object v3, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    iget-object v3, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v2}, Lo/f;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lo/f;->a:Z

    goto/16 :goto_0

    :cond_29
    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->d:Lo/g;

    iget-object v2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->f()V

    iget-object v2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->f()V

    iget-object v2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/f;

    instance-of v7, v4, Lo/k;

    if-eqz v7, :cond_1

    new-instance v5, Landroidx/constraintlayout/solver/widgets/analyzer/h;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/h;-><init>(Lo/f;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Lo/f;->t()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v4, Lo/f;->b:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    if-nez v7, :cond_2

    new-instance v7, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    invoke-direct {v7, v4, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/c;-><init>(Lo/f;I)V

    iput-object v7, v4, Lo/f;->b:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    iget-object v6, v4, Lo/f;->b:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v4, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v4}, Lo/f;->u()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v4, Lo/f;->c:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    if-nez v6, :cond_5

    new-instance v6, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    invoke-direct {v6, v4, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/c;-><init>(Lo/f;I)V

    iput-object v6, v4, Lo/f;->c:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    :cond_5
    if-nez v3, :cond_6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_6
    iget-object v5, v4, Lo/f;->c:Landroidx/constraintlayout/solver/widgets/analyzer/c;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v5, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v5, v4, Lo/m;

    if-eqz v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/analyzer/i;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/i;-><init>(Lo/f;)V

    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f()V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-ne v3, v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    iget-object v2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {p0, v2, v6, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e(Landroidx/constraintlayout/solver/widgets/analyzer/r;ILjava/util/ArrayList;)V

    iget-object v1, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {p0, v1, v5, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->e(Landroidx/constraintlayout/solver/widgets/analyzer/r;ILjava/util/ArrayList;)V

    iput-boolean v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->b:Z

    return-void
.end method

.method public final d(Lo/g;I)I
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    if-ge v4, v3, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/analyzer/l;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/analyzer/l;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    if-eqz v10, :cond_0

    move-object v10, v9

    check-cast v10, Landroidx/constraintlayout/solver/widgets/analyzer/c;

    iget v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    if-eq v10, v2, :cond_2

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-nez v10, :cond_2

    goto :goto_1

    :cond_1
    instance-of v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-nez v10, :cond_2

    :goto_1
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    move-wide v0, v5

    goto/16 :goto_7

    :cond_2
    if-nez v2, :cond_3

    iget-object v10, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_2
    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-nez v2, :cond_4

    iget-object v11, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_3

    :cond_4
    iget-object v11, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_3
    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v12, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j()J

    move-result-wide v13

    iget-object v15, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v10, :cond_a

    if-eqz v11, :cond_a

    invoke-static {v15, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/l;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;J)J

    move-result-wide v10

    move-object/from16 p0, v1

    invoke-static {v12, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/l;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;J)J

    move-result-wide v0

    sub-long/2addr v10, v13

    iget v5, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    neg-int v6, v5

    move/from16 v16, v3

    move/from16 v17, v4

    int-to-long v3, v6

    cmp-long v3, v10, v3

    if-ltz v3, :cond_5

    int-to-long v3, v5

    add-long/2addr v10, v3

    :cond_5
    neg-long v0, v0

    sub-long/2addr v0, v13

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_6

    sub-long/2addr v0, v3

    :cond_6
    iget-object v3, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-nez v2, :cond_7

    iget v3, v3, Lo/f;->Y:F

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget v3, v3, Lo/f;->Z:F

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v3, -0x40800000    # -1.0f

    :goto_4
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_9

    long-to-float v0, v0

    div-float/2addr v0, v3

    long-to-float v1, v10

    sub-float v4, v5, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    goto :goto_5

    :cond_9
    const-wide/16 v0, 0x0

    :goto_5
    long-to-float v0, v0

    mul-float v1, v0, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-long v9, v1

    sub-float/2addr v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    float-to-long v0, v5

    add-long/2addr v9, v13

    add-long/2addr v9, v0

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v0, v0

    add-long/2addr v0, v9

    iget v3, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    goto :goto_7

    :cond_a
    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    if-eqz v10, :cond_b

    iget v0, v15, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v0, v0

    invoke-static {v15, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/l;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;J)J

    move-result-wide v0

    iget v3, v15, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v3, v3

    add-long/2addr v3, v13

    goto :goto_6

    :cond_b
    if-eqz v11, :cond_c

    iget v0, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v0, v0

    invoke-static {v12, v0, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/l;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;J)J

    move-result-wide v0

    iget v3, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v13

    neg-long v0, v0

    :goto_6
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_7

    :cond_c
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v0, v0

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j()J

    move-result-wide v3

    add-long/2addr v3, v0

    iget v0, v12, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    int-to-long v0, v0

    sub-long v0, v3, v0

    :goto_7
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v3, v16

    const-wide/16 v5, 0x0

    goto/16 :goto_0

    :cond_d
    long-to-int v0, v7

    return v0
.end method

.method public final e(Landroidx/constraintlayout/solver/widgets/analyzer/r;ILjava/util/ArrayList;)V
    .locals 8

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_1
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v2, :cond_4

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    :goto_4
    move-object v3, v1

    goto :goto_5

    :cond_4
    instance-of v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    goto :goto_4

    :goto_5
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a(Landroidx/constraintlayout/solver/widgets/analyzer/f;IILjava/util/ArrayList;Landroidx/constraintlayout/solver/widgets/analyzer/l;)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->g:Landroidx/constraintlayout/solver/widgets/analyzer/b;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->a:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->b:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->c:I

    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->d:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f:Landroidx/constraintlayout/solver/widgets/analyzer/o;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/o;->b(Lo/f;Landroidx/constraintlayout/solver/widgets/analyzer/b;)V

    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->e:I

    invoke-virtual {p1, p0}, Lo/f;->G(I)V

    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->f:I

    invoke-virtual {p1, p0}, Lo/f;->D(I)V

    iget-boolean p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->h:Z

    iput-boolean p0, p1, Lo/f;->y:Z

    iget p0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b;->g:I

    iput p0, p1, Lo/f;->V:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, p1, Lo/f;->y:Z

    return-void
.end method

.method public final g()V
    .locals 12

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/e;->a:Lo/g;

    iget-object v0, v0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/f;

    iget-boolean v2, v1, Lo/f;->a:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    const/4 v9, 0x1

    aget-object v10, v2, v9

    iget v2, v1, Lo/f;->l:I

    iget v4, v1, Lo/f;->m:I

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v6, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_2

    if-ne v2, v9, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    if-eq v10, v6, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v5, :cond_5

    if-ne v4, v9, :cond_5

    :cond_4
    move v3, v9

    :cond_5
    iget-object v4, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v7, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v11, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_6

    if-eqz v11, :cond_6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v8, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v5

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_7

    iget-object v2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->l()I

    move-result v3

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->l()I

    move-result v3

    goto :goto_4

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v2, :cond_a

    iget v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget v7, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object v2, p0

    move-object v3, v1

    move-object v4, v6

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/analyzer/e;->f(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v2, :cond_9

    iget-object v2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->n()I

    move-result v3

    :goto_3
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    goto :goto_6

    :cond_9
    iget-object v2, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v1}, Lo/f;->n()I

    move-result v3

    :goto_4
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :goto_5
    iput-boolean v9, v1, Lo/f;->a:Z

    :cond_a
    :goto_6
    iget-boolean v2, v1, Lo/f;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    if-eqz v2, :cond_0

    iget v1, v1, Lo/f;->V:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
