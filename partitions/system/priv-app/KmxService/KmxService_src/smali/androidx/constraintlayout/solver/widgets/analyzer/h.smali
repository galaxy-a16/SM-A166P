.class public final Landroidx/constraintlayout/solver/widgets/analyzer/h;
.super Landroidx/constraintlayout/solver/widgets/analyzer/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lo/f;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/r;-><init>(Lo/f;)V

    iget-object v0, p1, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/k;->f()V

    iget-object v0, p1, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/n;->f()V

    check-cast p1, Lo/k;

    iget p1, p1, Lo/k;->o0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->f:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V
    .locals 2

    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    check-cast p0, Lo/k;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    int-to-float v0, v0

    iget p0, p0, Lo/k;->k0:F

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/f;->d(I)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    move-object v1, v0

    check-cast v1, Lo/k;

    iget v2, v1, Lo/k;->l0:I

    iget v3, v1, Lo/k;->m0:I

    iget v1, v1, Lo/k;->o0:I

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v1, v5, :cond_2

    if-eq v2, v6, :cond_0

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v6, :cond_1

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_0

    :cond_1
    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->d:Landroidx/constraintlayout/solver/widgets/analyzer/k;

    goto :goto_2

    :cond_2
    if-eq v2, v6, :cond_3

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v6, :cond_4

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->f:I

    goto :goto_1

    :cond_4
    iput-boolean v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->b:Z

    iget-object v1, v4, Landroidx/constraintlayout/solver/widgets/analyzer/f;->l:Ljava/util/ArrayList;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->O:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    iget-object v0, v0, Lo/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/n;

    :goto_2
    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->i:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/h;->m(Landroidx/constraintlayout/solver/widgets/analyzer/f;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->b:Lo/f;

    move-object v1, v0

    check-cast v1, Lo/k;

    iget v1, v1, Lo/k;->o0:I

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/r;->h:Landroidx/constraintlayout/solver/widgets/analyzer/f;

    iget p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    if-ne v1, v2, :cond_0

    iput p0, v0, Lo/f;->T:I

    goto :goto_0

    :cond_0
    iput p0, v0, Lo/f;->U:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 0

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
