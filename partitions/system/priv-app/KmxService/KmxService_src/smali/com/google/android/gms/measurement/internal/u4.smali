.class public final Lcom/google/android/gms/measurement/internal/u4;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public volatile c:Lcom/google/android/gms/measurement/internal/r4;

.field public volatile d:Lcom/google/android/gms/measurement/internal/r4;

.field public e:Lcom/google/android/gms/measurement/internal/r4;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public g:Landroid/app/Activity;

.field public volatile h:Z

.field public volatile i:Lcom/google/android/gms/measurement/internal/r4;

.field public j:Lcom/google/android/gms/measurement/internal/r4;

.field public k:Z

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/r4;JZLandroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/r4;->c:J

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/r4;->c:J

    cmp-long v8, v10, v8

    if-nez v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->x(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->x(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v7

    :goto_1
    if-eqz p5, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    iget-object v9, v0, Lb0/h;->a:Ljava/lang/Object;

    if-eqz v8, :cond_c

    new-instance v13, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-direct {v13, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    :goto_2
    invoke-static {v1, v13, v7}, Lcom/google/android/gms/measurement/internal/u5;->x(Lcom/google/android/gms/measurement/internal/r4;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    invoke-virtual {v13, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    invoke-virtual {v13, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v5, "_pi"

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/r4;->c:J

    invoke-virtual {v13, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v10, 0x0

    if-eqz v6, :cond_7

    move-object v2, v9

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    iget-wide v14, v5, Lcom/google/android/gms/measurement/internal/j5;->b:J

    sub-long v14, v3, v14

    iput-wide v3, v5, Lcom/google/android/gms/measurement/internal/j5;->b:J

    cmp-long v5, v14, v10

    if-lez v5, :cond_7

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/u5;->v(Landroid/os/Bundle;J)V

    :cond_7
    move-object v2, v9

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "_mst"

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v5, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-boolean v5, v1, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    if-eq v7, v5, :cond_9

    const-string v5, "auto"

    goto :goto_3

    :cond_9
    const-string v5, "app"

    :goto_3
    move-object v14, v5

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-boolean v5, v1, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    if-eqz v5, :cond_b

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/r4;->f:J

    cmp-long v10, v7, v10

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    move-wide v11, v7

    goto :goto_5

    :cond_b
    :goto_4
    move-wide v11, v15

    :goto_5
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/t3;->q:Lcom/google/android/gms/measurement/internal/n4;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    const-string v15, "_vs"

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/n4;->s(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/u4;->p(Lcom/google/android/gms/measurement/internal/r4;ZJ)V

    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u4;->j:Lcom/google/android/gms/measurement/internal/r4;

    :cond_e
    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    new-instance v2, Landroidx/appcompat/widget/k;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v0, v1}, Landroidx/appcompat/widget/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/r4;ZJ)V
    .locals 3

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->m()Lcom/google/android/gms/measurement/internal/n1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/n1;->n(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/r4;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->k:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->j(Lcom/google/android/gms/measurement/internal/g3;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/k5;->e:Lcom/google/android/gms/measurement/internal/j5;

    invoke-virtual {p0, p3, p4, v1, p2}, Lcom/google/android/gms/measurement/internal/j5;->a(JZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/r4;->d:Z

    :cond_1
    return-void
.end method

.method public final q(Z)Lcom/google/android/gms/measurement/internal/r4;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->j:Lcom/google/android/gms/measurement/internal/r4;

    return-object p0
.end method

.method public final r(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "Activity"

    return-object p0

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final s(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/r4;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final t(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/r4;
    .locals 5

    invoke-static {p1}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/r4;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/u4;->r(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/r4;

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/u5;->m0()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->i:Lcom/google/android/gms/measurement/internal/r4;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/u4;->i:Lcom/google/android/gms/measurement/internal/r4;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final u(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/r4;Z)V
    .locals 12

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/r4;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    :goto_0
    move-object v3, v2

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/u4;->r(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v6, v2

    new-instance v2, Lcom/google/android/gms/measurement/internal/r4;

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/r4;->a:Ljava/lang/String;

    iget-wide v7, p2, Lcom/google/android/gms/measurement/internal/r4;->c:J

    iget-boolean v9, p2, Lcom/google/android/gms/measurement/internal/r4;->e:Z

    iget-wide v10, p2, Lcom/google/android/gms/measurement/internal/r4;->f:J

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/measurement/internal/r4;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    goto :goto_2

    :cond_2
    move-object v2, p2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Lcom/google/android/gms/measurement/internal/r4;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/t3;->j:Lcom/google/android/gms/measurement/internal/s3;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v8, Lcom/google/android/gms/measurement/internal/s4;

    move-object v0, v8

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/s4;-><init>(Lcom/google/android/gms/measurement/internal/u4;Lcom/google/android/gms/measurement/internal/r4;Lcom/google/android/gms/measurement/internal/r4;JZ)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/s3;->s(Ljava/lang/Runnable;)V

    return-void
.end method
