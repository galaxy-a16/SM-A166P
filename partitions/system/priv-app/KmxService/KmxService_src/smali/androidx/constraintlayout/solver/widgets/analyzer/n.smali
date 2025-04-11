.class public final Landroidx/constraintlayout/solver/widgets/analyzer/n;
.super Landroidx/constraintlayout/solver/widgets/analyzer/r;
.source "SourceFile"


# instance fields
.field public final k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

.field public l:Landroidx/constraintlayout/solver/widgets/analyzer/a;


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;-><init>(Lo/f;)V

    new-instance p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V
    .locals 9

    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/m;->a:[I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v5, v2, Lo/f;->m:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    if-eq v5, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_4

    iget v5, v2, Lo/f;->S:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_2

    move v1, v4

    goto :goto_2

    :cond_1
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v1, v1

    iget v2, v2, Lo/f;->R:F

    goto :goto_0

    :cond_2
    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v1, v1

    iget v2, v2, Lo/f;->R:F

    div-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, v2, Lo/f;->O:Lo/f;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_4

    iget v2, v2, Lo/f;->t:F

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v1, v1

    :goto_0
    mul-float/2addr v1, v2

    :goto_1
    add-float/2addr v1, v3

    float-to-int v1, v1

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_4
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v5, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-boolean v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_6

    return-void

    :cond_6
    iget-boolean v5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v8, v5, Lo/f;->l:I

    if-nez v8, :cond_7

    invoke-virtual {v5}, Lo/f;->u()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr p0, v3

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v0, v3

    sub-int v3, v0, p0

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    return-void

    :cond_7
    iget-boolean v5, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_9

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    if-ne v5, v0, :cond_9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v8, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v0, v8

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v0

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    if-ge v5, v0, :cond_8

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_9
    :goto_4
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v6, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v6, v5

    iget v7, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v8, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    add-int/2addr v8, v7

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget p0, p0, Lo/f;->Z:F

    if-ne v0, v4, :cond_b

    move p0, v3

    goto :goto_5

    :cond_b
    move v5, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v5

    iget v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    sub-int/2addr v7, v0

    int-to-float v0, v5

    add-float/2addr v0, v3

    int-to-float v3, v7

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    float-to-int p0, v3

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v1, p1, Lo/f;->D:Lo/d;

    iget-object p1, p1, Lo/f;->F:Lo/d;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->l(Lo/d;Lo/d;I)V

    return-void
.end method

.method public final d()V
    .locals 15

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v1, v0, Lo/f;->a:Z

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/f;->l()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v4, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v5, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v4

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-boolean v0, v0, Lo/f;->y:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/a;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v5, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v5, v5, Lo/f;->O:Lo/f;

    if-eqz v5, :cond_2

    iget-object v6, v5, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v4

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lo/f;->l()I

    move-result v0

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->D:Lo/d;

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->F:Lo/d;

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, v5, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v6, Lo/f;->D:Lo/d;

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    invoke-static {v3, v4, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object v3, v5, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->F:Lo/d;

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    return-void

    :cond_2
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    invoke-virtual {v0}, Lo/f;->l()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v5, v0, Lo/f;->O:Lo/f;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v4

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4

    iget-object v2, v5, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Lo/f;->D:Lo/d;

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    invoke-static {v3, v2, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object v0, v5, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->F:Lo/d;

    invoke-virtual {p0}, Lo/d;->e()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v0, :cond_d

    iget-object v10, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v11, v10, Lo/f;->a:Z

    if-eqz v11, :cond_d

    iget-object v0, v10, Lo/f;->K:[Lo/d;

    aget-object v11, v0, v8

    iget-object v12, v11, Lo/d;->f:Lo/d;

    if-eqz v12, :cond_8

    aget-object v13, v0, v9

    iget-object v13, v13, Lo/d;->f:Lo/d;

    if-eqz v13, :cond_8

    invoke-virtual {v10}, Lo/f;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    neg-int v0, v0

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v8

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v2, v2, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    invoke-static {v3, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v2, v2, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :cond_7
    iput-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    iput-boolean v4, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    :goto_1
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, p0, Lo/f;->y:Z

    if-eqz v0, :cond_1c

    goto/16 :goto_2

    :cond_8
    if-eqz v12, :cond_9

    invoke-static {v11}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->K:[Lo/d;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    invoke-static {v3, v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-static {v1, v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, p0, Lo/f;->y:Z

    if-eqz v0, :cond_1c

    goto/16 :goto_2

    :cond_9
    aget-object v4, v0, v9

    iget-object v8, v4, Lo/d;->f:Lo/d;

    if-eqz v8, :cond_b

    invoke-static {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v4, Lo/f;->K:[Lo/d;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lo/d;->e()I

    move-result v4

    neg-int v4, v4

    invoke-static {v1, v0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    neg-int v0, v0

    invoke-static {v3, v1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    :cond_a
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, p0, Lo/f;->y:Z

    if-eqz v0, :cond_1c

    goto :goto_2

    :cond_b
    aget-object v0, v0, v7

    iget-object v4, v0, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_c

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v5, v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget p0, p0, Lo/f;->V:I

    neg-int p0, p0

    invoke-static {v3, v5, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-static {v1, v3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto/16 :goto_9

    :cond_c
    instance-of v0, v10, Lo/l;

    if-nez v0, :cond_1c

    iget-object v0, v10, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_1c

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v10, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v4, v0, Lo/f;->O:Lo/f;

    iget-object v4, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0}, Lo/f;->p()I

    move-result v0

    invoke-static {v3, v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-static {v1, v3, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, p0, Lo/f;->y:Z

    if-eqz v0, :cond_1c

    :goto_2
    iget p0, p0, Lo/f;->V:I

    invoke-static {v5, v3, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    goto/16 :goto_9

    :cond_d
    iget-object v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v11, :cond_12

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v11, v0, Lo/f;->m:I

    if-eq v11, v8, :cond_10

    if-eq v11, v9, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Lo/f;->u()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v11, v0, Lo/f;->l:I

    if-ne v11, v9, :cond_f

    goto :goto_4

    :cond_f
    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_3

    :cond_10
    iget-object v0, v0, Lo/f;->O:Lo/f;

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_3
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    :cond_13
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v11, v0, Lo/f;->K:[Lo/d;

    aget-object v12, v11, v8

    iget-object v13, v12, Lo/d;->f:Lo/d;

    if-eqz v13, :cond_15

    aget-object v14, v11, v9

    iget-object v14, v14, Lo/d;->f:Lo/d;

    if-eqz v14, :cond_15

    invoke-virtual {v0}, Lo/f;->u()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    iput v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    neg-int v0, v0

    iput v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_5

    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->K:[Lo/d;

    aget-object v0, v0, v8

    invoke-static {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v1, v1, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v9

    invoke-static {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v1

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, v0, Lo/f;->y:Z

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_15
    const/4 v14, 0x0

    if-eqz v13, :cond_17

    invoke-static {v12}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v6, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v8

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    invoke-static {v3, v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    invoke-virtual {p0, v1, v3, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, v0, Lo/f;->y:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    invoke-virtual {p0, v5, v3, v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v3, v0, Lo/f;->R:F

    cmpl-float v3, v3, v14

    if-lez v3, :cond_1b

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v1, :cond_1b

    goto/16 :goto_7

    :cond_17
    aget-object v8, v11, v9

    iget-object v12, v8, Lo/d;->f:Lo/d;

    const/4 v13, -0x1

    if-eqz v12, :cond_18

    invoke-static {v8}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v6, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    neg-int v6, v6

    invoke-static {v1, v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    invoke-virtual {p0, v3, v1, v13, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, v0, Lo/f;->y:Z

    if-eqz v0, :cond_1b

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    invoke-virtual {p0, v5, v3, v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    goto :goto_8

    :cond_18
    aget-object v7, v11, v7

    iget-object v8, v7, Lo/d;->f:Lo/d;

    if-eqz v8, :cond_19

    invoke-static {v7}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {v5, v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    invoke-virtual {p0, v3, v5, v13, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    invoke-virtual {p0, v1, v3, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    goto :goto_8

    :cond_19
    instance-of v6, v0, Lo/l;

    if-nez v6, :cond_1b

    iget-object v6, v0, Lo/f;->O:Lo/f;

    if-eqz v6, :cond_1b

    iget-object v6, v6, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v0}, Lo/f;->p()I

    move-result v0

    invoke-static {v3, v6, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V

    invoke-virtual {p0, v1, v3, v4, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-boolean v0, v0, Lo/f;->y:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->l:Landroidx/constraintlayout/solver/widgets/analyzer/a;

    invoke-virtual {p0, v5, v3, v4, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V

    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v3, v0, Lo/f;->R:F

    cmpl-float v3, v3, v14

    if-lez v3, :cond_1b

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v1, :cond_1b

    :goto_7
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->a:Landroidx/constraintlayout/solver/widgets/analyzer/r;

    :cond_1b
    :goto_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_1c

    iput-boolean v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    :cond_1c
    :goto_9
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iput v0, p0, Lo/f;->U:I

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

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

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

    iget p0, p0, Lo/f;->m:I

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object p0, p0, Lo/f;->c0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
