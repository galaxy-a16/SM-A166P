.class public final Lo/k;
.super Lo/f;
.source "SourceFile"


# instance fields
.field public k0:F

.field public l0:I

.field public m0:I

.field public n0:Lo/d;

.field public o0:I

.field public p0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lo/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lo/k;->k0:F

    const/4 v0, -0x1

    iput v0, p0, Lo/k;->l0:I

    iput v0, p0, Lo/k;->m0:I

    iget-object v0, p0, Lo/f;->D:Lo/d;

    iput-object v0, p0, Lo/k;->n0:Lo/d;

    const/4 v0, 0x0

    iput v0, p0, Lo/k;->o0:I

    iget-object v1, p0, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lo/f;->L:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/f;->K:[Lo/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lo/f;->K:[Lo/d;

    iget-object v3, p0, Lo/k;->n0:Lo/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final I(Ln/d;Z)V
    .locals 2

    iget-object p2, p0, Lo/f;->O:Lo/f;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ln/d;->o(Lo/d;)I

    move-result p1

    iget p2, p0, Lo/k;->o0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Lo/f;->T:I

    iput v1, p0, Lo/f;->U:I

    iget-object p1, p0, Lo/f;->O:Lo/f;

    invoke-virtual {p1}, Lo/f;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/f;->D(I)V

    invoke-virtual {p0, v1}, Lo/f;->G(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lo/f;->T:I

    iput p1, p0, Lo/f;->U:I

    iget-object p1, p0, Lo/f;->O:Lo/f;

    invoke-virtual {p1}, Lo/f;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lo/f;->G(I)V

    invoke-virtual {p0, v1}, Lo/f;->D(I)V

    :goto_0
    return-void
.end method

.method public final J(I)V
    .locals 3

    iget v0, p0, Lo/k;->o0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lo/k;->o0:I

    iget-object p1, p0, Lo/f;->L:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lo/k;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/f;->C:Lo/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/f;->D:Lo/d;

    :goto_0
    iput-object v0, p0, Lo/k;->n0:Lo/d;

    iget-object v0, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/f;->K:[Lo/d;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lo/k;->n0:Lo/d;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Ln/d;Z)V
    .locals 7

    iget-object p2, p0, Lo/f;->O:Lo/f;

    check-cast p2, Lo/g;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    iget-object v2, p0, Lo/f;->O:Lo/f;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, Lo/k;->o0:I

    if-nez v5, :cond_3

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Lo/f;->j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;

    move-result-object v1

    iget-object p2, p0, Lo/f;->O:Lo/f;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, Lo/k;->p0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lo/k;->n0:Lo/d;

    iget-boolean v6, p2, Lo/d;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p2

    iget-object v6, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {v6}, Lo/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Ln/d;->d(Ln/i;I)V

    iget v6, p0, Lo/k;->l0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lo/k;->m0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lo/k;->p0:Z

    return-void

    :cond_6
    iget p2, p0, Lo/k;->l0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {p1, p2}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p2

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v0

    iget p0, p0, Lo/k;->l0:I

    invoke-virtual {p1, p2, v0, p0, v6}, Ln/d;->e(Ln/i;Ln/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lo/k;->m0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {p1, p2}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    iget p0, p0, Lo/k;->m0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, Ln/d;->e(Ln/i;Ln/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lo/k;->k0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lo/k;->n0:Lo/d;

    invoke-virtual {p1, p2}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object p2

    invoke-virtual {p1, v1}, Ln/d;->l(Ljava/lang/Object;)Ln/i;

    move-result-object v1

    iget p0, p0, Lo/k;->k0:F

    invoke-virtual {p1}, Ln/d;->m()Ln/c;

    move-result-object v2

    iget-object v3, v2, Ln/c;->d:Ln/b;

    invoke-interface {v3, p2, v0}, Ln/b;->d(Ln/i;F)V

    iget-object p2, v2, Ln/c;->d:Ln/b;

    invoke-interface {p2, v1, p0}, Ln/b;->d(Ln/i;F)V

    invoke-virtual {p1, v2}, Ln/d;->c(Ln/c;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Lo/d;
    .locals 2

    sget-object v0, Lo/j;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget v0, p0, Lo/k;->o0:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lo/k;->n0:Lo/d;

    return-object p0

    :pswitch_2
    iget v0, p0, Lo/k;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lo/k;->n0:Lo/d;

    return-object p0

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, Lo/k;->p0:Z

    return p0
.end method

.method public final x()Z
    .locals 0

    iget-boolean p0, p0, Lo/k;->p0:Z

    return p0
.end method
