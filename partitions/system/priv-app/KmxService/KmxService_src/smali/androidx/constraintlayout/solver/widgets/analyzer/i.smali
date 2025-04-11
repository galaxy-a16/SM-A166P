.class public final Landroidx/constraintlayout/solver/widgets/analyzer/i;
.super Landroidx/constraintlayout/solver/widgets/analyzer/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;-><init>(Lo/f;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V
    .locals 6

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    check-cast p1, Lo/a;

    iget v0, p1, Lo/a;->m0:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    if-eq v4, v2, :cond_1

    if-ge v5, v4, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    if-ge v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p1, Lo/a;->o0:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget p1, p1, Lo/a;->o0:I

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    :goto_2
    return-void
.end method

.method public final d()V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    instance-of v1, v0, Lo/a;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    check-cast v0, Lo/a;

    iget v3, v0, Lo/a;->m0:I

    iget-boolean v4, v0, Lo/a;->n0:Z

    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_0
    iget v2, v0, Lo/m;->l0:I

    if-ge v7, v2, :cond_4

    iget-object v2, v0, Lo/m;->k0:[Lo/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_1

    iget v3, v2, Lo/f;->b0:I

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_2
    iget v2, v0, Lo/m;->l0:I

    if-ge v7, v2, :cond_4

    iget-object v2, v0, Lo/m;->k0:[Lo/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_3

    iget v3, v2, Lo/f;->b0:I

    if-ne v3, v6, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/i;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    goto :goto_8

    :cond_5
    sget-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_4
    iget v2, v0, Lo/m;->l0:I

    if-ge v7, v2, :cond_9

    iget-object v2, v0, Lo/m;->k0:[Lo/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_6

    iget v3, v2, Lo/f;->b0:I

    if-ne v3, v6, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    sget-object v2, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_6
    iget v2, v0, Lo/m;->l0:I

    if-ge v7, v2, :cond_9

    iget-object v2, v0, Lo/m;->k0:[Lo/f;

    aget-object v2, v2, v7

    if-nez v4, :cond_8

    iget v3, v2, Lo/f;->b0:I

    if-ne v3, v6, :cond_8

    goto :goto_7

    :cond_8
    iget-object v2, v2, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/i;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    :goto_8
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/i;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    :cond_a
    :goto_9
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    instance-of v1, v0, Lo/a;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lo/a;

    iget v1, v1, Lo/a;->m0:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iput p0, v0, Lo/f;->U:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iput p0, v0, Lo/f;->T:I

    :cond_2
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->c:Landroidx/constraintlayout/solver/widgets/analyzer/l;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c()V

    return-void
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
