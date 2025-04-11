.class public final Lq1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final c:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/u;

.field public final b:Landroidx/work/impl/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq1/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/u;Landroidx/work/impl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/e;->a:Landroidx/work/impl/u;

    iput-object p2, p0, Lq1/e;->b:Landroidx/work/impl/m;

    return-void
.end method

.method public static a(Landroidx/work/impl/u;)Z
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Landroidx/work/impl/u;->S(Landroidx/work/impl/u;)Ljava/util/HashSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Landroidx/work/impl/u;->k:Landroidx/work/impl/d0;

    iget-object v6, v5, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    if-eqz v8, :cond_5

    array-length v9, v1

    move v10, v2

    move v12, v10

    move v13, v12

    move v11, v7

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v14, v1, v10

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v15

    invoke-virtual {v15, v14}, Lp1/s;->h(Ljava/lang/String;)Lp1/q;

    move-result-object v15

    if-nez v15, :cond_1

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Prerequisite "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist; not enqueuing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lq1/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroidx/work/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    iget-object v14, v15, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_2

    move v15, v7

    goto :goto_2

    :cond_2
    move v15, v2

    :goto_2
    and-int/2addr v11, v15

    sget-object v15, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    sget-object v15, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_4

    move v12, v7

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move v12, v2

    move v13, v12

    move v11, v7

    :cond_6
    iget-object v9, v0, Landroidx/work/impl/u;->l:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v7

    if-eqz v10, :cond_7

    if-nez v8, :cond_7

    move v14, v7

    goto :goto_4

    :cond_7
    move v14, v2

    :goto_4
    if-eqz v14, :cond_19

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v14

    invoke-virtual {v14, v9}, Lp1/s;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_19

    sget-object v15, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    iget-object v7, v0, Landroidx/work/impl/u;->m:Landroidx/work/ExistingWorkPolicy;

    if-eq v7, v15, :cond_d

    sget-object v15, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v15, :cond_8

    goto :goto_8

    :cond_8
    sget-object v15, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v15, :cond_b

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp1/p;

    iget-object v15, v15, Lp1/p;->b:Landroidx/work/WorkInfo$State;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v15, v2, :cond_a

    sget-object v2, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v15, v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    :goto_6
    const/4 v1, 0x1

    const/4 v7, 0x0

    goto/16 :goto_16

    :cond_b
    new-instance v2, Lq1/c;

    const/4 v7, 0x0

    invoke-direct {v2, v5, v9, v7}, Lq1/c;-><init>(Landroidx/work/impl/d0;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lq1/d;->run()V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v2

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp1/p;

    iget-object v14, v14, Lp1/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lp1/s;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    move-object/from16 v18, v5

    move/from16 v17, v10

    const/4 v7, 0x1

    goto/16 :goto_10

    :cond_d
    :goto_8
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->c()Lp1/c;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp1/p;

    move-object/from16 v16, v14

    iget-object v14, v15, Lp1/p;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v10

    const-string v10, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-static {v5, v10}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v10

    if-nez v14, :cond_e

    invoke-virtual {v10, v5}, Landroidx/room/d0;->A(I)V

    goto :goto_a

    :cond_e
    invoke-virtual {v10, v5, v14}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_a
    iget-object v5, v2, Lp1/c;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/room/RoomDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v5, v2, Lp1/c;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/room/RoomDatabase;

    invoke-static {v5, v10}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v19, :cond_f

    const/4 v14, 0x1

    goto :goto_b

    :cond_f
    const/4 v14, 0x0

    :goto_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Landroidx/room/d0;->i()V

    if-nez v14, :cond_13

    sget-object v5, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    iget-object v10, v15, Lp1/p;->b:Landroidx/work/WorkInfo$State;

    if-ne v10, v5, :cond_10

    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    :goto_c
    and-int/2addr v5, v11

    sget-object v11, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_11

    const/4 v13, 0x1

    goto :goto_d

    :cond_11
    sget-object v11, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-ne v10, v11, :cond_12

    const/4 v12, 0x1

    :cond_12
    :goto_d
    iget-object v10, v15, Lp1/p;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v5

    :cond_13
    move-object/from16 v14, v16

    move/from16 v10, v17

    move-object/from16 v5, v18

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Landroidx/room/d0;->i()V

    throw v0

    :cond_14
    move-object/from16 v18, v5

    move/from16 v17, v10

    sget-object v2, Landroidx/work/ExistingWorkPolicy;->APPEND_OR_REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne v7, v2, :cond_17

    if-nez v12, :cond_15

    if-eqz v13, :cond_17

    :cond_15
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v2

    invoke-virtual {v2, v9}, Lp1/s;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp1/p;

    iget-object v7, v7, Lp1/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lp1/s;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_17
    invoke-interface {v8, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_18

    const/4 v8, 0x1

    goto :goto_f

    :cond_18
    const/4 v8, 0x0

    goto :goto_f

    :cond_19
    move-object/from16 v18, v5

    move/from16 v17, v10

    :goto_f
    const/4 v7, 0x0

    :goto_10
    iget-object v2, v0, Landroidx/work/impl/u;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/work/z;

    iget-object v10, v5, Landroidx/work/z;->b:Lp1/q;

    if-eqz v8, :cond_1c

    if-nez v11, :cond_1c

    if-eqz v13, :cond_1a

    sget-object v14, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    goto :goto_12

    :cond_1a
    if-eqz v12, :cond_1b

    sget-object v14, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    goto :goto_12

    :cond_1b
    sget-object v14, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    :goto_12
    iput-object v14, v10, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    goto :goto_13

    :cond_1c
    iput-wide v3, v10, Lp1/q;->n:J

    :goto_13
    iget-object v14, v10, Lp1/q;->b:Landroidx/work/WorkInfo$State;

    sget-object v15, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v14, v15, :cond_1d

    const/4 v7, 0x1

    :cond_1d
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object v14

    move-object/from16 v16, v2

    move-object/from16 v15, v18

    iget-object v2, v15, Landroidx/work/impl/d0;->t:Ljava/util/List;

    move-wide/from16 v18, v3

    const-string v3, "schedulers"

    invoke-static {v2, v3}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v14, Lp1/s;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_1
    iget-object v3, v14, Lp1/s;->b:Lp1/b;

    invoke-virtual {v3, v10}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    const-string v2, "id.toString()"

    iget-object v3, v5, Landroidx/work/z;->a:Ljava/util/UUID;

    if-eqz v8, :cond_1e

    array-length v4, v1

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v4, :cond_1e

    aget-object v14, v1, v10

    move-object/from16 v20, v1

    new-instance v1, Lp1/a;

    move/from16 v21, v4

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v4, v14}, Lp1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->c()Lp1/c;

    move-result-object v4

    iget-object v14, v4, Lp1/c;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/room/RoomDatabase;

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v14, v4, Lp1/c;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/room/RoomDatabase;

    invoke-virtual {v14}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_2
    iget-object v14, v4, Lp1/c;->c:Ljava/lang/Object;

    check-cast v14, Landroidx/room/g;

    invoke-virtual {v14, v1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object v1, v4, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, v4, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v20

    move/from16 v4, v21

    goto :goto_14

    :catchall_1
    move-exception v0

    iget-object v1, v4, Lp1/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0

    :cond_1e
    move-object/from16 v20, v1

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->i()Lp1/v;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/work/z;->c:Ljava/util/Set;

    invoke-virtual {v1, v4, v5}, Lp1/v;->k(Ljava/lang/String;Ljava/util/Set;)V

    if-eqz v17, :cond_1f

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->f()Lp1/l;

    move-result-object v1

    new-instance v4, Lp1/k;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v9, v3}, Lp1/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lp1/l;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v2, v1, Lp1/l;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_3
    iget-object v2, v1, Lp1/l;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/room/g;

    invoke-virtual {v2, v4}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object v2, v1, Lp1/l;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, v1, Lp1/l;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_15

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lp1/l;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0

    :cond_1f
    :goto_15
    move-object/from16 v2, v16

    move-wide/from16 v3, v18

    move-object/from16 v1, v20

    move-object/from16 v18, v15

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0

    :cond_20
    const/4 v1, 0x1

    :goto_16
    iput-boolean v1, v0, Landroidx/work/impl/u;->t:Z

    const/4 v0, 0x0

    or-int/2addr v0, v7

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lq1/e;->b:Landroidx/work/impl/m;

    iget-object p0, p0, Lq1/e;->a:Landroidx/work/impl/u;

    const-string v1, "WorkContinuation has cycles ("

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Landroidx/work/impl/u;->k:Landroidx/work/impl/d0;

    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v3}, Landroidx/work/impl/u;->R(Landroidx/work/impl/u;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v2, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p0}, Lq1/e;->a(Landroidx/work/impl/u;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz p0, :cond_0

    iget-object p0, v2, Landroidx/work/impl/d0;->p:Landroid/content/Context;

    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lq1/k;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object p0, v2, Landroidx/work/impl/d0;->q:Landroidx/work/b;

    iget-object v1, v2, Landroidx/work/impl/d0;->r:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v2, Landroidx/work/impl/d0;->t:Ljava/util/List;

    invoke-static {p0, v1, v2}, Landroidx/work/impl/s;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_0
    sget-object p0, Landroidx/work/u;->a:Landroidx/work/t;

    invoke-virtual {v0, p0}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    new-instance v1, Landroidx/work/r;

    invoke-direct {v1, p0}, Landroidx/work/r;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/m;->a(Lcom/fasterxml/jackson/annotation/i0;)V

    :goto_0
    return-void
.end method
