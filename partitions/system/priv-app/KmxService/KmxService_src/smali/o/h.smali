.class public final Lo/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lo/f;

.field public c:I

.field public d:Lo/d;

.field public e:Lo/d;

.field public f:Lo/d;

.field public g:Lo/d;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final synthetic r:Lo/i;


# direct methods
.method public constructor <init>(Lo/i;ILo/d;Lo/d;Lo/d;Lo/d;I)V
    .locals 1

    iput-object p1, p0, Lo/h;->r:Lo/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/h;->b:Lo/f;

    const/4 v0, 0x0

    iput v0, p0, Lo/h;->c:I

    iput v0, p0, Lo/h;->h:I

    iput v0, p0, Lo/h;->i:I

    iput v0, p0, Lo/h;->j:I

    iput v0, p0, Lo/h;->k:I

    iput v0, p0, Lo/h;->l:I

    iput v0, p0, Lo/h;->m:I

    iput v0, p0, Lo/h;->n:I

    iput v0, p0, Lo/h;->o:I

    iput v0, p0, Lo/h;->p:I

    iput v0, p0, Lo/h;->q:I

    iput p2, p0, Lo/h;->a:I

    iput-object p3, p0, Lo/h;->d:Lo/d;

    iput-object p4, p0, Lo/h;->e:Lo/d;

    iput-object p5, p0, Lo/h;->f:Lo/d;

    iput-object p6, p0, Lo/h;->g:Lo/d;

    iget p2, p1, Lo/i;->q0:I

    iput p2, p0, Lo/h;->h:I

    iget p2, p1, Lo/i;->m0:I

    iput p2, p0, Lo/h;->i:I

    iget p2, p1, Lo/i;->r0:I

    iput p2, p0, Lo/h;->j:I

    iget p1, p1, Lo/i;->n0:I

    iput p1, p0, Lo/h;->k:I

    iput p7, p0, Lo/h;->q:I

    return-void
.end method


# virtual methods
.method public final a(Lo/f;)V
    .locals 8

    iget v0, p0, Lo/h;->a:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lo/h;->r:Lo/i;

    if-nez v0, :cond_3

    iget v0, p0, Lo/h;->q:I

    invoke-virtual {v4, p1, v0}, Lo/i;->L(Lo/f;I)I

    move-result v0

    iget-object v5, p1, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_0

    iget v0, p0, Lo/h;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/h;->p:I

    move v0, v3

    :cond_0
    iget v5, v4, Lo/i;->J0:I

    iget v6, p1, Lo/f;->b0:I

    if-ne v6, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iget v1, p0, Lo/h;->l:I

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    iput v0, p0, Lo/h;->l:I

    iget v0, p0, Lo/h;->q:I

    invoke-virtual {v4, p1, v0}, Lo/i;->K(Lo/f;I)I

    move-result v0

    iget-object v1, p0, Lo/h;->b:Lo/f;

    if-eqz v1, :cond_2

    iget v1, p0, Lo/h;->c:I

    if-ge v1, v0, :cond_7

    :cond_2
    iput-object p1, p0, Lo/h;->b:Lo/f;

    iput v0, p0, Lo/h;->c:I

    iput v0, p0, Lo/h;->m:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lo/h;->q:I

    invoke-virtual {v4, p1, v0}, Lo/i;->L(Lo/f;I)I

    move-result v0

    iget v5, p0, Lo/h;->q:I

    invoke-virtual {v4, p1, v5}, Lo/i;->K(Lo/f;I)I

    move-result v5

    iget-object v6, p1, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v2

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4

    iget v5, p0, Lo/h;->p:I

    add-int/2addr v5, v2

    iput v5, p0, Lo/h;->p:I

    move v5, v3

    :cond_4
    iget v4, v4, Lo/i;->K0:I

    iget v6, p1, Lo/f;->b0:I

    if-ne v6, v1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    iget v1, p0, Lo/h;->m:I

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    iput v5, p0, Lo/h;->m:I

    iget-object v1, p0, Lo/h;->b:Lo/f;

    if-eqz v1, :cond_6

    iget v1, p0, Lo/h;->c:I

    if-ge v1, v0, :cond_7

    :cond_6
    iput-object p1, p0, Lo/h;->b:Lo/f;

    iput v0, p0, Lo/h;->c:I

    iput v0, p0, Lo/h;->l:I

    :cond_7
    :goto_2
    iget p1, p0, Lo/h;->o:I

    add-int/2addr p1, v2

    iput p1, p0, Lo/h;->o:I

    return-void
