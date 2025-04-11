.class public final Lcom/google/android/gms/measurement/internal/s2;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/h;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/h;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/measurement/internal/h;-><init>(Lcom/google/android/gms/measurement/internal/s2;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s2;->c:Lcom/google/android/gms/measurement/internal/h;

    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s2;->c:Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s2;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Reset local analytics data. records"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Error resetting local analytics data. error"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 11

    const-string v0, "Error deleting app launch break from local database"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb0/h;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "google_app_measurement_local.db"

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x5

    move v4, v2

    move v5, v3

    :goto_0
    if-ge v4, v3, :cond_5

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s2;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    if-nez v7, :cond_1

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    return-void

    :cond_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "messages"

    const-string v10, "type == ?"

    invoke-virtual {v7, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v8

    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    if-eqz v7, :cond_3

    goto :goto_1

    :catch_1
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v5, v5, 0x14

    if-eqz v7, :cond_3

    goto :goto_1

    :catch_2
    move-exception v8

    move-object v9, v1

    check-cast v9, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    :goto_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_4
    throw p0

    :cond_5
    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v0, "Error deleting app launch break from local database in reasonable time"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final r(I[B)Z
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v4, v1, Lb0/h;->a:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x5

    move v7, v2

    move v8, v6

    :goto_0
    if-ge v7, v6, :cond_d

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/s2;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v11, :cond_1

    :try_start_1
    iput-boolean v10, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    return v2

    :cond_1
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v11, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_2

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    const-wide/16 v13, 0x0

    :goto_1
    const-wide/32 v15, 0x186a0

    cmp-long v0, v13, v15

    const-string v6, "messages"

    if-ltz v0, :cond_4

    :try_start_3
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "Data loss, local db full"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    sub-long/2addr v15, v13

    const-wide/16 v13, 0x1

    add-long/2addr v15, v13

    new-array v0, v10, [Ljava/lang/String;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v2

    const-string v9, "rowid in (select rowid from messages order by rowid asc limit ?)"

    invoke-virtual {v11, v6, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v13, v0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_3

    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v9, "Different delete count than expected in local db. expected, received, difference"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    sub-long/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v9, v2, v10, v13}, Lcom/google/android/gms/measurement/internal/v2;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move-object v2, v9

    :goto_2
    invoke-virtual {v11, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v1, 0x1

    return v1

    :goto_3
    move-object v9, v12

    goto/16 :goto_d

    :goto_4
    move-object v9, v11

    move-object v2, v12

    goto :goto_7

    :catch_2
    move-object v9, v12

    goto :goto_8

    :goto_5
    move-object v9, v12

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v9

    :goto_6
    move-object v9, v2

    goto/16 :goto_d

    :catch_3
    move-exception v0

    move-object v2, v9

    move-object v9, v11

    goto :goto_7

    :catch_4
    move-object v2, v9

    move-object v9, v2

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v9

    move-object v9, v2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v9

    move-object v9, v2

    move-object v11, v9

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object v2, v9

    move-object v9, v2

    :goto_7
    if-eqz v9, :cond_6

    :try_start_4
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v10, "Error writing entry to local database"

    invoke-virtual {v6, v0, v10}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v9, :cond_a

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_7
    move-object v2, v9

    move-object v9, v2

    move-object v11, v9

    :goto_8
    int-to-long v12, v8

    :try_start_5
    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    add-int/lit8 v8, v8, 0x14

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v2, v9

    move-object v9, v2

    move-object v11, v9

    :goto_9
    :try_start_6
    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v6, "Error writing entry; local database full"

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v11, :cond_a

    move-object v9, v11

    :goto_a
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_a
    :goto_b
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x5

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v2, v9

    move-object v9, v11

    :goto_c
    move-object v11, v9

    goto :goto_6

    :goto_d
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_c
    throw v0

    :cond_d
    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Failed to write entry to local database"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
