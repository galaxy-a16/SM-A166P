.class public abstract Landroidx/constraintlayout/solver/widgets/analyzer/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/d;


# instance fields
.field public a:I

.field public b:Lo/f;

.field public c:Landroidx/constraintlayout/solver/widgets/analyzer/l;

.field public d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public final e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

.field public f:I

.field public g:Z

.field public final h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

.field public final i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

.field public j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/g;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g:Z

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    sget-object v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->j:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun$RunType;

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    return-void
.end method

.method public static b(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;
    .locals 3

    iget-object p0, p0, Lo/d;->f:Lo/d;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/q;->a:[I

    iget-object v2, p0, Lo/d;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, Lo/d;->d:Lo/f;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/n;->k:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    :goto_2
    return-object v0
.end method

.method public static i(Lo/d;I)Landroidx/constraintlayout/solver/widgets/analyzer/f;
    .locals 2

    iget-object p0, p0, Lo/d;->f:Lo/d;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lo/d;->d:Lo/f;

    if-nez p1, :cond_1

    iget-object p1, v1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_0

    :cond_1
    iget-object p1, v1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_0
    sget-object v1, Landroidx/constraintlayout/solver/widgets/analyzer/q;->a:[I

    iget-object p0, p0, Lo/d;->e:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    goto :goto_1

    :cond_3
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final c(Landroidx/constraintlayout/solver/widgets/analyzer/f;Landroidx/constraintlayout/solver/widgets/analyzer/f;ILandroidx/constraintlayout/solver/widgets/analyzer/g;)V
    .locals 1

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->h:I

    iput-object p4, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->i:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-object p0, p2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-nez p2, :cond_1

    iget p2, p0, Lo/f;->p:I

    iget p0, p0, Lo/f;->o:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_1
    iget p2, p0, Lo/f;->s:I

    iget p0, p0, Lo/f;->r:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(Lo/d;Lo/d;I)V
    .locals 12

    invoke-static {p1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v0

    invoke-static {p2}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h(Lo/d;)Landroidx/constraintlayout/solver/widgets/analyzer/f;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {p1}, Lo/d;->e()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    invoke-virtual {p2}, Lo/d;->e()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_a

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v9, v4, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v6, :cond_2

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    if-ne v10, v8, :cond_2

    iget-object v10, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/analyzer/r;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v6, :cond_2

    iget v6, v10, Landroidx/constraintlayout/solver/widgets/analyzer/r;->a:I

    if-ne v6, v8, :cond_2

    goto :goto_4

    :cond_2
    if-nez p3, :cond_3

    iget-object v9, v4, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :cond_3
    iget-object v6, v9, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v8, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v8, :cond_a

    iget v4, v4, Lo/f;->R:F

    if-ne p3, v7, :cond_4

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_3

    :cond_4
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v6, v4, Lo/f;->O:Lo/f;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_0

    :cond_6
    iget-object v6, v6, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_0
    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/r;->e:Landroidx/constraintlayout/solver/widgets/analyzer/g;

    iget-boolean v7, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, Lo/f;->q:F

    goto :goto_1

    :cond_7
    iget v4, v4, Lo/f;->t:F

    :goto_1
    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_2

    :cond_8
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/g;->m:I

    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    :cond_9
    move v4, p2

    :goto_2
    invoke-virtual {p0, v4, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/r;->g(II)I

    move-result v4

    :goto_3
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/g;->d(I)V

    :cond_a
    :goto_4
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v4, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    return-void

    :cond_c
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    if-nez p3, :cond_d

    iget p0, p0, Lo/f;->Y:F

    goto :goto_5

    :cond_d
    iget p0, p0, Lo/f;->Z:F

    :goto_5
    if-ne v0, v1, :cond_e

    iget p1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    move p0, v5

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p2, v2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    iget p0, v7, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget p1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v6, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    :cond_f
    :goto_6
    return-void
.end method