.end method

.method public final b(IZZ)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lo/h;->o:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lo/h;->r:Lo/i;

    if-ge v3, v1, :cond_2

    iget v5, v0, Lo/h;->n:I

    add-int/2addr v5, v3

    iget v6, v4, Lo/i;->V0:I

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lo/i;->U0:[Lo/f;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lo/f;->z()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_37

    iget-object v3, v0, Lo/h;->b:Lo/f;

    if-nez v3, :cond_3

    goto/16 :goto_1a

    :cond_3
    if-eqz p3, :cond_4

    if-nez p1, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    const/4 v6, -0x1

    move v7, v2

    move v8, v6

    move v9, v8

    :goto_3
    if-ge v7, v1, :cond_9

    if-eqz p2, :cond_5

    add-int/lit8 v10, v1, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    :goto_4
    iget v11, v0, Lo/h;->n:I

    add-int/2addr v11, v10

    iget v10, v4, Lo/i;->V0:I

    if-lt v11, v10, :cond_6

    goto :goto_5

    :cond_6
    iget-object v10, v4, Lo/i;->U0:[Lo/f;

    aget-object v10, v10, v11

    iget v10, v10, Lo/f;->b0:I

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    iget v7, v0, Lo/h;->a:I

    if-nez v7, :cond_20

    iget-object v7, v0, Lo/h;->b:Lo/f;

    iget v11, v4, Lo/i;->y0:I

    iput v11, v7, Lo/f;->e0:I

    iget v11, v0, Lo/h;->i:I

    if-lez p1, :cond_a

    iget v12, v4, Lo/i;->K0:I

    add-int/2addr v11, v12

    :cond_a
    iget-object v12, v0, Lo/h;->e:Lo/d;

    iget-object v13, v7, Lo/f;->D:Lo/d;

    invoke-virtual {v13, v12, v11}, Lo/d;->a(Lo/d;I)V

    iget-object v11, v7, Lo/f;->F:Lo/d;

    if-eqz p3, :cond_b

    iget-object v12, v0, Lo/h;->g:Lo/d;

    iget v14, v0, Lo/h;->k:I

    invoke-virtual {v11, v12, v14}, Lo/d;->a(Lo/d;I)V

    :cond_b
    if-lez p1, :cond_c

    iget-object v12, v0, Lo/h;->e:Lo/d;

    iget-object v12, v12, Lo/d;->d:Lo/f;

    iget-object v12, v12, Lo/f;->F:Lo/d;

    invoke-virtual {v12, v13, v2}, Lo/d;->a(Lo/d;I)V

    :cond_c
    iget v12, v4, Lo/i;->M0:I

    const/4 v14, 0x3

    if-ne v12, v14, :cond_10

    iget-boolean v12, v7, Lo/f;->y:Z

    if-nez v12, :cond_10

    move v12, v2

    :goto_6
    if-ge v12, v1, :cond_10

    if-eqz p2, :cond_d

    add-int/lit8 v15, v1, -0x1

    sub-int/2addr v15, v12

    goto :goto_7

    :cond_d
    move v15, v12

    :goto_7
    iget v10, v0, Lo/h;->n:I

    add-int/2addr v10, v15

    iget v15, v4, Lo/i;->V0:I

    if-lt v10, v15, :cond_e

    goto :goto_8

    :cond_e
    iget-object v15, v4, Lo/i;->U0:[Lo/f;

    aget-object v10, v15, v10

    iget-boolean v15, v10, Lo/f;->y:Z

    if-eqz v15, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v10, v7

    :goto_9
    move v15, v2

    const/4 v12, 0x0

    :goto_a
    if-ge v15, v1, :cond_37

    if-eqz p2, :cond_11

    add-int/lit8 v16, v1, -0x1

    sub-int v16, v16, v15

    goto :goto_b

    :cond_11
    move/from16 v16, v15

    :goto_b
    iget v14, v0, Lo/h;->n:I

    add-int v14, v14, v16

    iget v3, v4, Lo/i;->V0:I

    if-lt v14, v3, :cond_12

    goto/16 :goto_1a

    :cond_12
    iget-object v3, v4, Lo/i;->U0:[Lo/f;

    aget-object v3, v3, v14

    if-nez v15, :cond_13

    iget-object v14, v3, Lo/f;->C:Lo/d;

    iget-object v2, v0, Lo/h;->d:Lo/d;

    iget v6, v0, Lo/h;->h:I

    invoke-virtual {v3, v14, v2, v6}, Lo/f;->g(Lo/d;Lo/d;I)V

    :cond_13
    if-nez v16, :cond_17

    iget v2, v4, Lo/i;->x0:I

    iget v6, v4, Lo/i;->D0:F

    iget v14, v0, Lo/h;->n:I

    if-nez v14, :cond_14

    iget v14, v4, Lo/i;->z0:I

    move/from16 v16, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_15

    iget v6, v4, Lo/i;->F0:F

    :goto_c
    move v2, v14

    goto :goto_d

    :cond_14
    move/from16 v16, v2

    const/4 v2, -0x1

    :cond_15
    if-eqz p3, :cond_16

    iget v14, v4, Lo/i;->B0:I

    if-eq v14, v2, :cond_16

    iget v2, v4, Lo/i;->H0:F

    move v6, v2

    goto :goto_c

    :cond_16
    move/from16 v2, v16

    :goto_d
    iput v2, v3, Lo/f;->d0:I

    iput v6, v3, Lo/f;->Y:F

    :cond_17
    add-int/lit8 v2, v1, -0x1

    if-ne v15, v2, :cond_18

    iget-object v2, v3, Lo/f;->E:Lo/d;

    iget-object v6, v0, Lo/h;->f:Lo/d;

    iget v14, v0, Lo/h;->j:I

    invoke-virtual {v3, v2, v6, v14}, Lo/f;->g(Lo/d;Lo/d;I)V

    :cond_18
    if-eqz v12, :cond_1a

    iget-object v2, v3, Lo/f;->C:Lo/d;

    iget v6, v4, Lo/i;->J0:I

    iget-object v12, v12, Lo/f;->E:Lo/d;

    invoke-virtual {v2, v12, v6}, Lo/d;->a(Lo/d;I)V

    iget-object v2, v3, Lo/f;->C:Lo/d;

    if-ne v15, v8, :cond_19

    iget v6, v0, Lo/h;->h:I

    invoke-virtual {v2}, Lo/d;->h()Z

    move-result v14

    if-eqz v14, :cond_19

    iput v6, v2, Lo/d;->h:I

    :cond_19
    const/4 v6, 0x0

    invoke-virtual {v12, v2, v6}, Lo/d;->a(Lo/d;I)V

    const/4 v2, 0x1

    add-int/lit8 v6, v9, 0x1

    if-ne v15, v6, :cond_1a

    iget v2, v0, Lo/h;->j:I

    invoke-virtual {v12}, Lo/d;->h()Z

    move-result v6

    if-eqz v6, :cond_1a

    iput v2, v12, Lo/d;->h:I

    :cond_1a
    if-eq v3, v7, :cond_1f

    iget v2, v4, Lo/i;->M0:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1b

    iget-boolean v12, v10, Lo/f;->y:Z

    if-eqz v12, :cond_1b

    if-eq v3, v10, :cond_1b

    iget-boolean v12, v3, Lo/f;->y:Z

    if-eqz v12, :cond_1b

    iget-object v2, v3, Lo/f;->G:Lo/d;

    iget-object v12, v10, Lo/f;->G:Lo/d;

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Lo/d;->a(Lo/d;I)V

    goto :goto_f

    :cond_1b
    if-eqz v2, :cond_1e

    const/4 v12, 0x1

    if-eq v2, v12, :cond_1d

    iget-object v2, v3, Lo/f;->D:Lo/d;

    iget-object v12, v3, Lo/f;->F:Lo/d;

    if-eqz v5, :cond_1c

    iget-object v14, v0, Lo/h;->e:Lo/d;

    iget v6, v0, Lo/h;->i:I

    invoke-virtual {v2, v14, v6}, Lo/d;->a(Lo/d;I)V

    iget-object v2, v0, Lo/h;->g:Lo/d;

    iget v6, v0, Lo/h;->k:I

    invoke-virtual {v12, v2, v6}, Lo/d;->a(Lo/d;I)V

    goto :goto_f

    :cond_1c
    const/4 v6, 0x0

    invoke-virtual {v2, v13, v6}, Lo/d;->a(Lo/d;I)V

    goto :goto_e

    :cond_1d
    const/4 v6, 0x0

    iget-object v12, v3, Lo/f;->F:Lo/d;

    :goto_e
    invoke-virtual {v12, v11, v6}, Lo/d;->a(Lo/d;I)V

    goto :goto_f

    :cond_1e
    const/4 v6, 0x0

    iget-object v2, v3, Lo/f;->D:Lo/d;

    invoke-virtual {v2, v13, v6}, Lo/d;->a(Lo/d;I)V

    :cond_1f
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object v12, v3

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v14, 0x3

    goto/16 :goto_a

    :cond_20
    iget-object v2, v0, Lo/h;->b:Lo/f;

    iget v3, v4, Lo/i;->x0:I

    iput v3, v2, Lo/f;->d0:I

    iget v3, v0, Lo/h;->h:I

    if-lez p1, :cond_21

    iget v6, v4, Lo/i;->J0:I

    add-int/2addr v3, v6

    :cond_21
    iget-object v6, v2, Lo/f;->E:Lo/d;

    iget-object v7, v2, Lo/f;->C:Lo/d;

    if-eqz p2, :cond_23

    iget-object v10, v0, Lo/h;->f:Lo/d;

    invoke-virtual {v6, v10, v3}, Lo/d;->a(Lo/d;I)V

    if-eqz p3, :cond_22

    iget-object v3, v0, Lo/h;->d:Lo/d;

    iget v10, v0, Lo/h;->j:I

    invoke-virtual {v7, v3, v10}, Lo/d;->a(Lo/d;I)V

    :cond_22
    if-lez p1, :cond_25

    iget-object v3, v0, Lo/h;->f:Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    iget-object v3, v3, Lo/f;->C:Lo/d;

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v10}, Lo/d;->a(Lo/d;I)V

    goto :goto_10

    :cond_23
    iget-object v10, v0, Lo/h;->d:Lo/d;

    invoke-virtual {v7, v10, v3}, Lo/d;->a(Lo/d;I)V

    if-eqz p3, :cond_24

    iget-object v3, v0, Lo/h;->f:Lo/d;

    iget v10, v0, Lo/h;->j:I

    invoke-virtual {v6, v3, v10}, Lo/d;->a(Lo/d;I)V

    :cond_24
    if-lez p1, :cond_25

    iget-object v3, v0, Lo/h;->d:Lo/d;

    iget-object v3, v3, Lo/d;->d:Lo/f;

    iget-object v3, v3, Lo/f;->E:Lo/d;

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v10}, Lo/d;->a(Lo/d;I)V

    :cond_25
    :goto_10
    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_11
    if-ge v3, v1, :cond_37

    iget v11, v0, Lo/h;->n:I

    add-int/2addr v11, v3

    iget v12, v4, Lo/i;->V0:I

    if-lt v11, v12, :cond_26

    goto/16 :goto_1a

    :cond_26
    iget-object v12, v4, Lo/i;->U0:[Lo/f;

    aget-object v11, v12, v11

    if-nez v3, :cond_2a

    iget-object v12, v11, Lo/f;->D:Lo/d;

    iget-object v13, v0, Lo/h;->e:Lo/d;

    iget v14, v0, Lo/h;->i:I

    invoke-virtual {v11, v12, v13, v14}, Lo/f;->g(Lo/d;Lo/d;I)V

    iget v12, v4, Lo/i;->y0:I

    iget v13, v4, Lo/i;->E0:F

    iget v14, v0, Lo/h;->n:I

    if-nez v14, :cond_27

    iget v14, v4, Lo/i;->A0:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_28

    iget v13, v4, Lo/i;->G0:F

    goto :goto_12

    :cond_27
    const/4 v15, -0x1

    :cond_28
    if-eqz p3, :cond_29

    iget v14, v4, Lo/i;->C0:I

    if-eq v14, v15, :cond_29

    iget v13, v4, Lo/i;->I0:F

    :goto_12
    move v12, v14

    :cond_29
    iput v12, v11, Lo/f;->e0:I

    iput v13, v11, Lo/f;->Z:F

    goto :goto_13

    :cond_2a
    const/4 v15, -0x1

    :goto_13
    add-int/lit8 v12, v1, -0x1

    if-ne v3, v12, :cond_2b

    iget-object v12, v11, Lo/f;->F:Lo/d;

    iget-object v13, v0, Lo/h;->g:Lo/d;

    iget v14, v0, Lo/h;->k:I

    invoke-virtual {v11, v12, v13, v14}, Lo/f;->g(Lo/d;Lo/d;I)V

    :cond_2b
    if-eqz v10, :cond_2d

    iget-object v12, v11, Lo/f;->D:Lo/d;

    iget v13, v4, Lo/i;->K0:I

    iget-object v10, v10, Lo/f;->F:Lo/d;

    invoke-virtual {v12, v10, v13}, Lo/d;->a(Lo/d;I)V

    iget-object v12, v11, Lo/f;->D:Lo/d;

    if-ne v3, v8, :cond_2c

    iget v13, v0, Lo/h;->i:I

    invoke-virtual {v12}, Lo/d;->h()Z

    move-result v14

    if-eqz v14, :cond_2c

    iput v13, v12, Lo/d;->h:I

    :cond_2c
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lo/d;->a(Lo/d;I)V

    const/4 v12, 0x1

    add-int/lit8 v13, v9, 0x1

    if-ne v3, v13, :cond_2d

    iget v12, v0, Lo/h;->k:I

    invoke-virtual {v10}, Lo/d;->h()Z

    move-result v13

    if-eqz v13, :cond_2d

    iput v12, v10, Lo/d;->h:I

    :cond_2d
    if-eq v11, v2, :cond_36

    const/4 v10, 0x2

    if-eqz p2, :cond_31

    iget v12, v4, Lo/i;->L0:I

    if-eqz v12, :cond_30

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2f

    if-eq v12, v10, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object v10, v11, Lo/f;->C:Lo/d;

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_14

    :cond_2f
    const/4 v12, 0x0

    iget-object v10, v11, Lo/f;->C:Lo/d;

    invoke-virtual {v10, v7, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_18

    :cond_30
    const/4 v12, 0x0

    :goto_14
    iget-object v10, v11, Lo/f;->E:Lo/d;

    invoke-virtual {v10, v6, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_18

    :cond_31
    iget v12, v4, Lo/i;->L0:I

    if-eqz v12, :cond_35

    const/4 v13, 0x1

    if-eq v12, v13, :cond_34

    if-eq v12, v10, :cond_32

    goto :goto_15

    :cond_32
    iget-object v10, v11, Lo/f;->C:Lo/d;

    if-eqz v5, :cond_33

    iget-object v12, v0, Lo/h;->d:Lo/d;

    iget v14, v0, Lo/h;->h:I

    invoke-virtual {v10, v12, v14}, Lo/d;->a(Lo/d;I)V

    iget-object v10, v0, Lo/h;->f:Lo/d;

    iget v12, v0, Lo/h;->j:I

    iget-object v14, v11, Lo/f;->E:Lo/d;

    invoke-virtual {v14, v10, v12}, Lo/d;->a(Lo/d;I)V

    :goto_15
    const/4 v12, 0x0

    goto :goto_19

    :cond_33
    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_16

    :cond_34
    const/4 v12, 0x0

    :goto_16
    iget-object v10, v11, Lo/f;->E:Lo/d;

    invoke-virtual {v10, v6, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_19

    :cond_35
    const/4 v12, 0x0

    const/4 v13, 0x1

    iget-object v10, v11, Lo/f;->C:Lo/d;

    invoke-virtual {v10, v7, v12}, Lo/d;->a(Lo/d;I)V

    goto :goto_19

    :cond_36
    :goto_17
    const/4 v12, 0x0

    :goto_18
    const/4 v13, 0x1

    :goto_19
    add-int/lit8 v3, v3, 0x1

    move-object v10, v11

    goto/16 :goto_11

    :cond_37
    :goto_1a
    return-void
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lo/h;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/h;->m:I

    iget-object p0, p0, Lo/h;->r:Lo/i;

    iget p0, p0, Lo/i;->K0:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/h;->m:I

    return p0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lo/h;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lo/h;->l:I

    iget-object p0, p0, Lo/h;->r:Lo/i;

    iget p0, p0, Lo/i;->J0:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/h;->l:I

    return p0
.end method

.method public final e(ILo/d;Lo/d;Lo/d;Lo/d;IIIII)V
    .locals 0

    iput p1, p0, Lo/h;->a:I

    iput-object p2, p0, Lo/h;->d:Lo/d;

    iput-object p3, p0, Lo/h;->e:Lo/d;

    iput-object p4, p0, Lo/h;->f:Lo/d;

    iput-object p5, p0, Lo/h;->g:Lo/d;

    iput p6, p0, Lo/h;->h:I

    iput p7, p0, Lo/h;->i:I

    iput p8, p0, Lo/h;->j:I

    iput p9, p0, Lo/h;->k:I

    iput p10, p0, Lo/h;->q:I

    return-void
.end method
