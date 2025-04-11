.class public Lo/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public final C:Lo/d;

.field public final D:Lo/d;

.field public final E:Lo/d;

.field public final F:Lo/d;

.field public final G:Lo/d;

.field public final H:Lo/d;

.field public final I:Lo/d;

.field public final J:Lo/d;

.field public final K:[Lo/d;

.field public final L:Ljava/util/ArrayList;

.field public final M:[Z

.field public final N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public O:Lo/f;

.field public P:I

.field public Q:I

.field public R:F

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:F

.field public Z:F

.field public a:Z

.field public a0:Ljava/lang/Object;

.field public b:Landroidx/constraintlayout/solver/widgets/analyzer/c;

.field public b0:I

.field public c:Landroidx/constraintlayout/solver/widgets/analyzer/c;

.field public c0:Ljava/lang/String;

.field public d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

.field public d0:I

.field public e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

.field public e0:I

.field public final f:[Z

.field public final f0:[F

.field public g:Z

.field public final g0:[Lo/f;

.field public h:Z

.field public final h0:[Lo/f;

.field public i:Z

.field public i0:I

.field public j:I

.field public j0:I

.field public k:I

.field public l:I

.field public m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:F

.field public u:I

.field public v:F

.field public final w:[I

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/f;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iput-object v2, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Lo/f;->f:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lo/f;->g:Z

    iput-boolean v1, v0, Lo/f;->h:Z

    iput-boolean v1, v0, Lo/f;->i:Z

    const/4 v5, -0x1

    iput v5, v0, Lo/f;->j:I

    iput v5, v0, Lo/f;->k:I

    iput v1, v0, Lo/f;->l:I

    iput v1, v0, Lo/f;->m:I

    new-array v6, v3, [I

    iput-object v6, v0, Lo/f;->n:[I

    iput v1, v0, Lo/f;->o:I

    iput v1, v0, Lo/f;->p:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lo/f;->q:F

    iput v1, v0, Lo/f;->r:I

    iput v1, v0, Lo/f;->s:I

    iput v6, v0, Lo/f;->t:F

    iput v5, v0, Lo/f;->u:I

    iput v6, v0, Lo/f;->v:F

    new-array v6, v3, [I

    fill-array-data v6, :array_1

    iput-object v6, v0, Lo/f;->w:[I

    const/4 v6, 0x0

    iput v6, v0, Lo/f;->x:F

    iput-boolean v1, v0, Lo/f;->y:Z

    iput-boolean v1, v0, Lo/f;->z:Z

    iput v1, v0, Lo/f;->A:I

    iput v1, v0, Lo/f;->B:I

    new-instance v7, Lo/d;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v7, v0, v8}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v7, v0, Lo/f;->C:Lo/d;

    new-instance v8, Lo/d;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v8, v0, v9}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v8, v0, Lo/f;->D:Lo/d;

    new-instance v9, Lo/d;

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v9, v0, v10}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v9, v0, Lo/f;->E:Lo/d;

    new-instance v10, Lo/d;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, v0, v11}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v10, v0, Lo/f;->F:Lo/d;

    new-instance v11, Lo/d;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, v0, v12}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v11, v0, Lo/f;->G:Lo/d;

    new-instance v12, Lo/d;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v12, v0, v13}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v12, v0, Lo/f;->H:Lo/d;

    new-instance v13, Lo/d;

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v13, v0, v14}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v13, v0, Lo/f;->I:Lo/d;

    new-instance v14, Lo/d;

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v14, v0, v15}, Lo/d;-><init>(Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v14, v0, Lo/f;->J:Lo/d;

    const/4 v15, 0x6

    new-array v15, v15, [Lo/d;

    aput-object v7, v15, v1

    aput-object v9, v15, v4

    aput-object v8, v15, v3

    const/16 v16, 0x3

    aput-object v10, v15, v16

    const/16 v16, 0x4

    aput-object v11, v15, v16

    const/16 v16, 0x5

    aput-object v14, v15, v16

    iput-object v15, v0, Lo/f;->K:[Lo/d;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lo/f;->L:Ljava/util/ArrayList;

    new-array v5, v3, [Z

    iput-object v5, v0, Lo/f;->M:[Z

    new-array v5, v3, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v17, v5, v1

    aput-object v17, v5, v4

    iput-object v5, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v0, Lo/f;->O:Lo/f;

    iput v1, v0, Lo/f;->P:I

    iput v1, v0, Lo/f;->Q:I

    iput v6, v0, Lo/f;->R:F

    const/4 v5, -0x1

    iput v5, v0, Lo/f;->S:I

    iput v1, v0, Lo/f;->T:I

    iput v1, v0, Lo/f;->U:I

    iput v1, v0, Lo/f;->V:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v0, Lo/f;->Y:F

    iput v5, v0, Lo/f;->Z:F

    iput v1, v0, Lo/f;->b0:I

    iput-object v2, v0, Lo/f;->c0:Ljava/lang/String;

    iput v1, v0, Lo/f;->d0:I

    iput v1, v0, Lo/f;->e0:I

    new-array v5, v3, [F

    fill-array-data v5, :array_2

    iput-object v5, v0, Lo/f;->f0:[F

    new-array v5, v3, [Lo/f;

    aput-object v2, v5, v1

    aput-object v2, v5, v4

    iput-object v5, v0, Lo/f;->g0:[Lo/f;

    new-array v3, v3, [Lo/f;

    aput-object v2, v3, v1

    aput-object v2, v3, v4

    iput-object v3, v0, Lo/f;->h0:[Lo/f;

    const/4 v1, -0x1

    iput v1, v0, Lo/f;->i0:I

    iput v1, v0, Lo/f;->j0:I

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A(Lcom/google/firebase/messaging/r;)V
    .locals 0

    iget-object p1, p0, Lo/f;->C:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->D:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->E:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->F:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->G:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->J:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p0, Lo/f;->H:Lo/d;

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p0, p0, Lo/f;->I:Lo/d;

    invoke-virtual {p0}, Lo/d;->k()V

    return-void
.end method

.method public final B(II)V
    .locals 1

    iget-object v0, p0, Lo/f;->C:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->l(I)V

    iget-object v0, p0, Lo/f;->E:Lo/d;

    invoke-virtual {v0, p2}, Lo/d;->l(I)V

    iput p1, p0, Lo/f;->T:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/f;->P:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/f;->h:Z

    return-void
.end method

.method public final C(II)V
    .locals 1

    iget-object v0, p0, Lo/f;->D:Lo/d;

    invoke-virtual {v0, p1}, Lo/d;->l(I)V

    iget-object v0, p0, Lo/f;->F:Lo/d;

    invoke-virtual {v0, p2}, Lo/d;->l(I)V

    iput p1, p0, Lo/f;->U:I

    sub-int/2addr p2, p1

    iput p2, p0, Lo/f;->Q:I

    iget-boolean p2, p0, Lo/f;->y:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lo/f;->V:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lo/f;->G:Lo/d;

    invoke-virtual {p2, p1}, Lo/d;->l(I)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/f;->i:Z

    return-void
.end method

.method public final D(I)V
    .locals 1

    iput p1, p0, Lo/f;->Q:I

    iget v0, p0, Lo/f;->X:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/f;->Q:I

    :cond_0
    return-void
.end method

.method public final E(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method public final F(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public final G(I)V
    .locals 1

    iput p1, p0, Lo/f;->P:I

    iget v0, p0, Lo/f;->W:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lo/f;->P:I

    :cond_0
    return-void
.end method

.method public H(ZZ)V
    .locals 7

    iget-object v0, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Lo/f;->T:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lo/f;->U:I

    :cond_3
    iget v2, p0, Lo/f;->b0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Lo/f;->P:I

    iput v6, p0, Lo/f;->Q:I

    return-void

    :cond_4
    iget-object v2, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p1, :cond_6

    aget-object p1, v2, v6

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v3, :cond_5

    iget p1, p0, Lo/f;->P:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lo/f;->P:I

    iget p1, p0, Lo/f;->W:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lo/f;->P:I

    :cond_6
    if-eqz p2, :cond_8

    const/4 p1, 0x1

    aget-object p1, v2, p1

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_7

    iget p1, p0, Lo/f;->Q:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Lo/f;->Q:I

    iget p1, p0, Lo/f;->X:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lo/f;->Q:I

    :cond_8
    return-void
.end method

.method public I(Ln/d;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lo/f;->C:Lo/d;

    invoke-static {p1}, Ln/d;->o(Lo/d;)I

    move-result p1

    iget-object v0, p0, Lo/f;->D:Lo/d;

    invoke-static {v0}, Ln/d;->o(Lo/d;)I

    move-result v0

    iget-object v1, p0, Lo/f;->E:Lo/d;

    invoke-static {v1}, Ln/d;->o(Lo/d;)I

    move-result v1

    iget-object v2, p0, Lo/f;->F:Lo/d;

    invoke-static {v2}, Ln/d;->o(Lo/d;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v5, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v4, p2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Lo/f;->T:I

    iput v0, p0, Lo/f;->U:I

    iget p1, p0, Lo/f;->b0:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Lo/f;->P:I

    iput v4, p0, Lo/f;->Q:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p1, v4

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_5

    iget p2, p0, Lo/f;->P:I

    if-ge v1, p2, :cond_5

    move v1, p2

    :cond_5
    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_6

    iget p1, p0, Lo/f;->Q:I

    if-ge v2, p1, :cond_6

    move v2, p1

    :cond_6
    iput v1, p0, Lo/f;->P:I

    iput v2, p0, Lo/f;->Q:I

    iget p1, p0, Lo/f;->X:I

    if-ge v2, p1, :cond_7

    iput p1, p0, Lo/f;->Q:I

    :cond_7
    iget p1, p0, Lo/f;->W:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lo/f;->P:I

    :cond_8
    :goto_0
    return-void
.end method

.method public final b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lkotlin/jvm/internal/m;->c(Lo/g;Ln/d;Lo/f;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lo/g;->P(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lo/f;->c(Ln/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Lo/f;->C:Lo/d;

    iget-object p5, p5, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lo/f;->E:Lo/d;

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/d;

    iget-object v0, p5, Lo/d;->d:Lo/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Lo/f;->D:Lo/d;

    iget-object p5, p5, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Lo/f;->F:Lo/d;

    iget-object p5, p5, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/d;

    iget-object v1, v0, Lo/d;->d:Lo/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lo/f;->G:Lo/d;

    iget-object p0, p0, Lo/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/d;

    iget-object v0, p5, Lo/d;->d:Lo/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/f;->b(Lo/g;Ln/d;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public c(Ln/d;Z)V
    .locals 61

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lo/f;->C:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v13

    iget-object v1, v15, Lo/f;->E:Lo/d;

    invoke-virtual {v14, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v12

    iget-object v2, v15, Lo/f;->D:Lo/d;

    invoke-virtual {v14, v2}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v11

    iget-object v10, v15, Lo/f;->F:Lo/d;

    invoke-virtual {v14, v10}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v9

    iget-object v8, v15, Lo/f;->G:Lo/d;

    invoke-virtual {v14, v8}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    iget-object v3, v15, Lo/f;->O:Lo/f;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v3, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v5

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    aget-object v3, v3, v6

    if-ne v3, v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move/from16 v28, v3

    move/from16 v29, v4

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    iget v3, v15, Lo/f;->b0:I

    const/16 v5, 0x8

    iget-object v4, v15, Lo/f;->M:[Z

    if-ne v3, v5, :cond_7

    iget-object v3, v15, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    check-cast v3, Lo/d;

    iget-object v3, v3, Lo/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v20

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_7

    const/4 v3, 0x0

    aget-boolean v5, v4, v3

    if-nez v5, :cond_7

    const/4 v3, 0x1

    aget-boolean v5, v4, v3

    if-nez v5, :cond_7

    return-void

    :cond_7
    iget-boolean v3, v15, Lo/f;->h:Z

    if-nez v3, :cond_8

    iget-boolean v5, v15, Lo/f;->i:Z

    if-eqz v5, :cond_10

    :cond_8
    if-eqz v3, :cond_a

    iget v3, v15, Lo/f;->T:I

    invoke-virtual {v14, v13, v3}, Ln/d;->d(Ln/i;I)V

    iget v3, v15, Lo/f;->T:I

    iget v5, v15, Lo/f;->P:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v12, v3}, Ln/d;->d(Ln/i;I)V

    if-eqz v29, :cond_a

    iget-object v3, v15, Lo/f;->O:Lo/f;

    if-eqz v3, :cond_a

    check-cast v3, Lo/g;

    invoke-virtual {v3, v0}, Lo/g;->M(Lo/d;)V

    iget-object v5, v3, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lo/d;->d()I

    move-result v5

    iget-object v6, v3, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    invoke-virtual {v6}, Lo/d;->d()I

    move-result v6

    if-le v5, v6, :cond_a

    :cond_9
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lo/g;->C0:Ljava/lang/ref/WeakReference;

    :cond_a
    iget-boolean v3, v15, Lo/f;->i:Z

    if-eqz v3, :cond_f

    iget v3, v15, Lo/f;->U:I

    invoke-virtual {v14, v11, v3}, Ln/d;->d(Ln/i;I)V

    iget v3, v15, Lo/f;->U:I

    iget v5, v15, Lo/f;->Q:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v9, v3}, Ln/d;->d(Ln/i;I)V

    iget-object v3, v8, Lo/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_d

    iget v3, v15, Lo/f;->U:I

    iget v5, v15, Lo/f;->V:I

    add-int/2addr v3, v5

    invoke-virtual {v14, v7, v3}, Ln/d;->d(Ln/i;I)V

    :cond_d
    if-eqz v28, :cond_f

    iget-object v3, v15, Lo/f;->O:Lo/f;

    if-eqz v3, :cond_f

    check-cast v3, Lo/g;

    invoke-virtual {v3, v2}, Lo/g;->M(Lo/d;)V

    iget-object v5, v3, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v10}, Lo/d;->d()I

    move-result v5

    iget-object v6, v3, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/d;

    invoke-virtual {v6}, Lo/d;->d()I

    move-result v6

    if-le v5, v6, :cond_f

    :cond_e
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v3, Lo/g;->B0:Ljava/lang/ref/WeakReference;

    :cond_f
    iget-boolean v3, v15, Lo/f;->h:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v15, Lo/f;->i:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    iput-boolean v3, v15, Lo/f;->h:Z

    iput-boolean v3, v15, Lo/f;->i:Z

    return-void

    :cond_10
    iget-object v6, v15, Lo/f;->f:[Z

    if-eqz p2, :cond_13

    iget-object v3, v15, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eqz v3, :cond_13

    iget-object v5, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz v5, :cond_13

    move-object/from16 v19, v4

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-object/from16 v20, v8

    iget-boolean v8, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v8, :cond_14

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_14

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_14

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v3, :cond_14

    iget v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {v14, v13, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {v14, v12, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {v14, v11, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {v14, v9, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {v14, v7, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_12

    if-eqz v29, :cond_11

    const/4 v0, 0x0

    aget-boolean v1, v6, v0

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lo/f;->t()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v15, Lo/f;->O:Lo/f;

    iget-object v1, v1, Lo/f;->E:Lo/d;

    invoke-virtual {v14, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_11
    if-eqz v28, :cond_12

    const/4 v0, 0x1

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lo/f;->u()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v15, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->F:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v9, v2, v1}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    iput-boolean v2, v15, Lo/f;->h:Z

    iput-boolean v2, v15, Lo/f;->i:Z

    return-void

    :cond_13
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    :cond_14
    iget-object v3, v15, Lo/f;->O:Lo/f;

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lo/f;->s(I)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v15, Lo/f;->O:Lo/f;

    check-cast v4, Lo/g;

    invoke-virtual {v4, v15, v3}, Lo/g;->K(Lo/f;I)V

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lo/f;->t()Z

    move-result v3

    :goto_a
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lo/f;->s(I)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v15, Lo/f;->O:Lo/f;

    check-cast v5, Lo/g;

    invoke-virtual {v5, v15, v4}, Lo/g;->K(Lo/f;I)V

    const/4 v4, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lo/f;->u()Z

    move-result v4

    :goto_b
    if-nez v3, :cond_17

    if-eqz v29, :cond_17

    iget v5, v15, Lo/f;->b0:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_17

    iget-object v5, v0, Lo/d;->f:Lo/d;

    if-nez v5, :cond_17

    iget-object v5, v1, Lo/d;->f:Lo/d;

    if-nez v5, :cond_17

    iget-object v5, v15, Lo/f;->O:Lo/f;

    iget-object v5, v5, Lo/f;->E:Lo/d;

    invoke-virtual {v14, v5}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v5

    move/from16 v21, v3

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v14, v5, v12, v3, v8}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_c

    :cond_17
    move/from16 v21, v3

    :goto_c
    if-nez v4, :cond_18

    if-eqz v28, :cond_18

    iget v3, v15, Lo/f;->b0:I

    const/16 v5, 0x8

    if-eq v3, v5, :cond_18

    iget-object v3, v2, Lo/d;->f:Lo/d;

    if-nez v3, :cond_18

    iget-object v3, v10, Lo/d;->f:Lo/d;

    if-nez v3, :cond_18

    if-nez v20, :cond_18

    iget-object v3, v15, Lo/f;->O:Lo/f;

    iget-object v3, v3, Lo/f;->F:Lo/d;

    invoke-virtual {v14, v3}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-virtual {v14, v3, v9, v8, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_18
    move/from16 v30, v4

    move/from16 v31, v21

    goto :goto_d

    :cond_19
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_d
    iget v3, v15, Lo/f;->P:I

    iget v4, v15, Lo/f;->W:I

    if-ge v3, v4, :cond_1a

    goto :goto_e

    :cond_1a
    move v4, v3

    :goto_e
    iget v5, v15, Lo/f;->Q:I

    iget v8, v15, Lo/f;->X:I

    if-ge v5, v8, :cond_1b

    goto :goto_f

    :cond_1b
    move v8, v5

    :goto_f
    move-object/from16 v21, v11

    iget-object v11, v15, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v22, v4

    const/16 v16, 0x0

    aget-object v4, v11, v16

    move-object/from16 v23, v9

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v27, v7

    const/16 v18, 0x1

    if-eq v4, v9, :cond_1c

    const/16 v24, 0x1

    goto :goto_10

    :cond_1c
    const/16 v24, 0x0

    :goto_10
    aget-object v7, v11, v18

    move/from16 v26, v8

    if-eq v7, v9, :cond_1d

    const/16 v25, 0x1

    goto :goto_11

    :cond_1d
    const/16 v25, 0x0

    :goto_11
    iget v8, v15, Lo/f;->S:I

    iput v8, v15, Lo/f;->u:I

    move-object/from16 v32, v6

    iget v6, v15, Lo/f;->R:F

    iput v6, v15, Lo/f;->v:F

    move-object/from16 v33, v12

    iget v12, v15, Lo/f;->l:I

    move-object/from16 v34, v13

    iget v13, v15, Lo/f;->m:I

    const/16 v35, 0x0

    cmpl-float v35, v6, v35

    if-lez v35, :cond_30

    iget v14, v15, Lo/f;->b0:I

    move-object/from16 v36, v11

    const/16 v11, 0x8

    if-eq v14, v11, :cond_31

    const/4 v11, 0x3

    if-ne v4, v9, :cond_1e

    if-nez v12, :cond_1e

    move v12, v11

    :cond_1e
    if-ne v7, v9, :cond_1f

    if-nez v13, :cond_1f

    move v13, v11

    :cond_1f
    const/high16 v14, 0x3f800000    # 1.0f

    if-ne v4, v9, :cond_2a

    if-ne v7, v9, :cond_2a

    if-ne v12, v11, :cond_2a

    if-ne v13, v11, :cond_2a

    const/4 v11, -0x1

    if-ne v8, v11, :cond_21

    if-eqz v24, :cond_20

    if-nez v25, :cond_20

    const/4 v3, 0x0

    iput v3, v15, Lo/f;->u:I

    goto :goto_12

    :cond_20
    if-nez v24, :cond_21

    if-eqz v25, :cond_21

    const/4 v3, 0x1

    iput v3, v15, Lo/f;->u:I

    if-ne v8, v11, :cond_21

    div-float v3, v14, v6

    iput v3, v15, Lo/f;->v:F

    :cond_21
    :goto_12
    iget v3, v15, Lo/f;->u:I

    if-nez v3, :cond_23

    invoke-virtual {v2}, Lo/d;->h()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v10}, Lo/d;->h()Z

    move-result v3

    if-nez v3, :cond_23

    :cond_22
    const/4 v3, 0x1

    goto :goto_13

    :cond_23
    iget v3, v15, Lo/f;->u:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    invoke-virtual {v0}, Lo/d;->h()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v1}, Lo/d;->h()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_24
    const/4 v3, 0x0

    :goto_13
    iput v3, v15, Lo/f;->u:I

    :cond_25
    iget v3, v15, Lo/f;->u:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    invoke-virtual {v2}, Lo/d;->h()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v10}, Lo/d;->h()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0}, Lo/d;->h()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1}, Lo/d;->h()Z

    move-result v3

    if-nez v3, :cond_28

    :cond_26
    invoke-virtual {v2}, Lo/d;->h()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v10}, Lo/d;->h()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    iput v2, v15, Lo/f;->u:I

    goto :goto_14

    :cond_27
    invoke-virtual {v0}, Lo/d;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lo/d;->h()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, v15, Lo/f;->v:F

    div-float v0, v14, v0

    iput v0, v15, Lo/f;->v:F

    const/4 v0, 0x1

    iput v0, v15, Lo/f;->u:I

    :cond_28
    :goto_14
    iget v0, v15, Lo/f;->u:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    iget v0, v15, Lo/f;->o:I

    if-lez v0, :cond_29

    iget v1, v15, Lo/f;->r:I

    if-nez v1, :cond_29

    const/4 v1, 0x0

    iput v1, v15, Lo/f;->u:I

    goto :goto_15

    :cond_29
    if-nez v0, :cond_2e

    iget v0, v15, Lo/f;->r:I

    if-lez v0, :cond_2e

    iget v0, v15, Lo/f;->v:F

    div-float/2addr v14, v0

    iput v14, v15, Lo/f;->v:F

    const/4 v0, 0x1

    iput v0, v15, Lo/f;->u:I

    goto :goto_15

    :cond_2a
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne v4, v9, :cond_2b

    if-ne v12, v1, :cond_2b

    const/4 v2, 0x0

    iput v2, v15, Lo/f;->u:I

    int-to-float v1, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    if-eq v7, v9, :cond_2f

    move v12, v0

    goto :goto_17

    :cond_2b
    if-ne v7, v9, :cond_2e

    if-ne v13, v1, :cond_2e

    const/4 v1, 0x1

    iput v1, v15, Lo/f;->u:I

    const/4 v1, -0x1

    if-ne v8, v1, :cond_2c

    div-float/2addr v14, v6

    iput v14, v15, Lo/f;->v:F

    :cond_2c
    iget v1, v15, Lo/f;->v:F

    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v8, v1

    if-eq v4, v9, :cond_2d

    move/from16 v4, v22

    goto :goto_18

    :cond_2d
    move/from16 v4, v22

    goto :goto_16

    :cond_2e
    :goto_15
    move/from16 v4, v22

    :cond_2f
    move/from16 v8, v26

    :goto_16
    move/from16 v38, v8

    move/from16 v40, v12

    move/from16 v39, v13

    const/16 v37, 0x1

    goto :goto_19

    :cond_30
    move-object/from16 v36, v11

    :cond_31
    move/from16 v4, v22

    :goto_17
    move v0, v13

    move/from16 v8, v26

    :goto_18
    move/from16 v39, v0

    move/from16 v38, v8

    move/from16 v40, v12

    const/16 v37, 0x0

    :goto_19
    iget-object v0, v15, Lo/f;->n:[I

    const/4 v1, 0x0

    aput v40, v0, v1

    const/4 v1, 0x1

    aput v39, v0, v1

    if-eqz v37, :cond_33

    iget v0, v15, Lo/f;->u:I

    const/4 v1, -0x1

    if-eqz v0, :cond_32

    if-ne v0, v1, :cond_34

    :cond_32
    const/16 v22, 0x1

    goto :goto_1a

    :cond_33
    const/4 v1, -0x1

    :cond_34
    const/16 v22, 0x0

    :goto_1a
    if-eqz v37, :cond_36

    iget v0, v15, Lo/f;->u:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    if-ne v0, v1, :cond_36

    :cond_35
    const/4 v0, 0x0

    const/16 v35, 0x1

    goto :goto_1b

    :cond_36
    const/4 v0, 0x0

    const/16 v35, 0x0

    :goto_1b
    aget-object v1, v36, v0

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v14, :cond_37

    instance-of v0, v15, Lo/g;

    if-eqz v0, :cond_37

    const/4 v11, 0x1

    goto :goto_1c

    :cond_37
    const/4 v11, 0x0

    :goto_1c
    if-eqz v11, :cond_38

    const/4 v13, 0x0

    goto :goto_1d

    :cond_38
    move v13, v4

    :goto_1d
    iget-object v12, v15, Lo/f;->J:Lo/d;

    invoke-virtual {v12}, Lo/d;->h()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v41, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v42, v19, v0

    aget-boolean v43, v19, v1

    iget v0, v15, Lo/f;->j:I

    const/4 v8, 0x2

    iget-object v7, v15, Lo/f;->w:[I

    const/16 v44, 0x0

    if-eq v0, v8, :cond_40

    iget-boolean v0, v15, Lo/f;->h:Z

    if-nez v0, :cond_40

    if-eqz p2, :cond_3c

    iget-object v0, v15, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eqz v0, :cond_3c

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v2, :cond_3c

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v0, :cond_39

    goto :goto_1f

    :cond_39
    if-eqz p2, :cond_3b

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object/from16 v6, p1

    move-object/from16 v5, v34

    invoke-virtual {v6, v5, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object/from16 v4, v33

    invoke-virtual {v6, v4, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_3a

    if-eqz v29, :cond_3a

    const/4 v0, 0x0

    aget-boolean v1, v32, v0

    if-eqz v1, :cond_3a

    invoke-virtual/range {p0 .. p0}, Lo/f;->t()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v1, v15, Lo/f;->O:Lo/f;

    iget-object v1, v1, Lo/f;->E:Lo/d;

    invoke-virtual {v6, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v6, v1, v4, v0, v3}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_1e

    :cond_3a
    const/16 v3, 0x8

    :goto_1e
    move-object/from16 v45, v5

    move-object/from16 v33, v7

    move-object/from16 v57, v9

    move-object/from16 v59, v10

    move-object/from16 v48, v12

    move-object/from16 v60, v14

    move-object/from16 v55, v20

    move-object/from16 v58, v21

    move-object/from16 v56, v23

    move-object/from16 v54, v27

    move-object/from16 v34, v36

    move-object/from16 v36, v4

    goto/16 :goto_24

    :cond_3b
    move-object/from16 v6, p1

    goto/16 :goto_23

    :cond_3c
    :goto_1f
    move-object/from16 v6, p1

    move-object/from16 v4, v33

    move-object/from16 v5, v34

    const/16 v3, 0x8

    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_3d

    iget-object v0, v0, Lo/f;->E:Lo/d;

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_20

    :cond_3d
    move-object/from16 v17, v44

    :goto_20
    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_3e

    iget-object v0, v0, Lo/f;->C:Lo/d;

    invoke-virtual {v6, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_21

    :cond_3e
    move-object/from16 v16, v44

    :goto_21
    const/16 v19, 0x0

    aget-boolean v33, v32, v19

    aget-object v34, v36, v19

    iget-object v1, v15, Lo/f;->C:Lo/d;

    iget-object v0, v15, Lo/f;->E:Lo/d;

    iget v2, v15, Lo/f;->T:I

    move/from16 v45, v2

    iget v2, v15, Lo/f;->W:I

    aget v46, v7, v19

    move/from16 v47, v2

    iget v2, v15, Lo/f;->Y:F

    const/16 v18, 0x1

    aget-object v3, v36, v18

    if-ne v3, v9, :cond_3f

    move/from16 v49, v18

    goto :goto_22

    :cond_3f
    move/from16 v49, v19

    :goto_22
    iget v3, v15, Lo/f;->o:I

    move/from16 v24, v3

    iget v3, v15, Lo/f;->p:I

    move/from16 v25, v3

    iget v3, v15, Lo/f;->q:F

    move/from16 v26, v3

    const/4 v3, 0x1

    move/from16 v50, v2

    move v2, v3

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    move-object/from16 v52, v1

    move-object/from16 v1, p1

    const/16 v48, 0x8

    move/from16 v3, v29

    move-object/from16 v53, v4

    move/from16 v4, v28

    move-object/from16 v19, v5

    move/from16 v5, v33

    move-object/from16 v6, v16

    move-object/from16 v33, v7

    move-object/from16 v54, v27

    move-object/from16 v7, v17

    move-object/from16 v55, v20

    move-object/from16 v8, v34

    move-object/from16 v57, v9

    move-object/from16 v56, v23

    move v9, v11

    move-object v11, v10

    move-object/from16 v10, v52

    move-object/from16 v59, v11

    move-object/from16 v58, v21

    move-object/from16 v34, v36

    move-object/from16 v11, v51

    move-object/from16 v48, v12

    move-object/from16 v36, v53

    move/from16 v12, v45

    move-object/from16 v45, v19

    move-object/from16 v60, v14

    move/from16 v14, v47

    move/from16 v15, v46

    move/from16 v16, v50

    move/from16 v17, v22

    move/from16 v18, v49

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v42

    move/from16 v22, v40

    move/from16 v23, v39

    move/from16 v27, v41

    invoke-virtual/range {v0 .. v27}, Lo/f;->e(Ln/d;ZZZZLn/i;Ln/i;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_24

    :cond_40
    :goto_23
    move-object/from16 v57, v9

    move-object/from16 v59, v10

    move-object/from16 v48, v12

    move-object/from16 v60, v14

    move-object/from16 v55, v20

    move-object/from16 v58, v21

    move-object/from16 v56, v23

    move-object/from16 v54, v27

    move-object/from16 v45, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v33

    move-object/from16 v33, v7

    :goto_24
    if-eqz p2, :cond_44

    move-object/from16 v15, p0

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-eqz v0, :cond_43

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v2, :cond_43

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v0, :cond_43

    iget v0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v58

    invoke-virtual {v14, v13, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object/from16 v12, v56

    invoke-virtual {v14, v12, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move-object/from16 v1, v54

    invoke-virtual {v14, v1, v0}, Ln/d;->d(Ln/i;I)V

    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_42

    if-nez v30, :cond_42

    if-eqz v28, :cond_42

    const/4 v11, 0x1

    aget-boolean v2, v32, v11

    if-eqz v2, :cond_41

    iget-object v0, v0, Lo/f;->F:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_25

    :cond_41
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_25

    :cond_42
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_25
    move v6, v10

    goto :goto_27

    :cond_43
    move-object/from16 v14, p1

    move-object/from16 v1, v54

    move-object/from16 v12, v56

    move-object/from16 v13, v58

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_26

    :cond_44
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v54

    move-object/from16 v12, v56

    move-object/from16 v13, v58

    :goto_26
    move v6, v11

    :goto_27
    iget v0, v15, Lo/f;->k:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_45

    move v5, v10

    goto :goto_28

    :cond_45
    move v5, v6

    :goto_28
    if-eqz v5, :cond_50

    iget-boolean v0, v15, Lo/f;->i:Z

    if-nez v0, :cond_50

    aget-object v0, v34, v11

    move-object/from16 v3, v60

    if-ne v0, v3, :cond_46

    instance-of v0, v15, Lo/g;

    if-eqz v0, :cond_46

    move v9, v11

    goto :goto_29

    :cond_46
    move v9, v10

    :goto_29
    if-eqz v9, :cond_47

    move/from16 v38, v10

    :cond_47
    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lo/f;->F:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    move-object v7, v0

    goto :goto_2a

    :cond_48
    move-object/from16 v7, v44

    :goto_2a
    iget-object v0, v15, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_49

    iget-object v0, v0, Lo/f;->D:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    move-object v6, v0

    goto :goto_2b

    :cond_49
    move-object/from16 v6, v44

    :goto_2b
    iget v0, v15, Lo/f;->V:I

    if-gtz v0, :cond_4a

    iget v3, v15, Lo/f;->b0:I

    if-ne v3, v2, :cond_4e

    :cond_4a
    move-object/from16 v3, v55

    iget-object v4, v3, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_4c

    invoke-virtual {v14, v1, v13, v0, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    iget-object v0, v3, Lo/d;->f:Lo/d;

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    invoke-virtual {v14, v1, v0, v10, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    if-eqz v28, :cond_4b

    move-object/from16 v0, v59

    invoke-virtual {v14, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_4b
    move/from16 v27, v10

    goto :goto_2d

    :cond_4c
    iget v3, v15, Lo/f;->b0:I

    if-ne v3, v2, :cond_4d

    invoke-virtual {v14, v1, v13, v10, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_2c

    :cond_4d
    invoke-virtual {v14, v1, v13, v0, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    :cond_4e
    :goto_2c
    move/from16 v27, v41

    :goto_2d
    aget-boolean v5, v32, v11

    aget-object v8, v34, v11

    iget-object v4, v15, Lo/f;->D:Lo/d;

    iget-object v3, v15, Lo/f;->F:Lo/d;

    iget v1, v15, Lo/f;->U:I

    iget v0, v15, Lo/f;->X:I

    aget v16, v33, v11

    iget v2, v15, Lo/f;->Z:F

    aget-object v11, v34, v10

    move-object/from16 v10, v57

    if-ne v11, v10, :cond_4f

    const/16 v18, 0x1

    goto :goto_2e

    :cond_4f
    const/16 v18, 0x0

    :goto_2e
    iget v10, v15, Lo/f;->r:I

    move/from16 v24, v10

    iget v10, v15, Lo/f;->s:I

    move/from16 v25, v10

    iget v10, v15, Lo/f;->t:F

    move/from16 v26, v10

    const/4 v10, 0x0

    move/from16 v17, v2

    move v2, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v28

    move-object v10, v4

    move/from16 v4, v29

    move-object/from16 v28, v12

    move/from16 v12, v20

    move-object/from16 v29, v13

    move/from16 v13, v38

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v35

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v43

    move/from16 v22, v39

    move/from16 v23, v40

    invoke-virtual/range {v0 .. v27}, Lo/f;->e(Ln/d;ZZZZLn/i;Ln/i;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_2f

    :cond_50
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_2f
    move-object/from16 v6, p0

    if-eqz v37, :cond_52

    iget v0, v6, Lo/f;->u:I

    iget v5, v6, Lo/f;->v:F

    const/4 v1, 0x1

    if-ne v0, v1, :cond_51

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v36

    move-object/from16 v4, v45

    goto :goto_30

    :cond_51
    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v1, v36

    move-object/from16 v2, v45

    :goto_30
    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Ln/d;->h(Ln/i;Ln/i;Ln/i;Ln/i;F)V

    :cond_52
    invoke-virtual/range {v48 .. v48}, Lo/d;->h()Z

    move-result v0

    if-eqz v0, :cond_53

    move-object/from16 v0, v48

    iget-object v1, v0, Lo/d;->f:Lo/d;

    iget-object v1, v1, Lo/d;->d:Lo/f;

    iget v2, v6, Lo/f;->x:F

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Lo/d;->e()I

    move-result v0

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v4

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v7}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v8

    invoke-virtual {v5, v8}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v9}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v10

    invoke-virtual {v5, v10}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v11}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v12

    invoke-virtual {v5, v12}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v12

    invoke-virtual {v1, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v3

    invoke-virtual {v5, v3}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v3

    invoke-virtual {v1, v7}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v7

    invoke-virtual {v5, v7}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    invoke-virtual {v1, v9}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v9

    invoke-virtual {v5, v9}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v9

    invoke-virtual {v1, v11}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    invoke-virtual {v5, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ln/d;->m()Ln/c;

    move-result-object v11

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v2, v9

    move-object/from16 p2, v10

    int-to-double v9, v0

    move-object/from16 v17, v2

    move-object v0, v3

    mul-double v2, v15, v9

    double-to-float v2, v2

    iget-object v3, v11, Ln/c;->d:Ln/b;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface {v3, v7, v15}, Ln/b;->d(Ln/i;F)V

    iget-object v3, v11, Ln/c;->d:Ln/b;

    invoke-interface {v3, v1, v15}, Ln/b;->d(Ln/i;F)V

    iget-object v1, v11, Ln/c;->d:Ln/b;

    const/high16 v3, -0x41000000    # -0.5f

    invoke-interface {v1, v8, v3}, Ln/b;->d(Ln/i;F)V

    iget-object v1, v11, Ln/c;->d:Ln/b;

    invoke-interface {v1, v12, v3}, Ln/b;->d(Ln/i;F)V

    neg-float v1, v2

    iput v1, v11, Ln/c;->b:F

    invoke-virtual {v5, v11}, Ln/d;->c(Ln/c;)V

    invoke-virtual/range {p1 .. p1}, Ln/d;->m()Ln/c;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v2, v7

    iget-object v7, v1, Ln/c;->d:Ln/b;

    invoke-interface {v7, v0, v15}, Ln/b;->d(Ln/i;F)V

    iget-object v0, v1, Ln/c;->d:Ln/b;

    move-object/from16 v7, v17

    invoke-interface {v0, v7, v15}, Ln/b;->d(Ln/i;F)V

    iget-object v0, v1, Ln/c;->d:Ln/b;

    invoke-interface {v0, v4, v3}, Ln/b;->d(Ln/i;F)V

    iget-object v0, v1, Ln/c;->d:Ln/b;

    move-object/from16 v4, p2

    invoke-interface {v0, v4, v3}, Ln/b;->d(Ln/i;F)V

    neg-float v0, v2

    iput v0, v1, Ln/c;->b:F

    invoke-virtual {v5, v1}, Ln/d;->c(Ln/c;)V

    :cond_53
    const/4 v0, 0x0

    iput-boolean v0, v6, Lo/f;->h:Z

    iput-boolean v0, v6, Lo/f;->i:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget p0, p0, Lo/f;->b0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Ln/d;ZZZZLn/i;Ln/i;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLo/d;Lo/d;IIIIFZZZZZIIIIFZ)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v9

    invoke-virtual {v10, v14}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v8

    iget-object v6, v13, Lo/d;->f:Lo/d;

    invoke-virtual {v10, v6}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v7

    iget-object v6, v14, Lo/d;->f:Lo/d;

    invoke-virtual {v10, v6}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Lo/d;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Lo/d;->h()Z

    move-result v17

    iget-object v12, v0, Lo/f;->J:Lo/d;

    invoke-virtual {v12}, Lo/d;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/16 v19, 0x3

    goto :goto_1

    :cond_2
    move/from16 v19, p22

    :goto_1
    sget-object v18, Lo/e;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v14, v18, v20

    const/4 v11, 0x1

    move-object/from16 v18, v6

    if-eq v14, v11, :cond_4

    const/4 v11, 0x2

    if-eq v14, v11, :cond_4

    const/4 v11, 0x3

    if-eq v14, v11, :cond_4

    const/4 v11, 0x4

    if-eq v14, v11, :cond_3

    move/from16 v14, v19

    goto :goto_2

    :cond_3
    move/from16 v14, v19

    if-eq v14, v11, :cond_5

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    move/from16 v14, v19

    const/4 v11, 0x4

    :cond_5
    :goto_2
    const/16 v19, 0x0

    :goto_3
    iget v11, v0, Lo/f;->b0:I

    const/16 v6, 0x8

    if-ne v11, v6, :cond_6

    const/4 v11, 0x0

    const/16 v19, 0x0

    goto :goto_4

    :cond_6
    move/from16 v11, p13

    :goto_4
    if-eqz p27, :cond_9

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v12, :cond_7

    move/from16 v6, p12

    invoke-virtual {v10, v9, v6}, Ln/d;->d(Ln/i;I)V

    goto :goto_5

    :cond_7
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v6

    move/from16 v23, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v6, v12}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v23, v12

    const/16 v12, 0x8

    goto :goto_6

    :cond_9
    move/from16 v23, v12

    move v12, v6

    :goto_6
    if-nez v19, :cond_d

    const/4 v5, 0x3

    if-eqz p9, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v10, v8, v9, v6, v5}, Ln/d;->e(Ln/i;Ln/i;II)V

    if-lez v15, :cond_a

    invoke-virtual {v10, v8, v9, v15, v12}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_a
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_c

    invoke-virtual {v10, v8, v9, v1, v12}, Ln/d;->g(Ln/i;Ln/i;II)V

    goto :goto_7

    :cond_b
    invoke-virtual {v10, v8, v9, v11, v12}, Ln/d;->e(Ln/i;Ln/i;II)V

    :cond_c
    :goto_7
    move v6, v5

    goto/16 :goto_b

    :cond_d
    const/4 v1, 0x2

    const/4 v6, 0x3

    if-eq v2, v1, :cond_10

    if-nez p17, :cond_10

    const/4 v1, 0x1

    if-eq v14, v1, :cond_e

    if-nez v14, :cond_10

    :cond_e
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_f

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_f
    const/16 v5, 0x8

    invoke-virtual {v10, v8, v9, v1, v5}, Ln/d;->e(Ln/i;Ln/i;II)V

    const/16 v19, 0x0

    goto :goto_b

    :cond_10
    const/4 v1, -0x2

    if-ne v3, v1, :cond_11

    move v3, v11

    :cond_11
    if-ne v4, v1, :cond_12

    move v4, v11

    :cond_12
    if-lez v11, :cond_13

    const/4 v1, 0x1

    if-eq v14, v1, :cond_13

    const/4 v11, 0x0

    :cond_13
    if-lez v3, :cond_14

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v9, v3, v1}, Ln/d;->f(Ln/i;Ln/i;II)V

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_14
    if-lez v4, :cond_17

    if-eqz p3, :cond_15

    const/4 v1, 0x1

    if-ne v14, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_8

    :cond_15
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_16

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v9, v4, v1}, Ln/d;->g(Ln/i;Ln/i;II)V

    goto :goto_9

    :cond_16
    const/16 v1, 0x8

    :goto_9
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_a

    :cond_17
    const/16 v1, 0x8

    :goto_a
    const/4 v12, 0x1

    if-ne v14, v12, :cond_19

    if-eqz p3, :cond_18

    invoke-virtual {v10, v8, v9, v11, v1}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_b

    :cond_18
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, Ln/d;->e(Ln/i;Ln/i;II)V

    invoke-virtual {v10, v8, v9, v11, v1}, Ln/d;->g(Ln/i;Ln/i;II)V

    :goto_b
    move/from16 v11, p5

    move/from16 v24, v2

    move v12, v3

    goto :goto_e

    :cond_19
    const/4 v1, 0x2

    if-ne v14, v1, :cond_1c

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget-object v12, v13, Lo/d;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v12, v11, :cond_1b

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v12, v1, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v1, v0, Lo/f;->O:Lo/f;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v11}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    invoke-virtual {v10, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    iget-object v11, v0, Lo/f;->O:Lo/f;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_d

    :cond_1b
    :goto_c
    iget-object v1, v0, Lo/f;->O:Lo/f;

    invoke-virtual {v1, v11}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    invoke-virtual {v10, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    iget-object v11, v0, Lo/f;->O:Lo/f;

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_d
    invoke-virtual {v11, v12}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v11

    invoke-virtual {v10, v11}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ln/d;->m()Ln/c;

    move-result-object v12

    iget-object v6, v12, Ln/c;->d:Ln/b;

    move/from16 v24, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v6, v8, v2}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v12, Ln/c;->d:Ln/b;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v9, v6}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v12, Ln/c;->d:Ln/b;

    invoke-interface {v2, v11, v5}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v12, Ln/c;->d:Ln/b;

    neg-float v5, v5

    invoke-interface {v2, v1, v5}, Ln/b;->d(Ln/i;F)V

    invoke-virtual {v10, v12}, Ln/d;->c(Ln/c;)V

    move/from16 v11, p5

    move v12, v3

    const/16 v19, 0x0

    goto :goto_e

    :cond_1c
    move/from16 v24, v2

    move v12, v3

    const/4 v11, 0x1

    :goto_e
    if-eqz p27, :cond_57

    if-eqz p19, :cond_1d

    move-object/from16 v2, p6

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v24

    const/16 v3, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v8, p7

    goto/16 :goto_32

    :cond_1d
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v23, :cond_1e

    goto :goto_f

    :cond_1e
    if-eqz v16, :cond_20

    if-nez v17, :cond_20

    :goto_f
    move-object/from16 v6, v18

    :cond_1f
    const/4 v5, 0x0

    goto :goto_10

    :cond_20
    if-nez v16, :cond_22

    if-eqz v17, :cond_22

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v18

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v6, v0, v1}, Ln/d;->e(Ln/i;Ln/i;II)V

    if-eqz p3, :cond_1f

    move-object/from16 v3, p6

    const/4 v0, 0x5

    const/4 v5, 0x0

    invoke-virtual {v10, v9, v3, v5, v0}, Ln/d;->f(Ln/i;Ln/i;II)V

    move-object/from16 v15, p11

    move v7, v5

    move-object v1, v6

    move-object v5, v8

    move/from16 p5, v11

    goto/16 :goto_2f

    :cond_21
    :goto_10
    move-object/from16 v15, p11

    move v7, v5

    move-object v1, v6

    move-object v5, v8

    move/from16 p5, v11

    const/4 v0, 0x5

    goto/16 :goto_2f

    :cond_22
    move-object/from16 v3, p6

    move-object/from16 v6, v18

    const/4 v1, 0x2

    const/4 v5, 0x0

    if-eqz v16, :cond_21

    if-eqz v17, :cond_21

    iget-object v2, v13, Lo/d;->f:Lo/d;

    iget-object v2, v2, Lo/d;->d:Lo/f;

    move-object/from16 v1, p11

    const/4 v13, 0x3

    iget-object v5, v1, Lo/d;->f:Lo/d;

    iget-object v5, v5, Lo/d;->d:Lo/f;

    iget-object v13, v0, Lo/f;->O:Lo/f;

    const/16 v16, 0x6

    if-eqz v19, :cond_35

    if-nez v14, :cond_27

    if-nez v4, :cond_24

    if-nez v12, :cond_24

    iget-boolean v4, v7, Ln/i;->f:Z

    if-eqz v4, :cond_23

    iget-boolean v4, v6, Ln/i;->f:Z

    if-eqz v4, :cond_23

    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v0

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v7, v0, v4}, Ln/d;->e(Ln/i;Ln/i;II)V

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v8, v6, v0, v4}, Ln/d;->e(Ln/i;Ln/i;II)V

    return-void

    :cond_23
    const/16 v4, 0x8

    move/from16 v17, v4

    move/from16 v18, v17

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    goto :goto_11

    :cond_24
    const/16 v4, 0x8

    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    :goto_11
    instance-of v4, v2, Lo/a;

    if-nez v4, :cond_26

    instance-of v4, v5, Lo/a;

    if-eqz v4, :cond_25

    goto :goto_12

    :cond_25
    move/from16 v4, v18

    move/from16 v18, v14

    move/from16 v14, v17

    goto :goto_13

    :cond_26
    :goto_12
    move/from16 v18, v14

    move/from16 v14, v17

    const/4 v4, 0x4

    :goto_13
    const/16 v17, 0x8

    goto :goto_19

    :cond_27
    const/4 v15, 0x1

    const/16 v17, 0x8

    if-ne v14, v15, :cond_28

    move/from16 v18, v14

    move/from16 v4, v16

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto :goto_15

    :cond_28
    const/4 v15, 0x3

    if-ne v14, v15, :cond_34

    iget v15, v0, Lo/f;->u:I

    move/from16 v18, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2b

    if-eqz p20, :cond_2a

    if-eqz p3, :cond_29

    const/4 v4, 0x5

    goto :goto_14

    :cond_29
    const/4 v4, 0x4

    goto :goto_14

    :cond_2a
    move/from16 v4, v17

    :goto_14
    const/4 v14, 0x5

    const/4 v15, 0x1

    :goto_15
    move/from16 v22, v4

    move/from16 v26, v14

    move/from16 v23, v15

    move/from16 v25, v17

    const/4 v4, 0x1

    const/4 v15, 0x5

    const/16 v24, 0x1

    move-object/from16 v14, p7

    goto/16 :goto_20

    :cond_2b
    if-eqz p17, :cond_2f

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2d

    const/4 v4, 0x1

    if-ne v14, v4, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v4, 0x0

    goto :goto_17

    :cond_2d
    :goto_16
    const/4 v4, 0x1

    :goto_17
    if-nez v4, :cond_2e

    move/from16 v14, v17

    const/4 v4, 0x5

    goto :goto_18

    :cond_2e
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_18
    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    :goto_19
    move/from16 v26, v4

    move/from16 v25, v14

    move/from16 v4, v23

    move/from16 v23, v24

    const/4 v15, 0x5

    move-object/from16 v14, p7

    goto/16 :goto_1f

    :cond_2f
    if-lez v4, :cond_30

    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/4 v15, 0x5

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x5

    goto/16 :goto_1e

    :cond_30
    if-nez v4, :cond_33

    if-nez v12, :cond_33

    if-nez p20, :cond_31

    move-object/from16 v14, p7

    move/from16 v24, v17

    const/4 v4, 0x1

    const/4 v15, 0x5

    const/16 v22, 0x1

    const/16 v23, 0x1

    goto/16 :goto_1e

    :cond_31
    if-eq v2, v13, :cond_32

    if-eq v5, v13, :cond_32

    const/4 v4, 0x4

    goto :goto_1a

    :cond_32
    const/4 v4, 0x5

    :goto_1a
    move-object/from16 v14, p7

    move/from16 v25, v4

    move/from16 v22, v16

    const/4 v4, 0x1

    const/4 v15, 0x5

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x4

    goto/16 :goto_20

    :cond_33
    move-object/from16 v14, p7

    const/4 v4, 0x1

    const/4 v15, 0x5

    const/16 v22, 0x1

    const/16 v23, 0x1

    goto :goto_1d

    :cond_34
    move/from16 v18, v14

    move-object/from16 v14, p7

    const/4 v4, 0x0

    const/4 v15, 0x5

    const/16 v22, 0x0

    goto :goto_1c

    :cond_35
    move/from16 v18, v14

    const/16 v17, 0x8

    iget-boolean v4, v7, Ln/i;->f:Z

    if-eqz v4, :cond_38

    iget-boolean v4, v6, Ln/i;->f:Z

    if-eqz v4, :cond_38

    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v2

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    if-eqz p3, :cond_37

    if-eqz v11, :cond_37

    iget-object v0, v1, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_36

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v0

    move-object/from16 v14, p7

    goto :goto_1b

    :cond_36
    move-object/from16 v14, p7

    const/4 v0, 0x0

    :goto_1b
    if-eq v6, v14, :cond_37

    const/4 v15, 0x5

    invoke-virtual {v10, v14, v8, v0, v15}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_37
    return-void

    :cond_38
    move-object/from16 v14, p7

    const/4 v15, 0x5

    const/4 v4, 0x1

    const/16 v22, 0x1

    :goto_1c
    const/16 v23, 0x0

    :goto_1d
    const/16 v24, 0x4

    :goto_1e
    move/from16 v25, v15

    move/from16 v26, v24

    :goto_1f
    move/from16 v24, v22

    move/from16 v22, v16

    :goto_20
    if-eqz v24, :cond_39

    if-ne v7, v6, :cond_39

    if-eq v2, v13, :cond_39

    const/16 v24, 0x0

    const/16 v27, 0x0

    goto :goto_21

    :cond_39
    move/from16 v27, v24

    const/16 v24, 0x1

    :goto_21
    if-eqz v4, :cond_3b

    if-nez v19, :cond_3a

    if-nez p18, :cond_3a

    if-nez p20, :cond_3a

    if-ne v7, v3, :cond_3a

    if-ne v6, v14, :cond_3a

    move/from16 v25, v17

    move/from16 v28, v25

    const/16 v22, 0x0

    const/16 v24, 0x0

    goto :goto_22

    :cond_3a
    move/from16 v28, v25

    move/from16 v25, v22

    move/from16 v22, p3

    :goto_22
    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v4

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v29

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 p8, v12

    const/16 v21, 0x0

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    move/from16 v11, v17

    move-object/from16 v30, v7

    move-object v7, v8

    move-object/from16 v31, v8

    move/from16 v8, v29

    move-object/from16 v32, v9

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    move/from16 v25, v28

    goto :goto_23

    :cond_3b
    move-object v15, v1

    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 p5, v11

    move/from16 p8, v12

    move/from16 v11, v17

    move-object v12, v5

    move/from16 v22, p3

    :goto_23
    iget v0, v0, Lo/f;->b0:I

    if-ne v0, v11, :cond_3e

    iget-object v0, v15, Lo/d;->a:Ljava/util/HashSet;

    if-nez v0, :cond_3c

    goto :goto_24

    :cond_3c
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3d

    const/4 v6, 0x1

    goto :goto_25

    :cond_3d
    :goto_24
    const/4 v6, 0x0

    :goto_25
    if-nez v6, :cond_3e

    return-void

    :cond_3e
    move-object/from16 v1, p2

    move-object/from16 v0, v30

    if-eqz v27, :cond_41

    if-eqz v22, :cond_40

    if-eq v0, v1, :cond_40

    if-nez v19, :cond_40

    instance-of v2, v14, Lo/a;

    if-nez v2, :cond_3f

    instance-of v2, v12, Lo/a;

    if-eqz v2, :cond_40

    :cond_3f
    move/from16 v2, v16

    goto :goto_26

    :cond_40
    move/from16 v2, v25

    :goto_26
    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v3

    move-object/from16 v4, v32

    invoke-virtual {v10, v4, v0, v3, v2}, Ln/d;->f(Ln/i;Ln/i;II)V

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v5, v31

    invoke-virtual {v10, v5, v1, v3, v2}, Ln/d;->g(Ln/i;Ln/i;II)V

    move/from16 v25, v2

    goto :goto_27

    :cond_41
    move-object/from16 v5, v31

    move-object/from16 v4, v32

    :goto_27
    if-eqz v22, :cond_42

    if-eqz p21, :cond_42

    instance-of v2, v14, Lo/a;

    if-nez v2, :cond_42

    instance-of v2, v12, Lo/a;

    if-nez v2, :cond_42

    move/from16 v2, v16

    move v3, v2

    const/16 v20, 0x1

    goto :goto_28

    :cond_42
    move/from16 v20, v24

    move/from16 v2, v25

    move/from16 v3, v26

    :goto_28
    if-eqz v20, :cond_4f

    if-eqz v23, :cond_4b

    if-eqz p20, :cond_43

    if-eqz p4, :cond_4b

    :cond_43
    if-eq v14, v13, :cond_45

    if-ne v12, v13, :cond_44

    goto :goto_29

    :cond_44
    move v6, v3

    goto :goto_2a

    :cond_45
    :goto_29
    move/from16 v6, v16

    :goto_2a
    instance-of v7, v14, Lo/k;

    if-nez v7, :cond_46

    instance-of v7, v12, Lo/k;

    if-eqz v7, :cond_47

    :cond_46
    const/4 v6, 0x5

    :cond_47
    instance-of v7, v14, Lo/a;

    if-nez v7, :cond_48

    instance-of v7, v12, Lo/a;

    if-eqz v7, :cond_49

    :cond_48
    const/4 v6, 0x5

    :cond_49
    if-eqz p20, :cond_4a

    const/4 v6, 0x5

    :cond_4a
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4b
    if-eqz v22, :cond_4d

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p17, :cond_4e

    if-nez p20, :cond_4e

    if-eq v14, v13, :cond_4c

    if-ne v12, v13, :cond_4e

    :cond_4c
    const/4 v2, 0x4

    goto :goto_2b

    :cond_4d
    move v2, v3

    :cond_4e
    :goto_2b
    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v3

    invoke-virtual {v10, v4, v0, v3, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v5, v1, v3, v2}, Ln/d;->e(Ln/i;Ln/i;II)V

    :cond_4f
    if-eqz v22, :cond_51

    move-object/from16 v2, p6

    move v3, v11

    if-ne v2, v0, :cond_50

    invoke-virtual/range {p10 .. p10}, Lo/d;->e()I

    move-result v6

    goto :goto_2c

    :cond_50
    const/4 v6, 0x0

    :goto_2c
    if-eq v0, v2, :cond_52

    const/4 v0, 0x5

    invoke-virtual {v10, v4, v2, v6, v0}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_2d

    :cond_51
    move v3, v11

    :cond_52
    const/4 v0, 0x5

    :goto_2d
    if-eqz v22, :cond_54

    if-eqz v19, :cond_54

    if-nez p14, :cond_54

    if-nez p8, :cond_54

    if-eqz v19, :cond_53

    move/from16 v14, v18

    const/4 v2, 0x3

    if-ne v14, v2, :cond_53

    move v6, v3

    goto :goto_2e

    :cond_53
    move v6, v0

    :goto_2e
    const/4 v7, 0x0

    invoke-virtual {v10, v5, v4, v7, v6}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_30

    :cond_54
    const/4 v7, 0x0

    goto :goto_30

    :goto_2f
    move/from16 v22, p3

    :goto_30
    if-eqz v22, :cond_56

    if-eqz p5, :cond_56

    iget-object v2, v15, Lo/d;->f:Lo/d;

    if-eqz v2, :cond_55

    invoke-virtual/range {p11 .. p11}, Lo/d;->e()I

    move-result v6

    move-object/from16 v8, p7

    goto :goto_31

    :cond_55
    move-object/from16 v8, p7

    move v6, v7

    :goto_31
    if-eq v1, v8, :cond_56

    invoke-virtual {v10, v8, v5, v6, v0}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_56
    return-void

    :cond_57
    move-object/from16 v2, p6

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v24

    const/16 v3, 0x8

    const/4 v7, 0x0

    move-object/from16 v8, p7

    const/4 v6, 0x2

    :goto_32
    if-ge v1, v6, :cond_5c

    if-eqz p3, :cond_5c

    if-eqz p5, :cond_5c

    invoke-virtual {v10, v4, v2, v7, v3}, Ln/d;->f(Ln/i;Ln/i;II)V

    iget-object v0, v0, Lo/f;->G:Lo/d;

    if-nez p2, :cond_59

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-nez v1, :cond_58

    goto :goto_33

    :cond_58
    move v6, v7

    goto :goto_34

    :cond_59
    :goto_33
    const/4 v6, 0x1

    :goto_34
    if-nez p2, :cond_5b

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_5b

    iget-object v0, v0, Lo/d;->d:Lo/f;

    iget v1, v0, Lo/f;->R:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5a

    iget-object v0, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, v7

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_5a

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-ne v0, v2, :cond_5a

    move v11, v1

    goto :goto_35

    :cond_5a
    move v11, v7

    goto :goto_35

    :cond_5b
    move v11, v6

    :goto_35
    if-eqz v11, :cond_5c

    invoke-virtual {v10, v8, v5, v7, v3}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_5c
    return-void
.end method

.method public final f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 8

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v0, :cond_8

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p3

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p4}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lo/d;->h()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/d;->h()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    move p1, v7

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lo/d;->h()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lo/d;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v7, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    goto/16 :goto_6

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_1d

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_2
    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    goto/16 :goto_6

    :cond_8
    if-eq p3, p1, :cond_b

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_9

    goto :goto_3

    :cond_9
    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, p1, :cond_a

    sget-object p4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, p4, :cond_1d

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    goto :goto_4

    :cond_b
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    :goto_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    goto/16 :goto_5

    :cond_c
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v2, :cond_e

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v3, :cond_d

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p2, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p2

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, Lo/d;->a(Lo/d;I)V

    invoke-virtual {p3, p2, v1}, Lo/d;->a(Lo/d;I)V

    invoke-virtual {p0, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Lo/d;->a(Lo/d;I)V

    goto/16 :goto_a

    :cond_e
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v3, :cond_10

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p3, v4, :cond_f

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p0, v4}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lo/d;->a(Lo/d;I)V

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lo/d;->a(Lo/d;I)V

    invoke-virtual {p0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    goto :goto_6

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)V

    invoke-virtual {p0, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    goto :goto_5

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)V

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p4

    invoke-virtual {p2, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lo/d;->a(Lo/d;I)V

    invoke-virtual {p0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    :goto_6
    invoke-virtual {p0, p1, v1}, Lo/d;->a(Lo/d;I)V

    goto/16 :goto_a

    :cond_12
    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v4

    invoke-virtual {p2, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p2

    invoke-virtual {v4, p2}, Lo/d;->i(Lo/d;)Z

    move-result p3

    if-eqz p3, :cond_1d

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_15

    sget-object p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lo/d;->j()V

    :cond_13
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lo/d;->j()V

    :cond_14
    move p4, v1

    goto :goto_9

    :cond_15
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, v1, :cond_19

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, v1, :cond_16

    goto :goto_7

    :cond_16
    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq p1, p3, :cond_17

    sget-object p3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_1c

    :cond_17
    invoke-virtual {p0, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p3

    iget-object v0, p3, Lo/d;->f:Lo/d;

    if-eq v0, p2, :cond_18

    invoke-virtual {p3}, Lo/d;->j()V

    :cond_18
    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p1}, Lo/d;->f()Lo/d;

    move-result-object p1

    invoke-virtual {p0, v2}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p0}, Lo/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    goto :goto_8

    :cond_19
    :goto_7
    invoke-virtual {p0, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p3

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Lo/d;->j()V

    :cond_1a
    invoke-virtual {p0, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p3

    iget-object v0, p3, Lo/d;->f:Lo/d;

    if-eq v0, p2, :cond_1b

    invoke-virtual {p3}, Lo/d;->j()V

    :cond_1b
    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    invoke-virtual {p1}, Lo/d;->f()Lo/d;

    move-result-object p1

    invoke-virtual {p0, v3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p0}, Lo/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1c

    :goto_8
    invoke-virtual {p1}, Lo/d;->j()V

    invoke-virtual {p0}, Lo/d;->j()V

    :cond_1c
    :goto_9
    invoke-virtual {v4, p2, p4}, Lo/d;->a(Lo/d;I)V

    :cond_1d
    :goto_a
    return-void
.end method

.method public final g(Lo/d;Lo/d;I)V
    .locals 1

    iget-object v0, p1, Lo/d;->d:Lo/f;

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lo/d;->d:Lo/f;

    iget-object p1, p1, Lo/d;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget-object p2, p2, Lo/d;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/f;->f(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method

.method public final h(Ln/d;)V
    .locals 1

    iget-object v0, p0, Lo/f;->C:Lo/d;

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    iget-object v0, p0, Lo/f;->D:Lo/d;

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    iget-object v0, p0, Lo/f;->E:Lo/d;

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    iget-object v0, p0, Lo/f;->F:Lo/d;

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    iget v0, p0, Lo/f;->V:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lo/f;->G:Lo/d;

    invoke-virtual {p1, p0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/k;-><init>(Lo/f;)V

    iput-object v0, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    :cond_0
    iget-object v0, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/n;-><init>(Lo/f;)V

    iput-object v0, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :cond_1
    return-void
.end method

.method public j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;
    .locals 2

    sget-object v0, Lo/e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lo/f;->I:Lo/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lo/f;->H:Lo/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lo/f;->J:Lo/d;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lo/f;->G:Lo/d;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lo/f;->F:Lo/d;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lo/f;->E:Lo/d;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lo/f;->D:Lo/d;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lo/f;->C:Lo/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    iget-object p0, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()I
    .locals 2

    iget v0, p0, Lo/f;->b0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lo/f;->Q:I

    return p0
.end method

.method public final m(I)Lo/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lo/f;->E:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lo/f;->F:Lo/d;

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lo/d;->d:Lo/f;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, Lo/f;->b0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lo/f;->P:I

    return p0
.end method

.method public final o()I
    .locals 2

    iget-object v0, p0, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/g;

    if-eqz v1, :cond_0

    check-cast v0, Lo/g;

    iget v0, v0, Lo/g;->q0:I

    iget p0, p0, Lo/f;->T:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/f;->T:I

    return p0
.end method

.method public final p()I
    .locals 2

    iget-object v0, p0, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/g;

    if-eqz v1, :cond_0

    check-cast v0, Lo/g;

    iget v0, v0, Lo/g;->r0:I

    iget p0, p0, Lo/f;->U:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lo/f;->U:I

    return p0
.end method

.method public final q(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/f;->C:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object p0, p0, Lo/f;->E:Lo/d;

    iget-object p0, p0, Lo/d;->f:Lo/d;

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, Lo/f;->D:Lo/d;

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    iget-object v3, p0, Lo/f;->F:Lo/d;

    iget-object v3, v3, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr p1, v3

    iget-object p0, p0, Lo/f;->G:Lo/d;

    iget-object p0, p0, Lo/d;->f:Lo/d;

    if-eqz p0, :cond_6

    move p0, v1

    goto :goto_5

    :cond_6
    move p0, v2

    :goto_5
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1
.end method

.method public final r(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Lo/f;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p5, p2}, Lo/d;->b(Lo/d;IIZ)Z

    return-void
.end method

.method public final s(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lo/f;->K:[Lo/d;

    aget-object v0, p0, p1

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, Lo/d;->f:Lo/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lo/d;->f:Lo/d;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lo/f;->C:Lo/d;

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lo/f;->E:Lo/d;

    iget-object v0, p0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/f;->c0:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/f;->c0:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v0, v2, v3}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/f;->T:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/f;->U:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lo/f;->P:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lo/f;->Q:I

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Lcom/google/protobuf/n;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Z
    .locals 2

    iget-object v0, p0, Lo/f;->D:Lo/d;

    iget-object v1, v0, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lo/f;->F:Lo/d;

    iget-object v0, p0, Lo/d;->f:Lo/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lo/d;->f:Lo/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lo/f;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lo/f;->b0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lo/f;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/f;->C:Lo/d;

    iget-boolean v0, v0, Lo/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/f;->E:Lo/d;

    iget-boolean p0, p0, Lo/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lo/f;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/f;->D:Lo/d;

    iget-boolean v0, v0, Lo/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo/f;->F:Lo/d;

    iget-boolean p0, p0, Lo/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public y()V
    .locals 6

    iget-object v0, p0, Lo/f;->C:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->D:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->E:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->F:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->G:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->H:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->I:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    iget-object v0, p0, Lo/f;->J:Lo/d;

    invoke-virtual {v0}, Lo/d;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/f;->O:Lo/f;

    const/4 v1, 0x0

    iput v1, p0, Lo/f;->x:F

    const/4 v2, 0x0

    iput v2, p0, Lo/f;->P:I

    iput v2, p0, Lo/f;->Q:I

    iput v1, p0, Lo/f;->R:F

    const/4 v1, -0x1

    iput v1, p0, Lo/f;->S:I

    iput v2, p0, Lo/f;->T:I

    iput v2, p0, Lo/f;->U:I

    iput v2, p0, Lo/f;->V:I

    iput v2, p0, Lo/f;->W:I

    iput v2, p0, Lo/f;->X:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lo/f;->Y:F

    iput v3, p0, Lo/f;->Z:F

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, p0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v4, v2

    const/4 v5, 0x1

    aput-object v3, v4, v5

    iput-object v0, p0, Lo/f;->a0:Ljava/lang/Object;

    iput v2, p0, Lo/f;->b0:I

    iput v2, p0, Lo/f;->d0:I

    iput v2, p0, Lo/f;->e0:I

    iget-object v0, p0, Lo/f;->f0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Lo/f;->j:I

    iput v1, p0, Lo/f;->k:I

    iget-object v0, p0, Lo/f;->w:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Lo/f;->l:I

    iput v2, p0, Lo/f;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/f;->q:F

    iput v0, p0, Lo/f;->t:F

    iput v3, p0, Lo/f;->p:I

    iput v3, p0, Lo/f;->s:I

    iput v2, p0, Lo/f;->o:I

    iput v2, p0, Lo/f;->r:I

    iput v1, p0, Lo/f;->u:I

    iput v0, p0, Lo/f;->v:F

    iget-object v0, p0, Lo/f;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iput-boolean v2, p0, Lo/f;->z:Z

    iget-object v0, p0, Lo/f;->M:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    iput-boolean v5, p0, Lo/f;->g:Z

    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lo/f;->O:Lo/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/g;

    if-eqz v1, :cond_0

    check-cast v0, Lo/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/d;

    invoke-virtual {v2}, Lo/d;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
