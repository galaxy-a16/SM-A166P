.class public abstract Landroidx/work/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lp1/q;

.field public final c:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/work/y;->a:Ljava/util/UUID;

    new-instance v1, Lp1/q;

    move-object v3, v1

    iget-object v2, v0, Landroidx/work/y;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    const-string v5, "id.toString()"

    invoke-static {v2, v5}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v30, 0xffffa

    const/16 v31, 0x0

    invoke-direct/range {v3 .. v31}, Lp1/q;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;III)V

    iput-object v1, v0, Landroidx/work/y;->b:Lp1/q;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lv9/a;->B(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v3, v2}, Lkotlin/collections/m;->p0(Ljava/util/LinkedHashSet;[Ljava/lang/Object;)V

    iput-object v3, v0, Landroidx/work/y;->c:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/z;
    .locals 44

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/work/y;->b()Landroidx/work/z;

    move-result-object v1

    iget-object v2, v0, Landroidx/work/y;->b:Lp1/q;

    iget-object v2, v2, Lp1/q;->j:Landroidx/work/d;

    iget-object v3, v2, Landroidx/work/d;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/work/d;->d:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/work/d;->b:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Landroidx/work/d;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    iget-object v3, v0, Landroidx/work/y;->b:Lp1/q;

    iget-boolean v6, v3, Lp1/q;->q:Z

    if-eqz v6, :cond_5

    xor-int/2addr v2, v4

    if-eqz v2, :cond_4

    iget-wide v2, v3, Lp1/q;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "randomUUID()"

    invoke-static {v2, v3}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Landroidx/work/y;->a:Ljava/util/UUID;

    new-instance v3, Lp1/q;

    move-object v4, v3

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    const-string v6, "id.toString()"

    invoke-static {v2, v6}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/work/y;->b:Lp1/q;

    const-string v15, "other"

    invoke-static {v2, v15}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v2, Lp1/q;->c:Ljava/lang/String;

    iget-object v6, v2, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    iget-object v8, v2, Lp1/q;->d:Ljava/lang/String;

    new-instance v10, Landroidx/work/f;

    move-object v9, v10

    iget-object v11, v2, Lp1/q;->e:Landroidx/work/f;

    invoke-direct {v10, v11}, Landroidx/work/f;-><init>(Landroidx/work/f;)V

    new-instance v11, Landroidx/work/f;

    move-object v10, v11

    iget-object v12, v2, Lp1/q;->f:Landroidx/work/f;

    invoke-direct {v11, v12}, Landroidx/work/f;-><init>(Landroidx/work/f;)V

    iget-wide v11, v2, Lp1/q;->g:J

    iget-wide v13, v2, Lp1/q;->h:J

    move-object/from16 v33, v1

    iget-wide v0, v2, Lp1/q;->i:J

    move-object/from16 v34, v3

    move-object v3, v15

    move-wide v15, v0

    new-instance v18, Landroidx/work/d;

    move-object/from16 v17, v18

    iget-object v0, v2, Lp1/q;->j:Landroidx/work/d;

    invoke-static {v0, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Landroidx/work/d;->b:Z

    iget-boolean v3, v0, Landroidx/work/d;->c:Z

    move-object/from16 v35, v4

    iget-object v4, v0, Landroidx/work/d;->a:Landroidx/work/NetworkType;

    move-object/from16 v36, v5

    iget-boolean v5, v0, Landroidx/work/d;->d:Z

    move-object/from16 v37, v6

    iget-boolean v6, v0, Landroidx/work/d;->e:Z

    move-object/from16 v38, v7

    iget-object v7, v0, Landroidx/work/d;->h:Ljava/util/Set;

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    iget-wide v8, v0, Landroidx/work/d;->f:J

    move-object/from16 v41, v10

    move-wide/from16 v42, v11

    iget-wide v10, v0, Landroidx/work/d;->g:J

    move-object/from16 v19, v4

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-object/from16 v28, v7

    invoke-direct/range {v18 .. v28}, Landroidx/work/d;-><init>(Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    iget v0, v2, Lp1/q;->k:I

    move/from16 v18, v0

    iget-object v0, v2, Lp1/q;->l:Landroidx/work/BackoffPolicy;

    move-object/from16 v19, v0

    iget-wide v0, v2, Lp1/q;->m:J

    move-wide/from16 v20, v0

    iget-wide v0, v2, Lp1/q;->n:J

    move-wide/from16 v22, v0

    iget-wide v0, v2, Lp1/q;->o:J

    move-wide/from16 v24, v0

    iget-wide v0, v2, Lp1/q;->p:J

    move-wide/from16 v26, v0

    iget-boolean v0, v2, Lp1/q;->q:Z

    move/from16 v28, v0

    iget-object v0, v2, Lp1/q;->r:Landroidx/work/OutOfQuotaPolicy;

    move-object/from16 v29, v0

    iget v0, v2, Lp1/q;->s:I

    move/from16 v30, v0

    const/high16 v31, 0x80000

    const/16 v32, 0x0

    move-object/from16 v4, v35

    move-object/from16 v5, v36

    move-object/from16 v6, v37

    move-object/from16 v7, v38

    move-object/from16 v8, v39

    move-object/from16 v9, v40

    move-object/from16 v10, v41

    move-wide/from16 v11, v42

    invoke-direct/range {v4 .. v32}, Lp1/q;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/f;Landroidx/work/f;JJJLandroidx/work/d;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    iput-object v1, v0, Landroidx/work/y;->b:Lp1/q;

    invoke-virtual/range {p0 .. p0}, Landroidx/work/y;->c()Landroidx/work/y;

    return-object v33
.end method

.method public abstract b()Landroidx/work/z;
.end method

.method public abstract c()Landroidx/work/y;
.end method
