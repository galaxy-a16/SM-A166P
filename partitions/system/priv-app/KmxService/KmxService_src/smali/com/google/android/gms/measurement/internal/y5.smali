.class public final Lcom/google/android/gms/measurement/internal/y5;
.super Lcom/google/android/gms/measurement/internal/z5;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lcom/google/android/gms/measurement/internal/b;

.field public final i:Lcom/google/android/gms/internal/measurement/l4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/l4;I)V
    .locals 0

    iput p5, p0, Lcom/google/android/gms/measurement/internal/y5;->g:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y5;->h:Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/z5;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/y5;->i:Lcom/google/android/gms/internal/measurement/l4;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/y5;->g:I

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y5;->i:Lcom/google/android/gms/internal/measurement/l4;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result p0

    return p0

    :goto_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/y5;->g:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y5;->i:Lcom/google/android/gms/internal/measurement/l4;

    check-cast p0, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/measurement/internal/y5;->g:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/d2;JLcom/google/android/gms/measurement/internal/m;Z)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/y5;->h:Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/z5;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->W:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/y5;->i:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/f1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->x()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, p6

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/m;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p4

    :goto_0
    iget-object v6, v1, Lb0/h;->a:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/x2;->w()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    const/4 v8, 0x1

    const-string v9, "null"

    iget v10, v0, Lcom/google/android/gms/measurement/internal/z5;->a:I

    const/4 v11, 0x0

    if-eqz v7, :cond_7

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    move-object v14, v6

    check-cast v14, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v15, "Evaluating filter. audience, filter, event"

    invoke-virtual {v7, v15, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/q5;->g:Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    if-nez v3, :cond_2

    move-object v1, v9

    goto/16 :goto_3

    :cond_2
    const-string v12, "\nevent_filter {\n"

    invoke-static {v12}, Lcom/google/protobuf/n;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "filter_id"

    invoke-static {v12, v11, v14, v13}, Lcom/google/android/gms/measurement/internal/b3;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v13, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->r()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "event_name"

    invoke-static {v12, v11, v14, v13}, Lcom/google/android/gms/measurement/internal/b3;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->v()Z

    move-result v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->w()Z

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->x()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/b3;->t(ZZZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "filter_type"

    invoke-static {v12, v11, v14, v13}, Lcom/google/android/gms/measurement/internal/b3;->v(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "event_count_filter"

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->q()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v14

    invoke-static {v12, v8, v13, v14}, Lcom/google/android/gms/measurement/internal/b3;->w(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/k1;)V

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->l()I

    move-result v13

    if-lez v13, :cond_6

    const-string v13, "  filters {\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->s()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/h1;

    const/4 v15, 0x2

    invoke-virtual {v1, v12, v15, v14}, Lcom/google/android/gms/measurement/internal/b3;->r(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/h1;)V

    goto :goto_2

    :cond_6
    invoke-static {v12, v8}, Lcom/google/android/gms/measurement/internal/b3;->s(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n}\n"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v12, "Filter definition"

    invoke-virtual {v7, v1, v12}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v1

    const/16 v7, 0x100

    if-le v1, v7, :cond_8

    goto/16 :goto_19

    :cond_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->v()Z

    move-result v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->w()Z

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->x()Z

    move-result v12

    if-nez v1, :cond_a

    if-nez v7, :cond_a

    if-eqz v12, :cond_9

    goto :goto_4

    :cond_9
    move v1, v11

    goto :goto_5

    :cond_a
    :goto_4
    move v1, v8

    :goto_5
    if-eqz p7, :cond_c

    if-nez v1, :cond_c

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result v10

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->q()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v10

    :try_start_0
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v14, v10, v12, v13}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_d

    goto/16 :goto_14

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_12

    :cond_e
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->s()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/h1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->p()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "null or empty param name in filter. event"

    goto/16 :goto_d

    :cond_f
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v5, Ll/b;

    invoke-direct {v5}, Ll/b;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/h2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->G()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->o()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto :goto_a

    :cond_12
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->E()Z

    move-result v16

    if-eqz v16, :cond_13

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->l()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    goto :goto_a

    :cond_13
    const/4 v14, 0x0

    goto :goto_a

    :cond_14
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->I()Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->s()Ljava/lang/String;

    move-result-object v14

    :goto_a
    invoke-virtual {v5, v15, v14}, Ll/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_15
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Unknown value for param. event, param"

    goto/16 :goto_13

    :cond_16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->s()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/h1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->s()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->r()Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_c

    :cond_17
    move v8, v11

    :goto_c
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_18

    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Event has empty param name. event"

    :goto_d
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_18
    const/4 v14, 0x0

    invoke-virtual {v5, v11, v14}, Ll/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_1b

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v15

    if-nez v15, :cond_19

    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "No number filter for long param. event, param"

    goto/16 :goto_13

    :cond_19
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v10

    :try_start_1
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v11, v10, v12, v13}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    const/4 v10, 0x0

    :goto_e
    if-nez v10, :cond_1a

    goto/16 :goto_14

    :cond_1a
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_22

    goto/16 :goto_12

    :cond_1b
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_1e

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v15

    if-nez v15, :cond_1c

    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "No number filter for double param. event, param"

    goto/16 :goto_13

    :cond_1c
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v10

    :try_start_2
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v14, v15}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v14

    invoke-static {v11, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_f

    :catch_2
    const/4 v10, 0x0

    :goto_f
    if-nez v10, :cond_1d

    goto/16 :goto_14

    :cond_1d
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_22

    goto/16 :goto_12

    :cond_1e
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_25

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->v()Z

    move-result v15

    if-eqz v15, :cond_1f

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->o()Lcom/google/android/gms/internal/measurement/o1;

    move-result-object v10

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v14, v10, v11}, Lcom/google/android/gms/measurement/internal/z5;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/o1;Lcom/google/android/gms/measurement/internal/x2;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_11

    :cond_1f
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v15

    if-eqz v15, :cond_24

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/b3;->M(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_23

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v10

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/b3;->M(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_20

    goto :goto_10

    :cond_20
    :try_start_3
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v10, v12, v13}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_11

    :catch_3
    :goto_10
    const/4 v10, 0x0

    :goto_11
    if-nez v10, :cond_21

    goto/16 :goto_14

    :cond_21
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v8, :cond_22

    goto :goto_12

    :cond_22
    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_23
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Invalid param value for number filter. event, param"

    goto :goto_13

    :cond_24
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "No filter for String param. event, param"

    goto :goto_13

    :cond_25
    move-object v4, v6

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    if-nez v14, :cond_26

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Missing param for filter. event, param"

    invoke-virtual {v4, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_12
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_15

    :cond_26
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v5, v6

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/t2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/t2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v8, "Unknown param type. event, param"

    :goto_13
    invoke-virtual {v4, v8, v5, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    const/4 v4, 0x0

    goto :goto_15

    :cond_27
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_15
    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    if-nez v4, :cond_28

    goto :goto_16

    :cond_28
    move-object v9, v4

    :goto_16
    const-string v6, "Event filter result"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v9, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_29

    const/4 v0, 0x0

    return v0

    :cond_29
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/z5;->c:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/z5;->d:Ljava/lang/Object;

    if-eqz v1, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/d2;->E()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/d2;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->w()Z

    move-result v4

    if-eqz v4, :cond_2d

    if-eqz v2, :cond_2c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_17

    :cond_2b
    move-object/from16 v1, p1

    :cond_2c
    :goto_17
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    goto :goto_18

    :cond_2d
    if-eqz v2, :cond_2e

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->y()Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v1, p2

    :cond_2e
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z5;->e:Ljava/lang/Object;

    :cond_2f
    :goto_18
    const/4 v0, 0x1

    return v0

    :cond_30
    :goto_19
    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z5;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->z()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1a

    :cond_31
    const/4 v2, 0x0

    :goto_1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Invalid event filter ID. appId, id"

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/v2;Z)Z
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/u6;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/y5;->h:Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, v1, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/z5;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/o2;->U:Lcom/google/android/gms/measurement/internal/n2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/y5;->i:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v3, Lcom/google/android/gms/internal/measurement/m1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->r()Z

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->s()Z

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->t()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v8

    :goto_1
    const/4 v5, 0x0

    iget-object v1, v1, Lb0/h;->a:Ljava/lang/Object;

    if-eqz p4, :cond_3

    if-nez v4, :cond_3

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget v0, v0, Lcom/google/android/gms/measurement/internal/z5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    const-string v2, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v2, v0, v5}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->m()Lcom/google/android/gms/internal/measurement/h1;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->r()Z

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->B()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v11

    if-nez v11, :cond_4

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "No number filter for long property. property"

    goto/16 :goto_3

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->m()J

    move-result-wide v14

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v9

    :try_start_0
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v14, v15}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-static {v11, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->A()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v11

    if-nez v11, :cond_6

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "No number filter for double property. property"

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->l()D

    move-result-wide v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v9

    :try_start_1
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {v11, v12}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v11

    invoke-static {v13, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->D()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->v()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->t()Z

    move-result v11

    if-nez v11, :cond_8

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "No string or number filter defined. property"

    goto/16 :goto_3

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->r()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/b3;->M(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->r()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->n()Lcom/google/android/gms/internal/measurement/k1;

    move-result-object v9

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/b3;->M(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_2

    :cond_9
    :try_start_2
    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/z5;->a(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/k1;D)Ljava/lang/Boolean;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_a
    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->r()Ljava/lang/String;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v12, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v9, v12, v10, v11}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/h1;->o()Lcom/google/android/gms/internal/measurement/o1;

    move-result-object v9

    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-static {v5, v9, v11}, Lcom/google/android/gms/measurement/internal/z5;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/o1;Lcom/google/android/gms/measurement/internal/x2;)Ljava/lang/Boolean;

    move-result-object v5

    :catch_0
    :goto_2
    invoke-static {v5, v10}, Lcom/google/android/gms/measurement/internal/z5;->c(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_4

    :cond_c
    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    move-object v10, v1

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->m:Lcom/google/android/gms/measurement/internal/t2;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/t2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v11, "User property has no value, property"

    :goto_3
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    if-nez v5, :cond_d

    const-string v9, "null"

    goto :goto_5

    :cond_d
    move-object v9, v5

    :goto_5
    const-string v10, "Property filter result"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v5, :cond_e

    return v7

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z5;->c:Ljava/lang/Object;

    if-eqz v6, :cond_10

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    return v8

    :cond_10
    :goto_6
    if-eqz p4, :cond_11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->r()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    iput-object v5, v0, Lcom/google/android/gms/measurement/internal/z5;->d:Ljava/lang/Object;

    :cond_12
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v4, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->C()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/v2;->n()J

    move-result-wide v4

    if-eqz p1, :cond_13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->r()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->s()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m1;->s()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z5;->f:Ljava/lang/Object;

    goto :goto_7

    :cond_15
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/z5;->e:Ljava/lang/Object;

    :cond_16
    :goto_7
    return v8
.end method
