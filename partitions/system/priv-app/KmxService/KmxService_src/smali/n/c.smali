.class public Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ln/i;

.field public b:F

.field public final c:Ljava/util/ArrayList;

.field public d:Ln/b;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln/c;->a:Ln/i;

    const/4 v0, 0x0

    iput v0, p0, Ln/c;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln/c;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/c;->e:Z

    new-instance v0, Ln/a;

    invoke-direct {v0, p0, p1}, Ln/a;-><init>(Ln/c;Lcom/google/firebase/messaging/r;)V

    iput-object v0, p0, Ln/c;->d:Ln/b;

    return-void
.end method


# virtual methods
.method public final a(Ln/d;I)V
    .locals 3

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-virtual {p1, p2}, Ln/d;->k(I)Ln/i;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Ln/b;->d(Ln/i;F)V

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-virtual {p1, p2}, Ln/d;->k(I)Ln/i;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {p0, p1, p2}, Ln/b;->d(Ln/i;F)V

    return-void
.end method

.method public final b(Ln/i;Ln/i;Ln/i;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Ln/c;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p1, p4}, Ln/b;->d(Ln/i;F)V

    iget-object p1, p0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0, p3, v1}, Ln/b;->d(Ln/i;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p1, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, p0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, p4}, Ln/b;->d(Ln/i;F)V

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0, p3, p4}, Ln/b;->d(Ln/i;F)V

    :goto_0
    return-void
.end method

.method public final c(Ln/i;Ln/i;Ln/i;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Ln/c;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p1, p4}, Ln/b;->d(Ln/i;F)V

    iget-object p1, p0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0, p3, p4}, Ln/b;->d(Ln/i;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p1, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, p0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, p4}, Ln/b;->d(Ln/i;F)V

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0, p3, v1}, Ln/b;->d(Ln/i;F)V

    :goto_0
    return-void
.end method

.method public d([Z)Ln/i;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ln/c;->f([ZLn/i;)Ln/i;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Ln/c;->a:Ln/i;

    if-nez v0, :cond_0

    iget v0, p0, Ln/c;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0}, Ln/b;->e()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f([ZLn/i;)Ln/i;
    .locals 9

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0}, Ln/b;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Ln/c;->d:Ln/b;

    invoke-interface {v5, v3}, Ln/b;->a(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    iget-object v6, p0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v3}, Ln/b;->h(I)Ln/i;

    move-result-object v6

    if-eqz p1, :cond_0

    iget v7, v6, Ln/i;->b:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    iget-object v7, v6, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v8, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v7, v8, :cond_1

    sget-object v8, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final g(Ln/i;)V
    .locals 3

    iget-object v0, p0, Ln/c;->a:Ln/i;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Ln/c;->d:Ln/b;

    invoke-interface {v2, v0, v1}, Ln/b;->d(Ln/i;F)V

    iget-object v0, p0, Ln/c;->a:Ln/i;

    const/4 v2, -0x1

    iput v2, v0, Ln/i;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Ln/c;->a:Ln/i;

    :cond_0
    iget-object v0, p0, Ln/c;->d:Ln/b;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Ln/b;->j(Ln/i;Z)F

    move-result v0

    mul-float/2addr v0, v1

    iput-object p1, p0, Ln/c;->a:Ln/i;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Ln/c;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Ln/c;->b:F

    iget-object p0, p0, Ln/c;->d:Ln/b;

    invoke-interface {p0, v0}, Ln/b;->i(F)V

    return-void
.end method

.method public final h(Ln/d;Ln/i;Z)V
    .locals 3

    iget-boolean v0, p2, Ln/i;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p2}, Ln/b;->f(Ln/i;)F

    move-result v0

    iget v1, p0, Ln/c;->b:F

    iget v2, p2, Ln/i;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Ln/c;->b:F

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p2, p3}, Ln/b;->j(Ln/i;Z)F

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0}, Ln/i;->b(Ln/c;)V

    :cond_1
    iget-object p2, p0, Ln/c;->d:Ln/b;

    invoke-interface {p2}, Ln/b;->e()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Ln/c;->e:Z

    iput-boolean p2, p1, Ln/d;->a:Z

    :cond_2
    return-void
.end method

.method public i(Ln/d;Ln/c;Z)V
    .locals 3

    iget-object v0, p0, Ln/c;->d:Ln/b;

    invoke-interface {v0, p2, p3}, Ln/b;->c(Ln/c;Z)F

    move-result v0

    iget v1, p0, Ln/c;->b:F

    iget v2, p2, Ln/c;->b:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Ln/c;->b:F

    if-eqz p3, :cond_0

    iget-object p2, p2, Ln/c;->a:Ln/i;

    invoke-virtual {p2, p0}, Ln/i;->b(Ln/c;)V

    :cond_0
    iget-object p2, p0, Ln/c;->a:Ln/i;

    if-eqz p2, :cond_1

    iget-object p2, p0, Ln/c;->d:Ln/b;

    invoke-interface {p2}, Ln/b;->e()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Ln/c;->e:Z

    iput-boolean p2, p1, Ln/d;->a:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Ln/c;->a:Ln/i;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ln/c;->a:Ln/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " = "

    invoke-static {v0, v1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Ln/c;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/c;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget-object v5, p0, Ln/c;->d:Ln/b;

    invoke-interface {v5}, Ln/b;->e()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_8

    iget-object v6, p0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v4}, Ln/b;->h(I)Ln/i;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_6

    :cond_2
    iget-object v7, p0, Ln/c;->d:Ln/b;

    invoke-interface {v7, v4}, Ln/b;->a(I)F

    move-result v7

    cmpl-float v8, v7, v2

    if-nez v8, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v6}, Ln/i;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_4

    cmpg-float v1, v7, v2

    if-gez v1, :cond_6

    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- "

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-lez v8, :cond_5

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string v1, " - "

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v7, v1

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    :goto_5
    invoke-static {v1, v0, v6}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    const-string p0, "0.0"

    invoke-static {v0, p0}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
