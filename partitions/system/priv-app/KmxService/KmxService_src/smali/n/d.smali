.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8


# instance fields
.field public a:Z

.field public b:I

.field public final c:Ln/h;

.field public d:I

.field public e:I

.field public f:[Ln/c;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lcom/google/firebase/messaging/r;

.field public m:[Ln/i;

.field public n:I

.field public o:Ln/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/d;->a:Z

    iput v0, p0, Ln/d;->b:I

    const/16 v1, 0x20

    iput v1, p0, Ln/d;->d:I

    iput v1, p0, Ln/d;->e:I

    const/4 v2, 0x0

    iput-object v2, p0, Ln/d;->f:[Ln/c;

    iput-boolean v0, p0, Ln/d;->g:Z

    new-array v2, v1, [Z

    iput-object v2, p0, Ln/d;->h:[Z

    const/4 v2, 0x1

    iput v2, p0, Ln/d;->i:I

    iput v0, p0, Ln/d;->j:I

    iput v1, p0, Ln/d;->k:I

    sget v3, Ln/d;->q:I

    new-array v3, v3, [Ln/i;

    iput-object v3, p0, Ln/d;->m:[Ln/i;

    iput v0, p0, Ln/d;->n:I

    new-array v0, v1, [Ln/c;

    iput-object v0, p0, Ln/d;->f:[Ln/c;

    invoke-virtual {p0}, Ln/d;->t()V

    new-instance v0, Lcom/google/firebase/messaging/r;

    invoke-direct {v0, v2}, Lcom/google/firebase/messaging/r;-><init>(I)V

    iput-object v0, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    new-instance v1, Ln/h;

    invoke-direct {v1, v0}, Ln/h;-><init>(Lcom/google/firebase/messaging/r;)V

    iput-object v1, p0, Ln/d;->c:Ln/h;

    new-instance v1, Ln/c;

    invoke-direct {v1, v0}, Ln/c;-><init>(Lcom/google/firebase/messaging/r;)V

    iput-object v1, p0, Ln/d;->o:Ln/c;

    return-void
.end method

.method public static o(Lo/d;)I
    .locals 1

    iget-object p0, p0, Lo/d;->i:Ln/i;

    if-eqz p0, :cond_0

    iget p0, p0, Ln/i;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Ln/i;
    .locals 3

    iget-object v0, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v0, v0, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v0, Ln/e;

    invoke-virtual {v0}, Ln/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/i;

    if-nez v0, :cond_0

    new-instance v0, Ln/i;

    invoke-direct {v0, p1}, Ln/i;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ln/i;->c()V

    :goto_0
    iput-object p1, v0, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iget p1, p0, Ln/d;->n:I

    sget v1, Ln/d;->q:I

    if-lt p1, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    sput v1, Ln/d;->q:I

    iget-object p1, p0, Ln/d;->m:[Ln/i;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ln/i;

    iput-object p1, p0, Ln/d;->m:[Ln/i;

    :cond_1
    iget-object p1, p0, Ln/d;->m:[Ln/i;

    iget v1, p0, Ln/d;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ln/d;->n:I

    aput-object v0, p1, v1

    return-object v0
.end method

.method public final b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V
    .locals 6

    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    iget-object p3, v0, Ln/c;->d:Ln/b;

    invoke-interface {p3, p1, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p6, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Ln/b;->d(Ln/i;F)V

    goto :goto_2

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p4, v2

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_2

    iget-object p4, v0, Ln/c;->d:Ln/b;

    invoke-interface {p4, p1, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p5, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p6, v1}, Ln/b;->d(Ln/i;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    iget-object p4, v0, Ln/c;->d:Ln/b;

    invoke-interface {p4, p1, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, v1}, Ln/b;->d(Ln/i;F)V

    int-to-float p1, p3

    goto :goto_1

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p6, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p5, v1}, Ln/b;->d(Ln/i;F)V

    neg-int p1, p7

    :goto_0
    int-to-float p1, p1

    :goto_1
    iput p1, v0, Ln/c;->b:F

    goto :goto_2

    :cond_4
    iget-object v2, v0, Ln/c;->d:Ln/b;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    mul-float/2addr v3, p4

    invoke-interface {p1, p5, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    mul-float/2addr v1, p4

    invoke-interface {p1, p6, v1}, Ln/b;->d(Ln/i;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float/2addr p1, v4

    int-to-float p2, p7

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    iput p2, v0, Ln/c;->b:F

    :cond_6
    :goto_2
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    invoke-virtual {v0, p0, p8}, Ln/c;->a(Ln/d;I)V

    :cond_7
    invoke-virtual {p0, v0}, Ln/d;->c(Ln/c;)V

    return-void
.end method

.method public final c(Ln/c;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ln/d;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Ln/d;->k:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Ln/d;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Ln/d;->e:I

    if-lt v2, v4, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ln/d;->p()V

    :cond_1
    iget-boolean v2, v1, Ln/c;->e:Z

    if-nez v2, :cond_23

    iget-object v2, v0, Ln/d;->f:[Ln/c;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    iget-object v6, v1, Ln/c;->d:Ln/b;

    invoke-interface {v6}, Ln/b;->e()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    iget-object v8, v1, Ln/c;->c:Ljava/util/ArrayList;

    if-ge v7, v6, :cond_4

    iget-object v9, v1, Ln/c;->d:Ln/b;

    invoke-interface {v9, v7}, Ln/b;->h(I)Ln/i;

    move-result-object v9

    iget v10, v9, Ln/i;->c:I

    if-ne v10, v5, :cond_3

    iget-boolean v10, v9, Ln/i;->f:Z

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln/i;

    iget-boolean v10, v9, Ln/i;->f:Z

    if-eqz v10, :cond_5

    invoke-virtual {v1, v0, v9, v3}, Ln/c;->h(Ln/d;Ln/i;Z)V

    goto :goto_4

    :cond_5
    iget-object v10, v0, Ln/d;->f:[Ln/c;

    iget v9, v9, Ln/i;->c:I

    aget-object v9, v10, v9

    invoke-virtual {v1, v0, v9, v3}, Ln/c;->i(Ln/d;Ln/c;Z)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    iget-object v2, v1, Ln/c;->a:Ln/i;

    if-eqz v2, :cond_9

    iget-object v2, v1, Ln/c;->d:Ln/b;

    invoke-interface {v2}, Ln/b;->e()I

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v3, v1, Ln/c;->e:Z

    iput-boolean v3, v0, Ln/d;->a:Z

    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ln/c;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    :cond_a
    iget v2, v1, Ln/c;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v7

    iput v2, v1, Ln/c;->b:F

    iget-object v2, v1, Ln/c;->d:Ln/b;

    invoke-interface {v2}, Ln/b;->invert()V

    :cond_b
    iget-object v2, v1, Ln/c;->d:Ln/b;

    invoke-interface {v2}, Ln/b;->e()I

    move-result v2

    move v11, v6

    move v13, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_6
    if-ge v8, v2, :cond_16

    iget-object v15, v1, Ln/c;->d:Ln/b;

    invoke-interface {v15, v8}, Ln/b;->a(I)F

    move-result v15

    iget-object v4, v1, Ln/c;->d:Ln/b;

    invoke-interface {v4, v8}, Ln/b;->h(I)Ln/i;

    move-result-object v4

    iget-object v5, v4, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v5, v7, :cond_10

    if-nez v9, :cond_c

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_d

    goto :goto_8

    :cond_c
    cmpl-float v5, v11, v15

    if-lez v5, :cond_e

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_d

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    goto :goto_9

    :cond_e
    if-nez v12, :cond_15

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_f

    move v5, v3

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_15

    :goto_8
    move v12, v3

    :goto_9
    move-object v9, v4

    move v11, v15

    goto :goto_d

    :cond_10
    if-nez v9, :cond_15

    cmpg-float v5, v15, v6

    if-gez v5, :cond_15

    if-nez v10, :cond_11

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_12

    goto :goto_b

    :cond_11
    cmpl-float v5, v13, v15

    if-lez v5, :cond_13

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_12

    goto :goto_b

    :cond_12
    const/4 v14, 0x0

    goto :goto_c

    :cond_13
    if-nez v14, :cond_15

    iget v5, v4, Ln/i;->l:I

    if-gt v5, v3, :cond_14

    move v5, v3

    goto :goto_a

    :cond_14
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_15

    :goto_b
    move v14, v3

    :goto_c
    move-object v10, v4

    move v13, v15

    :cond_15
    :goto_d
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_6

    :cond_16
    if-eqz v9, :cond_17

    goto :goto_e

    :cond_17
    move-object v9, v10

    :goto_e
    if-nez v9, :cond_18

    move v2, v3

    goto :goto_f

    :cond_18
    invoke-virtual {v1, v9}, Ln/c;->g(Ln/i;)V

    const/4 v2, 0x0

    :goto_f
    iget-object v4, v1, Ln/c;->d:Ln/b;

    invoke-interface {v4}, Ln/b;->e()I

    move-result v4

    if-nez v4, :cond_19

    iput-boolean v3, v1, Ln/c;->e:Z

    :cond_19
    if-eqz v2, :cond_1f

    iget v2, v0, Ln/d;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Ln/d;->e:I

    if-lt v2, v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ln/d;->p()V

    :cond_1a
    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {v0, v2}, Ln/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Ln/i;

    move-result-object v2

    iget v4, v0, Ln/d;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Ln/d;->b:I

    iget v5, v0, Ln/d;->i:I

    add-int/2addr v5, v3

    iput v5, v0, Ln/d;->i:I

    iput v4, v2, Ln/i;->b:I

    iget-object v5, v0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v7, v5, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v7, [Ln/i;

    aput-object v2, v7, v4

    iput-object v2, v1, Ln/c;->a:Ln/i;

    iget v4, v0, Ln/d;->j:I

    invoke-virtual/range {p0 .. p1}, Ln/d;->i(Ln/c;)V

    iget v7, v0, Ln/d;->j:I

    add-int/2addr v4, v3

    if-ne v7, v4, :cond_1f

    iget-object v4, v0, Ln/d;->o:Ln/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    iput-object v7, v4, Ln/c;->a:Ln/i;

    iget-object v7, v4, Ln/c;->d:Ln/b;

    invoke-interface {v7}, Ln/b;->clear()V

    const/4 v7, 0x0

    :goto_10
    iget-object v8, v1, Ln/c;->d:Ln/b;

    invoke-interface {v8}, Ln/b;->e()I

    move-result v8

    if-ge v7, v8, :cond_1b

    iget-object v8, v1, Ln/c;->d:Ln/b;

    invoke-interface {v8, v7}, Ln/b;->h(I)Ln/i;

    move-result-object v8

    iget-object v9, v1, Ln/c;->d:Ln/b;

    invoke-interface {v9, v7}, Ln/b;->a(I)F

    move-result v9

    iget-object v10, v4, Ln/c;->d:Ln/b;

    invoke-interface {v10, v8, v9, v3}, Ln/b;->b(Ln/i;FZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1b
    iget-object v4, v0, Ln/d;->o:Ln/c;

    invoke-virtual {v0, v4}, Ln/d;->s(Ln/c;)V

    iget v4, v2, Ln/i;->c:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1e

    iget-object v4, v1, Ln/c;->a:Ln/i;

    if-ne v4, v2, :cond_1c

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ln/c;->f([ZLn/i;)Ln/i;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v2}, Ln/c;->g(Ln/i;)V

    :cond_1c
    iget-boolean v2, v1, Ln/c;->e:Z

    if-nez v2, :cond_1d

    iget-object v2, v1, Ln/c;->a:Ln/i;

    invoke-virtual {v2, v0, v1}, Ln/i;->e(Ln/d;Ln/c;)V

    :cond_1d
    iget-object v2, v5, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v2, Ln/e;

    invoke-virtual {v2, v1}, Ln/e;->b(Ljava/lang/Object;)Z

    iget v2, v0, Ln/d;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Ln/d;->j:I

    :cond_1e
    move v2, v3

    goto :goto_11

    :cond_1f
    const/4 v2, 0x0

    :goto_11
    iget-object v4, v1, Ln/c;->a:Ln/i;

    if-eqz v4, :cond_20

    iget-object v4, v4, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v5, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v4, v5, :cond_21

    iget v4, v1, Ln/c;->b:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_20

    goto :goto_12

    :cond_20
    const/4 v3, 0x0

    :cond_21
    :goto_12
    if-nez v3, :cond_22

    return-void

    :cond_22
    move v4, v2

    goto :goto_13

    :cond_23
    const/4 v4, 0x0

    :goto_13
    if-nez v4, :cond_24

    invoke-virtual/range {p0 .. p1}, Ln/d;->i(Ln/c;)V

    :cond_24
    return-void
.end method

.method public final d(Ln/i;I)V
    .locals 4

    iget v0, p1, Ln/i;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1, p0, p2}, Ln/i;->d(Ln/d;F)V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Ln/d;->b:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object p2, p2, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p2, [Ln/i;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    iget-object v3, p0, Ln/d;->f:[Ln/c;

    aget-object v0, v3, v0

    iget-boolean v3, v0, Ln/c;->e:Z

    if-eqz v3, :cond_2

    :goto_1
    int-to-float p0, p2

    iput p0, v0, Ln/c;->b:F

    goto :goto_4

    :cond_2
    iget-object v3, v0, Ln/c;->d:Ln/b;

    invoke-interface {v3}, Ln/b;->e()I

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v2, v0, Ln/c;->e:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, v0, Ln/c;->b:F

    iget-object p2, v0, Ln/c;->d:Ln/b;

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    int-to-float p2, p2

    iput p2, v0, Ln/c;->b:F

    iget-object p2, v0, Ln/c;->d:Ln/b;

    const/high16 v1, -0x40800000    # -1.0f

    :goto_2
    invoke-interface {p2, p1, v1}, Ln/b;->d(Ln/i;F)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    iput-object p1, v0, Ln/c;->a:Ln/i;

    int-to-float p2, p2

    iput p2, p1, Ln/i;->e:F

    iput p2, v0, Ln/c;->b:F

    iput-boolean v2, v0, Ln/c;->e:Z

    :goto_3
    invoke-virtual {p0, v0}, Ln/d;->c(Ln/c;)V

    :goto_4
    return-void
.end method

.method public final e(Ln/i;Ln/i;II)V
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    iget-boolean v1, p2, Ln/i;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, Ln/i;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget p2, p2, Ln/i;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Ln/i;->d(Ln/d;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    iput p3, v1, Ln/c;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    iget-object v2, v1, Ln/c;->d:Ln/b;

    invoke-interface {v2, p1, p3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v1, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, v3}, Ln/b;->d(Ln/i;F)V

    goto :goto_0

    :cond_3
    iget-object v2, v1, Ln/c;->d:Ln/b;

    invoke-interface {v2, p1, v3}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v1, Ln/c;->d:Ln/b;

    invoke-interface {p1, p2, p3}, Ln/b;->d(Ln/i;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    invoke-virtual {v1, p0, p4}, Ln/c;->a(Ln/d;I)V

    :cond_4
    invoke-virtual {p0, v1}, Ln/d;->c(Ln/c;)V

    return-void
.end method

.method public final f(Ln/i;Ln/i;II)V
    .locals 3

    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    invoke-virtual {p0}, Ln/d;->n()Ln/i;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Ln/i;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Ln/c;->b(Ln/i;Ln/i;Ln/i;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, v1}, Ln/b;->f(Ln/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Ln/d;->k(I)Ln/i;

    move-result-object p2

    iget-object p3, v0, Ln/c;->d:Ln/b;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Ln/b;->d(Ln/i;F)V

    :cond_0
    invoke-virtual {p0, v0}, Ln/d;->c(Ln/c;)V

    return-void
.end method

.method public final g(Ln/i;Ln/i;II)V
    .locals 3

    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    invoke-virtual {p0}, Ln/d;->n()Ln/i;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Ln/i;->d:I

    invoke-virtual {v0, p1, p2, v1, p3}, Ln/c;->c(Ln/i;Ln/i;Ln/i;I)V

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, v1}, Ln/b;->f(Ln/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p4}, Ln/d;->k(I)Ln/i;

    move-result-object p2

    iget-object p3, v0, Ln/c;->d:Ln/b;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Ln/b;->d(Ln/i;F)V

    :cond_0
    invoke-virtual {p0, v0}, Ln/d;->c(Ln/c;)V

    return-void
.end method

.method public final h(Ln/i;Ln/i;Ln/i;Ln/i;F)V
    .locals 3

    invoke-virtual {p0}, Ln/d;->m()Ln/c;

    move-result-object v0

    iget-object v1, v0, Ln/c;->d:Ln/b;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, p1, v2}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v1}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    invoke-interface {p1, p3, p5}, Ln/b;->d(Ln/i;F)V

    iget-object p1, v0, Ln/c;->d:Ln/b;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Ln/b;->d(Ln/i;F)V

    invoke-virtual {p0, v0}, Ln/d;->c(Ln/c;)V

    return-void
.end method

.method public final i(Ln/c;)V
    .locals 7

    iget-boolean v0, p1, Ln/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ln/c;->a:Ln/i;

    iget p1, p1, Ln/c;->b:F

    invoke-virtual {v0, p0, p1}, Ln/i;->d(Ln/d;F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln/d;->f:[Ln/c;

    iget v1, p0, Ln/d;->j:I

    aput-object p1, v0, v1

    iget-object v0, p1, Ln/c;->a:Ln/i;

    iput v1, v0, Ln/i;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ln/d;->j:I

    invoke-virtual {v0, p0, p1}, Ln/i;->e(Ln/d;Ln/c;)V

    :goto_0
    iget-boolean p1, p0, Ln/d;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget v1, p0, Ln/d;->j:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Ln/d;->f:[Ln/c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Ln/c;->e:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Ln/c;->a:Ln/i;

    iget v3, v1, Ln/c;->b:F

    invoke-virtual {v2, p0, v3}, Ln/i;->d(Ln/d;F)V

    iget-object v2, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v2, v2, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v2, Ln/e;

    invoke-virtual {v2, v1}, Ln/e;->b(Ljava/lang/Object;)Z

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_2
    iget v4, p0, Ln/d;->j:I

    if-ge v1, v4, :cond_3

    iget-object v3, p0, Ln/d;->f:[Ln/c;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    iget-object v3, v5, Ln/c;->a:Ln/i;

    iget v5, v3, Ln/i;->c:I

    if-ne v5, v1, :cond_2

    iput v4, v3, Ln/i;->c:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ln/d;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iput-boolean p1, p0, Ln/d;->a:Z

    :cond_7
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln/d;->j:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    aget-object v1, v1, v0

    iget-object v2, v1, Ln/c;->a:Ln/i;

    iget v1, v1, Ln/c;->b:F

    iput v1, v2, Ln/i;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(I)Ln/i;
    .locals 3

    iget v0, p0, Ln/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ln/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ln/d;->p()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, v0}, Ln/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Ln/i;

    move-result-object v0

    iget v1, p0, Ln/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ln/d;->b:I

    iget v2, p0, Ln/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ln/d;->i:I

    iput v1, v0, Ln/i;->b:I

    iput p1, v0, Ln/i;->d:I

    iget-object p1, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object p1, p1, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p1, [Ln/i;

    aput-object v0, p1, v1

    iget-object p0, p0, Ln/d;->c:Ln/h;

    iget-object p1, p0, Ln/h;->i:Ln/g;

    iput-object v0, p1, Ln/g;->a:Ln/i;

    iget-object p1, v0, Ln/i;->h:[F

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([FF)V

    iget v1, v0, Ln/i;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, p1, v1

    invoke-virtual {p0, v0}, Ln/h;->j(Ln/i;)V

    return-object v0
.end method

.method public final l(Ljava/lang/Object;)Ln/i;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Ln/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Ln/d;->e:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Ln/d;->p()V

    :cond_1
    instance-of v1, p1, Lo/d;

    if-eqz v1, :cond_5

    check-cast p1, Lo/d;

    iget-object v0, p1, Lo/d;->i:Ln/i;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lo/d;->k()V

    iget-object p1, p1, Lo/d;->i:Ln/i;

    move-object v0, p1

    :cond_2
    iget p1, v0, Ln/i;->b:I

    iget-object v1, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    iget v3, p0, Ln/d;->b:I

    if-gt p1, v3, :cond_3

    iget-object v3, v1, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v3, [Ln/i;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-virtual {v0}, Ln/i;->c()V

    :cond_4
    iget p1, p0, Ln/d;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ln/d;->b:I

    iget v2, p0, Ln/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ln/d;->i:I

    iput p1, v0, Ln/i;->b:I

    sget-object p0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object p0, v0, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iget-object p0, v1, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p0, [Ln/i;

    aput-object v0, p0, p1

    :cond_5
    return-object v0
.end method

.method public final m()Ln/c;
    .locals 1

    iget-object p0, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v0, Ln/e;

    invoke-virtual {v0}, Ln/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/c;

    if-nez v0, :cond_0

    new-instance v0, Ln/c;

    invoke-direct {v0, p0}, Ln/c;-><init>(Lcom/google/firebase/messaging/r;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Ln/c;->a:Ln/i;

    iget-object p0, v0, Ln/c;->d:Ln/b;

    invoke-interface {p0}, Ln/b;->clear()V

    const/4 p0, 0x0

    iput p0, v0, Ln/c;->b:F

    const/4 p0, 0x0

    iput-boolean p0, v0, Ln/c;->e:Z

    :goto_0
    return-object v0
.end method

.method public final n()Ln/i;
    .locals 3

    iget v0, p0, Ln/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Ln/d;->e:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ln/d;->p()V

    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, v0}, Ln/d;->a(Landroidx/constraintlayout/solver/SolverVariable$Type;)Ln/i;

    move-result-object v0

    iget v1, p0, Ln/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ln/d;->b:I

    iget v2, p0, Ln/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ln/d;->i:I

    iput v1, v0, Ln/i;->b:I

    iget-object p0, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p0, [Ln/i;

    aput-object v0, p0, v1

    return-object v0
.end method

.method public final p()V
    .locals 3

    iget v0, p0, Ln/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln/d;->d:I

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/c;

    iput-object v0, p0, Ln/d;->f:[Ln/c;

    iget-object v0, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v1, v0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v1, [Ln/i;

    iget v2, p0, Ln/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln/i;

    iput-object v1, v0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    iget v0, p0, Ln/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Ln/d;->h:[Z

    iput v0, p0, Ln/d;->e:I

    iput v0, p0, Ln/d;->k:I

    return-void
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Ln/d;->c:Ln/h;

    invoke-virtual {v0}, Ln/h;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ln/d;->j()V

    return-void

    :cond_0
    iget-boolean v1, p0, Ln/d;->g:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Ln/d;->j:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Ln/d;->f:[Ln/c;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Ln/c;->e:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ln/d;->j()V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Ln/d;->r(Ln/h;)V

    :goto_3
    return-void
.end method

.method public final r(Ln/h;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Ln/d;->j:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Ln/d;->f:[Ln/c;

    aget-object v3, v3, v2

    iget-object v6, v3, Ln/c;->a:Ln/i;

    iget-object v6, v6, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v3, Ln/c;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_e

    add-int/2addr v3, v5

    const/4 v6, -0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v6

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_4
    iget v12, v0, Ln/d;->j:I

    if-ge v8, v12, :cond_b

    iget-object v12, v0, Ln/d;->f:[Ln/c;

    aget-object v12, v12, v8

    iget-object v13, v12, Ln/c;->a:Ln/i;

    iget-object v13, v13, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v14, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v13, v14, :cond_3

    goto :goto_8

    :cond_3
    iget-boolean v13, v12, Ln/c;->e:Z

    if-eqz v13, :cond_4

    goto :goto_8

    :cond_4
    iget v13, v12, Ln/c;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_a

    iget-object v13, v12, Ln/c;->d:Ln/b;

    invoke-interface {v13}, Ln/b;->e()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_a

    iget-object v15, v12, Ln/c;->d:Ln/b;

    invoke-interface {v15, v14}, Ln/b;->h(I)Ln/i;

    move-result-object v15

    iget-object v1, v12, Ln/c;->d:Ln/b;

    invoke-interface {v1, v15}, Ln/b;->f(Ln/i;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_6
    const/16 v5, 0x9

    if-ge v4, v5, :cond_9

    iget-object v5, v15, Ln/i;->g:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v7

    if-gez v17, :cond_6

    if-eq v4, v11, :cond_7

    :cond_6
    if-le v4, v11, :cond_8

    :cond_7
    iget v10, v15, Ln/i;->b:I

    move v11, v4

    move v7, v5

    move v9, v8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    if-eq v9, v6, :cond_c

    iget-object v1, v0, Ln/d;->f:[Ln/c;

    aget-object v1, v1, v9

    iget-object v4, v1, Ln/c;->a:Ln/i;

    iput v6, v4, Ln/i;->c:I

    iget-object v4, v0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v4, v4, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v4, [Ln/i;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Ln/c;->g(Ln/i;)V

    iget-object v4, v1, Ln/c;->a:Ln/i;

    iput v9, v4, Ln/i;->c:I

    invoke-virtual {v4, v0, v1}, Ln/i;->e(Ln/d;Ln/c;)V

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    :goto_9
    iget v1, v0, Ln/d;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p0 .. p1}, Ln/d;->s(Ln/c;)V

    invoke-virtual/range {p0 .. p0}, Ln/d;->j()V

    return-void
.end method

.method public final s(Ln/c;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ln/d;->i:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ln/d;->h:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    :cond_1
    :goto_1
    if-nez v1, :cond_b

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, p0, Ln/d;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p1, Ln/c;->a:Ln/i;

    if-eqz v4, :cond_3

    iget-object v5, p0, Ln/d;->h:[Z

    iget v4, v4, Ln/i;->b:I

    aput-boolean v3, v5, v4

    :cond_3
    iget-object v4, p0, Ln/d;->h:[Z

    invoke-virtual {p1, v4}, Ln/c;->d([Z)Ln/i;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Ln/d;->h:[Z

    iget v6, v4, Ln/i;->b:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return-void

    :cond_4
    aput-boolean v3, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const/4 v3, -0x1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v0

    move v7, v3

    :goto_2
    iget v8, p0, Ln/d;->j:I

    if-ge v6, v8, :cond_9

    iget-object v8, p0, Ln/d;->f:[Ln/c;

    aget-object v8, v8, v6

    iget-object v9, v8, Ln/c;->a:Ln/i;

    iget-object v9, v9, Ln/i;->i:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v9, v8, Ln/c;->e:Z

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    iget-object v9, v8, Ln/c;->d:Ln/b;

    invoke-interface {v9, v4}, Ln/b;->g(Ln/i;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v8, Ln/c;->d:Ln/b;

    invoke-interface {v9, v4}, Ln/b;->f(Ln/i;)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_8

    iget v8, v8, Ln/c;->b:F

    neg-float v8, v8

    div-float/2addr v8, v9

    cmpg-float v9, v8, v5

    if-gez v9, :cond_8

    move v7, v6

    move v5, v8

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    if-le v7, v3, :cond_1

    iget-object v5, p0, Ln/d;->f:[Ln/c;

    aget-object v5, v5, v7

    iget-object v6, v5, Ln/c;->a:Ln/i;

    iput v3, v6, Ln/i;->c:I

    invoke-virtual {v5, v4}, Ln/c;->g(Ln/i;)V

    iget-object v3, v5, Ln/c;->a:Ln/i;

    iput v7, v3, Ln/i;->c:I

    invoke-virtual {v3, p0, v5}, Ln/i;->e(Ln/d;Ln/c;)V

    goto :goto_1

    :cond_a
    move v1, v3

    goto :goto_1

    :cond_b
    return-void
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ln/d;->j:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ln/d;->f:[Ln/c;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v2, v2, Lcom/google/firebase/messaging/r;->b:Ljava/lang/Object;

    check-cast v2, Ln/e;

    invoke-virtual {v2, v1}, Ln/e;->b(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Ln/d;->f:[Ln/c;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Ln/d;->l:Lcom/google/firebase/messaging/r;

    iget-object v3, v2, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v3, [Ln/i;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ln/i;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/google/firebase/messaging/r;->c:Ljava/lang/Object;

    check-cast v1, Ln/e;

    iget-object v3, p0, Ln/d;->m:[Ln/i;

    iget v4, p0, Ln/d;->n:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v3

    if-le v4, v5, :cond_2

    array-length v4, v3

    :cond_2
    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget v7, v1, Ln/e;->c:I

    iget-object v8, v1, Ln/e;->b:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v7, v9, :cond_3

    aput-object v6, v8, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v1, Ln/e;->c:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, Ln/d;->n:I

    iget-object v1, v2, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast v1, [Ln/i;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v0, p0, Ln/d;->b:I

    iget-object v1, p0, Ln/d;->c:Ln/h;

    iput v0, v1, Ln/h;->h:I

    const/4 v3, 0x0

    iput v3, v1, Ln/c;->b:F

    const/4 v1, 0x1

    iput v1, p0, Ln/d;->i:I

    move v1, v0

    :goto_2
    iget v3, p0, Ln/d;->j:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Ln/d;->f:[Ln/c;

    aget-object v3, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ln/d;->t()V

    iput v0, p0, Ln/d;->j:I

    new-instance v0, Ln/c;

    invoke-direct {v0, v2}, Ln/c;-><init>(Lcom/google/firebase/messaging/r;)V

    iput-object v0, p0, Ln/d;->o:Ln/c;

    return-void
.end method
