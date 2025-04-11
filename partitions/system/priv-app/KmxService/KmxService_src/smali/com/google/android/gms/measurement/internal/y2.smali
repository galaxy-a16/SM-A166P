.class public final Lcom/google/android/gms/measurement/internal/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/y2;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/y2;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/y2;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Lcom/google/android/gms/measurement/internal/o;)Lcom/google/android/gms/measurement/internal/y2;
    .locals 7

    new-instance v6, Lcom/google/android/gms/measurement/internal/y2;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o;->b:Lcom/google/android/gms/measurement/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->b()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/o;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/y2;-><init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/d2;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/d2;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v14

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/b;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    const-string v4, "_eid"

    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/Long;

    const/4 v15, 0x0

    if-eqz v10, :cond_f

    const-string v5, "_ep"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_c

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    const-string v0, "_en"

    invoke-static {v7, v0}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Extra parameter without an event name. eventId"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v0, v12, v16

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-object v12, v0, Lb0/h;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n5;->l()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    aput-object v2, v13, v15

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v11

    const-string v6, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    invoke-virtual {v0, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v13, "Main event not found"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d2;->p()Lcom/google/android/gms/internal/measurement/c2;

    move-result-object v15

    invoke-static {v15, v0}, Lcom/google/android/gms/measurement/internal/b3;->D(Lcom/google/android/gms/internal/measurement/k4;[B)Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v15, "Failed to merge main event. appId, eventId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/x2;->t(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/w2;

    move-result-object v11

    invoke-virtual {v13, v15, v11, v10, v0}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    const/4 v6, 0x0

    :goto_0
    :try_start_5
    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v12, "Error selecting main event"

    invoke-virtual {v11, v0, v12}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v6, :cond_4

    goto/16 :goto_6

    :cond_4
    check-cast v6, Lcom/google/android/gms/internal/measurement/d2;

    iput-object v6, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v0, v4}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    :cond_5
    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    const-wide/16 v15, -0x1

    add-long/2addr v11, v15

    iput-wide v11, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    cmp-long v0, v11, v8

    if-gtz v0, :cond_6

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    iget-object v4, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v8, "Clearing complex main event info. appId"

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v6, v2, v8}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->D()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const-string v2, "delete from main_event_params where app_id=?"

    invoke-virtual {v0, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v4, "Error clearing complex main event"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/measurement/d2;

    move-object/from16 v9, p2

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/i;->t(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/d2;)V

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/d2;->t()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/h2;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/h2;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/b3;->o(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/h2;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v0

    goto :goto_5

    :cond_9
    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "No unique parameters in main event. eventName"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    move-object v0, v5

    goto :goto_8

    :cond_a
    :goto_6
    iget-object v0, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Extra parameter without existing main event. eventName, eventId"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1, v5, v10}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :goto_7
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    iput-object v10, v1, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/q5;->P()Lcom/google/android/gms/measurement/internal/b3;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "_epc"

    invoke-static {v7, v5}, Lcom/google/android/gms/measurement/internal/b3;->p(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-eqz v5, :cond_d

    move-object v4, v5

    :cond_d
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_e

    iget-object v1, v3, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Complex event with zero extra param count. eventName"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/y2;->b:J

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v3, v10

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/i;->t(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/d2;)V

    :cond_f
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/l4;->i()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/c2;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/c2;->k(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d2;->x(Lcom/google/android/gms/internal/measurement/d2;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->f()V

    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/k4;->c:Z

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/l4;

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    invoke-static {v0, v14}, Lcom/google/android/gms/internal/measurement/d2;->w(Lcom/google/android/gms/internal/measurement/d2;Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k4;->d()Lcom/google/android/gms/internal/measurement/l4;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/d2;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/o;
    .locals 7

    new-instance v6, Lcom/google/android/gms/measurement/internal/o;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/internal/n;

    new-instance v0, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/n;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/y2;->b:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n;Ljava/lang/String;J)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/measurement/internal/y2;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y2;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/y2;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "origin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
