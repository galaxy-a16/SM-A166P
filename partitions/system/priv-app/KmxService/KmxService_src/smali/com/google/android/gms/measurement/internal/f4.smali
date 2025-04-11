.class public final synthetic Lcom/google/android/gms/measurement/internal/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/n4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n4;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/f4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f4;->c:Lcom/google/android/gms/measurement/internal/n4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f4;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/measurement/internal/f4;->a:I

    const-string v2, "time_to_live"

    const-string v3, "trigger_timeout"

    const-string v4, "trigger_event_name"

    const-string v5, "creation_timestamp"

    const-string v6, "expired_event_params"

    const-string v7, "expired_event_name"

    const-string v8, "name"

    const-string v9, "app_id"

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/f4;->b:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/f4;->c:Lcom/google/android/gms/measurement/internal/n4;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-static {v10}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "origin"

    invoke-virtual {v10, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15}, Lva/n;->f(Ljava/lang/String;)V

    invoke-static {v1}, Lva/n;->f(Ljava/lang/String;)V

    const-string v8, "value"

    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Conditional property not set since app measurement is disabled"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    new-instance v23, Lcom/google/android/gms/measurement/internal/r5;

    const-string v11, "triggered_timestamp"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v11, v23

    move-object/from16 v31, v14

    move-object v14, v8

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "triggered_event_name"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v11, "triggered_event_params"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v27

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v11, "timed_out_event_name"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v11, "timed_out_event_params"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v24

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v22}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v30
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const/16 v22, 0x0

    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v23

    move-object/from16 v23, v4

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;)V

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c5;->p(Lcom/google/android/gms/measurement/internal/c;)V

    :catch_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    if-nez v10, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {v0, v1}, Lva/e;->m(Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {v2}, Lva/e;->l()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v10}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/n4;->q:Ld/s0;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_4

    instance-of v8, v7, Ljava/lang/Long;

    if-nez v8, :cond_4

    instance-of v8, v7, Ljava/lang/Double;

    if-nez v8, :cond_4

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/u5;->U(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v12, 0x0

    const/16 v13, 0x1b

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v6, "Invalid default event parameter type. Name, value"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v6, v4, v7}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/u5;->W(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v6, "Invalid default event parameter name. Name"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "param"

    const/16 v8, 0x64

    invoke-virtual {v6, v5, v4, v8, v7}, Lcom/google/android/gms/measurement/internal/u5;->P(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v6, v2, v4, v7}, Lcom/google/android/gms/measurement/internal/u5;->B(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->m()I

    move-result v0

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gt v3, v0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/util/TreeSet;

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v4

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    if-le v7, v0, :cond_9

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    const/4 v12, 0x0

    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/u5;->A(Lcom/google/android/gms/measurement/internal/t5;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Too many default event parameters set. Discarding beyond event parameter limit"

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->y:Lva/e;

    invoke-virtual {v0, v2}, Lva/e;->m(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v1

    new-instance v3, La0/a;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v1, v2, v4}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :goto_5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-static {v10}, Lva/n;->i(Ljava/lang/Object;)V

    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lva/n;->f(Ljava/lang/String;)V

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Conditional property not cleared since app measurement is disabled"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    new-instance v8, Lcom/google/android/gms/measurement/internal/r5;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-string v16, ""

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/r5;-><init>(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const/16 v17, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/u5;->q0(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v16
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-virtual {v10, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v5, "active"

    invoke-virtual {v10, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v10, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v10, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v15, 0x0

    invoke-virtual {v10, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    move-object v2, v0

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    move-wide v6, v11

    move v8, v9

    move-object v9, v13

    move-object v10, v14

    move-wide/from16 v11, v17

    move-object v13, v15

    move-wide/from16 v14, v19

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/r5;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;JLcom/google/android/gms/measurement/internal/o;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/c5;->p(Lcom/google/android/gms/measurement/internal/c;)V

    :catch_1
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
