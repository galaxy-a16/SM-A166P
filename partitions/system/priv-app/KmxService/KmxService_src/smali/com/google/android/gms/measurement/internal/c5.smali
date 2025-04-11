.class public final Lcom/google/android/gms/measurement/internal/c5;
.super Lcom/google/android/gms/measurement/internal/g3;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/measurement/internal/b5;

.field public d:Lcom/google/android/gms/measurement/internal/q2;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lcom/google/android/gms/measurement/internal/y4;

.field public final g:Landroidx/recyclerview/widget/c;

.field public final h:Ljava/util/ArrayList;

.field public final i:Lcom/google/android/gms/measurement/internal/y4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/t3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/g3;-><init>(Lcom/google/android/gms/measurement/internal/t3;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Ljava/util/ArrayList;

    new-instance v0, Landroidx/recyclerview/widget/c;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/c;-><init>(Lg3/a;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->g:Landroidx/recyclerview/widget/c;

    new-instance v0, Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/b5;-><init>(Lcom/google/android/gms/measurement/internal/c5;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    new-instance v0, Lcom/google/android/gms/measurement/internal/y4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/y4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/b4;I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->f:Lcom/google/android/gms/measurement/internal/y4;

    new-instance v0, Lcom/google/android/gms/measurement/internal/y4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/measurement/internal/y4;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/b4;I)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->i:Lcom/google/android/gms/measurement/internal/y4;

    return-void
.end method

.method public static y(Lcom/google/android/gms/measurement/internal/c5;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Disconnected from device MeasurementService"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->z()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1}, Lc3/e;->s()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1}, Lc3/e;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v1}, Lc3/e;->disconnect()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    :try_start_0
    invoke-static {}, Lf3/a;->b()Lf3/a;

    move-result-object v0

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0, v2, v3}, Lf3/a;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    return-void
.end method

.method public final B(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v0

    new-instance v1, La0/a;

    const/16 v2, 0xe

    invoke-direct {v1, p0, p1, v0, v2}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/q2;Ld3/a;Lcom/google/android/gms/measurement/internal/w5;)V
    .locals 28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x64

    const/4 v6, 0x0

    move v0, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x3e9

    if-ge v7, v8, :cond_1d

    if-ne v0, v5, :cond_1d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v9

    const-string v10, "rowid"

    const-string v11, "Error reading entries from local database"

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-boolean v0, v9, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v9, Lb0/h;->a:Ljava/lang/Object;

    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v15, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "google_app_measurement_local.db"

    invoke-virtual {v15, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v15, 0x5

    move v12, v6

    move/from16 v16, v15

    :goto_1
    if-ge v12, v15, :cond_15

    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s2;->o()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1a
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v5, :cond_1

    :try_start_1
    iput-boolean v15, v9, Lcom/google/android/gms/measurement/internal/s2;->d:Z

    :goto_2
    move/from16 v18, v7

    goto/16 :goto_22

    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v18, "messages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "rowid desc"

    const-string v25, "1"

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v26, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    goto/16 :goto_15

    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-wide/from16 v17, v26

    :goto_4
    cmp-long v0, v17, v26

    if-eqz v0, :cond_3

    const-string v0, "rowid<?"
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_17
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/4 v15, 0x1

    :try_start_5
    new-array v6, v15, [Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/16 v17, 0x0

    :try_start_6
    aput-object v15, v6, v17
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    goto :goto_6

    :goto_5
    move/from16 v18, v7

    move-object/from16 v17, v10

    const/4 v10, 0x0

    goto/16 :goto_18

    :catch_0
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    goto/16 :goto_16

    :cond_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_6
    :try_start_7
    const-string v0, "type"

    const-string v6, "entry"

    filled-new-array {v10, v0, v6}, [Ljava/lang/String;

    move-result-object v19

    const-string v18, "messages"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "rowid asc"

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_14
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_7
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    if-eqz v0, :cond_9

    const/4 v15, 0x0

    :try_start_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const/4 v15, 0x1

    :try_start_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const/4 v15, 0x2

    move-object/from16 v17, v10

    :try_start_b
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    array-length v0, v10
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move/from16 v18, v7

    const/4 v7, 0x0

    :try_start_d
    invoke-virtual {v15, v10, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/o;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/o;
    :try_end_d
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v0, :cond_8

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move/from16 v18, v7

    goto :goto_8

    :catch_1
    move/from16 v18, v7

    :catch_2
    :try_start_f
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Failed to load event from local database"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_f

    :goto_8
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_4
    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    array-length v0, v10

    const/4 v15, 0x0

    invoke-virtual {v7, v10, v15, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/r5;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/r5;
    :try_end_11
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_3
    :try_start_13
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v10, "Failed to load user property from local database"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_8

    goto :goto_c

    :goto_a
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_5
    if-ne v0, v15, :cond_6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :try_start_15
    array-length v0, v10

    const/4 v15, 0x0

    invoke-virtual {v7, v10, v15, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/measurement/internal/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/c;
    :try_end_15
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_4
    :try_start_17
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v10, "Failed to load conditional user property from local database"

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_8

    :goto_c
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :goto_d
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_7

    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Skipping app launch break"

    goto :goto_e

    :cond_7
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Unknown record type in local database"

    :goto_e
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_8
    :goto_f
    move-object/from16 v10, v17

    move/from16 v7, v18

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move/from16 v18, v7

    goto :goto_11

    :catch_6
    move/from16 v18, v7

    goto :goto_12

    :catch_7
    move-exception v0

    move/from16 v18, v7

    :goto_10
    const/4 v10, 0x0

    goto/16 :goto_14

    :goto_11
    const/4 v10, 0x0

    goto/16 :goto_19

    :catch_8
    :goto_12
    const/4 v10, 0x0

    goto :goto_13

    :catch_9
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    goto :goto_14

    :cond_9
    move/from16 v18, v7

    move-object/from16 v17, v10

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    const/4 v10, 0x0

    :try_start_19
    aput-object v7, v0, v10

    const-string v7, "messages"

    const-string v15, "rowid <= ?"

    invoke-virtual {v5, v7, v15, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v7, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_19} :catch_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto/16 :goto_23

    :catch_a
    move-exception v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto :goto_14

    :catch_c
    move-exception v0

    goto :goto_11

    :catch_d
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    goto :goto_11

    :catch_f
    move/from16 v18, v7

    move-object/from16 v17, v10

    goto :goto_12

    :catch_10
    :goto_13
    move-object v7, v11

    move/from16 v15, v16

    goto/16 :goto_1b

    :catch_11
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    goto :goto_10

    :goto_14
    move-object v7, v11

    move/from16 v15, v16

    goto/16 :goto_1d

    :catch_12
    move-exception v0

    goto/16 :goto_5

    :catch_13
    move/from16 v18, v7

    move-object/from16 v17, v10

    const/4 v10, 0x0

    goto/16 :goto_1a

    :catch_14
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    const/4 v10, 0x0

    goto :goto_16

    :catch_15
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    goto :goto_18

    :catch_16
    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    goto/16 :goto_1a

    :catch_17
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    goto :goto_16

    :catchall_4
    move-exception v0

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    const/4 v15, 0x0

    :goto_15
    if-eqz v15, :cond_b

    :try_start_1a
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_18
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catch_18
    move-exception v0

    goto :goto_18

    :catch_19
    move-exception v0

    goto :goto_16

    :catchall_6
    move-exception v0

    goto :goto_17

    :goto_16
    move-object v7, v11

    move/from16 v15, v16

    goto :goto_1c

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    :goto_17
    const/4 v12, 0x0

    goto/16 :goto_21

    :catch_1a
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    const/4 v5, 0x0

    :goto_18
    const/4 v6, 0x0

    :goto_19
    if-eqz v5, :cond_c

    :try_start_1b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    move-object v7, v14

    check-cast v7, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    iput-boolean v7, v9, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v7, v11

    if-eqz v5, :cond_e

    goto :goto_1e

    :cond_e
    move/from16 v15, v16

    goto :goto_1f

    :catch_1b
    move/from16 v18, v7

    move-object/from16 v17, v10

    move v10, v6

    const/4 v5, 0x0

    :catch_1c
    :goto_1a
    move-object v7, v11

    move/from16 v15, v16

    const/4 v6, 0x0

    :goto_1b
    int-to-long v10, v15

    :try_start_1c
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    add-int/lit8 v16, v15, 0x14

    if-eqz v6, :cond_f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v5, :cond_12

    goto :goto_1e

    :catch_1d
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v17, v10

    move-object v7, v11

    move/from16 v15, v16

    const/4 v5, 0x0

    :goto_1c
    const/4 v6, 0x0

    :goto_1d
    :try_start_1d
    move-object v10, v14

    check-cast v10, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v10, v0, v7}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/google/android/gms/measurement/internal/s2;->d:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    if-eqz v6, :cond_10

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v5, :cond_11

    move/from16 v16, v15

    :goto_1e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_20

    :cond_11
    :goto_1f
    move/from16 v16, v15

    :cond_12
    :goto_20
    add-int/lit8 v12, v12, 0x1

    move-object v11, v7

    move-object/from16 v10, v17

    move/from16 v7, v18

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v15, 0x5

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object v12, v6

    :goto_21
    if-eqz v12, :cond_13

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_14
    throw v0

    :cond_15
    move/from16 v18, v7

    check-cast v14, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v14, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Failed to read events from database in reasonable time"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_22
    const/4 v12, 0x0

    goto :goto_24

    :cond_16
    move/from16 v18, v7

    :goto_23
    move-object v12, v13

    :goto_24
    if-eqz v12, :cond_17

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    goto :goto_25

    :cond_17
    const/4 v5, 0x0

    :goto_25
    const/16 v6, 0x64

    if-eqz v2, :cond_18

    if-ge v5, v6, :cond_18

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_26
    if-ge v9, v7, :cond_1c

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/a;

    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/o;

    if-eqz v10, :cond_19

    :try_start_1e
    check-cast v0, Lcom/google/android/gms/measurement/internal/o;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/q2;->u(Lcom/google/android/gms/measurement/internal/o;Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_28

    :catch_1e
    move-exception v0

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v11, "Failed to send event to the service"

    goto :goto_27

    :cond_19
    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/r5;

    if-eqz v10, :cond_1a

    :try_start_1f
    check-cast v0, Lcom/google/android/gms/measurement/internal/r5;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/q2;->f(Lcom/google/android/gms/measurement/internal/r5;Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception v0

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v11, "Failed to send user property to the service"

    goto :goto_27

    :cond_1a
    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/c;

    if-eqz v10, :cond_1b

    :try_start_20
    check-cast v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/measurement/internal/q2;->r(Lcom/google/android/gms/measurement/internal/c;Lcom/google/android/gms/measurement/internal/w5;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_28

    :catch_20
    move-exception v0

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v11, "Failed to send conditional user property to the service"

    :goto_27
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v10, v0, v11}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_28

    :cond_1b
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v10, "Discarding data. Unrecognized parcel type."

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_1c
    add-int/lit8 v7, v18, 0x1

    move v0, v5

    move v5, v6

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method public final p(Lcom/google/android/gms/measurement/internal/c;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->q()Lcom/google/android/gms/measurement/internal/s2;

    move-result-object v0

    iget-object v1, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/u5;->a0(Landroid/os/Parcelable;)[B

    move-result-object v2

    array-length v3, v2

    const/high16 v4, 0x20000

    if-le v3, v4, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->g:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/s2;->r(I[B)Z

    move-result v0

    :goto_0
    move v4, v0

    new-instance v5, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/c;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v3

    new-instance v0, Lz2/f;

    const/4 v7, 0x4

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lz2/f;-><init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/w5;ZLd3/a;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u5;->k0()I

    move-result p0

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->e0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final s()Z
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget v4, v4, Lcom/google/android/gms/measurement/internal/r2;->k:I

    if-ne v4, v1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Checking service availability"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, La3/f;->b:La3/f;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const v6, 0xbdfcb8

    invoke-virtual {v5, v4, v6}, La3/f;->b(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Unexpected service status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Service updating"

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Service invalid"

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Service disabled"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_2
    move v1, v3

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->m:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Service container out of date"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/u5;->k0()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_7

    goto :goto_6

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Service missing"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v3, "Service available"

    :goto_4
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_5
    move v3, v1

    :goto_6
    if-nez v3, :cond_b

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->w()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_7
    move v1, v3

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final t(Z)Lcom/google/android/gms/measurement/internal/w5;
    .locals 33

    move-object/from16 v0, p0

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t3;->p()Lcom/google/android/gms/measurement/internal/r2;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/i3;->d:Lcom/google/android/gms/measurement/internal/h3;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/i3;->d:Lcom/google/android/gms/measurement/internal/h3;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/h3;->e:Lcom/google/android/gms/measurement/internal/b4;

    check-cast v5, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v5}, Lb0/h;->k()V

    invoke-virtual {v5}, Lb0/h;->k()V

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/h3;->e:Lcom/google/android/gms/measurement/internal/b4;

    check-cast v6, Lcom/google/android/gms/measurement/internal/i3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/h3;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h3;->b()V

    move-wide v6, v2

    goto :goto_0

    :cond_1
    iget-object v8, v5, Lb0/h;->a:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    :goto_0
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/h3;->a:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h3;->b()V

    :goto_1
    move-object v0, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/h3;->d:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/h3;->c:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h3;->b()V

    if-eqz v6, :cond_5

    cmp-long v0, v7, v2

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v0, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/i3;->z:Landroid/util/Pair;

    :goto_3
    if-eqz v0, :cond_7

    sget-object v5, Lcom/google/android/gms/measurement/internal/i3;->z:Landroid/util/Pair;

    if-ne v0, v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, ":"

    invoke-static {v4, v5, v0}, Landroidx/activity/b;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_4
    move-object/from16 v16, v4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    new-instance v4, Lcom/google/android/gms/measurement/internal/w5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/r2;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/r2;->e:I

    int-to-long v9, v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/r2;->f:Ljava/lang/String;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/r2;->f:Ljava/lang/String;

    iget-object v5, v1, Lb0/h;->a:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->o()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/r2;->g:J

    cmp-long v0, v13, v2

    iget-object v3, v12, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    if-nez v0, :cond_b

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lb0/h;->k()V

    invoke-static {v13}, Lva/n;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {}, Lcom/google/android/gms/measurement/internal/u5;->s()Ljava/security/MessageDigest;

    move-result-object v15

    iget-object v2, v3, Lb0/h;->a:Ljava/lang/Object;

    if-nez v15, :cond_8

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Could not get MD5 instance"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eqz v14, :cond_a

    :try_start_0
    invoke-virtual {v3, v0, v13}, Lcom/google/android/gms/measurement/internal/u5;->V(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {v0}, Lh3/b;->a(Landroid/content/Context;)Ld/s0;

    move-result-object v0

    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x40

    invoke-virtual {v0, v14, v13}, Ld/s0;->q(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_9

    array-length v13, v0

    if-lez v13, :cond_9

    const/4 v13, 0x0

    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/u5;->l0([B)J

    move-result-wide v13

    goto :goto_6

    :cond_9
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const-string v13, "Could not get signatures"

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    const-wide/16 v13, -0x1

    goto :goto_6

    :catch_0
    move-exception v0

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v13, "Package name not found"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v2, v0, v13}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    const-wide/16 v13, 0x0

    :goto_6
    iput-wide v13, v1, Lcom/google/android/gms/measurement/internal/r2;->g:J

    :cond_b
    move-wide v14, v13

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v17

    iget-object v0, v12, Lcom/google/android/gms/measurement/internal/t3;->h:Lcom/google/android/gms/measurement/internal/i3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/i3;->p:Z

    xor-int/lit8 v18, v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/t3;->g()Z

    move-result v2

    iget-object v13, v12, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    if-nez v2, :cond_c

    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    move-wide/from16 p0, v14

    goto/16 :goto_a

    :cond_c
    sget-object v2, Lcom/google/android/gms/internal/measurement/c8;->b:Lcom/google/android/gms/internal/measurement/c8;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/c8;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/d8;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/measurement/internal/o2;->a0:Lcom/google/android/gms/measurement/internal/n2;

    move-wide/from16 p0, v14

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v2

    iget-object v14, v12, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    if-eqz v2, :cond_d

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Disabled IID for tests."

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :catch_1
    :goto_7
    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    goto :goto_a

    :cond_d
    :try_start_1
    move-object v2, v5

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v15, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v2, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    const/4 v15, 0x1

    :try_start_2
    new-array v15, v15, [Ljava/lang/Class;

    const-class v19, Landroid/content/Context;

    const/16 v20, 0x0

    aput-object v19, v15, v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v19, v11

    :try_start_3
    const-string v11, "getInstance"

    invoke-virtual {v2, v11, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-wide/from16 v20, v9

    const/4 v9, 0x0

    :try_start_4
    aput-object v5, v15, v9

    const/4 v5, 0x0

    invoke-virtual {v11, v5, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    :try_start_5
    const-string v10, "getFirebaseInstanceId"

    new-array v11, v9, [Ljava/lang/Class;

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    :catch_2
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Failed to retrieve Firebase Instance Id"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/x2;->k:Lcom/google/android/gms/measurement/internal/v2;

    goto :goto_9

    :catch_3
    move-wide/from16 v20, v9

    goto :goto_8

    :catch_4
    move-wide/from16 v20, v9

    move-object/from16 v19, v11

    :catch_5
    :goto_8
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v2, "Failed to obtain Firebase Analytics instance"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/x2;->j:Lcom/google/android/gms/measurement/internal/v2;

    :goto_9
    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :goto_a
    const/4 v2, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/i3;->e:Lcom/google/android/gms/measurement/internal/f3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f3;->a()J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v5, v9, v14

    iget-wide v14, v12, Lcom/google/android/gms/measurement/internal/t3;->L:J

    if-nez v5, :cond_10

    move-wide/from16 v22, v14

    goto :goto_c

    :cond_10
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide/from16 v22, v9

    :goto_c
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget v14, v1, Lcom/google/android/gms/measurement/internal/r2;->k:I

    const-string v5, "google_analytics_adid_collection_enabled"

    invoke-virtual {v13, v5}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v5, 0x1

    :goto_e
    move/from16 v24, v5

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lb0/h;->k()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->o()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v9, "deferred_analytics_collection"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/r2;->m:Ljava/lang/String;

    const-string v5, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v13, v5}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    goto :goto_f

    :cond_13
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_f
    move-object/from16 v26, v5

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/r2;->h:J

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/r2;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->e()Ljava/lang/String;

    move-result-object v30

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/r2;->j:Ljava/lang/String;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->u0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v5, 0x0

    invoke-virtual {v13, v5, v0}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u5;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_14
    const-string v0, ""

    :goto_10
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/r2;->j:Ljava/lang/String;

    :cond_15
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/r2;->j:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v7;->a()V

    sget-object v3, Lcom/google/android/gms/measurement/internal/o2;->p0:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v5, 0x0

    invoke-virtual {v13, v5, v3}, Lcom/google/android/gms/measurement/internal/e;->s(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/n2;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    move-wide/from16 v27, v9

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/r2;->p:J

    const-wide/16 v31, 0x0

    cmp-long v3, v9, v31

    if-nez v3, :cond_16

    goto :goto_11

    :cond_16
    iget-object v3, v12, Lcom/google/android/gms/measurement/internal/t3;->n:Lc3/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/r2;->p:J

    sub-long/2addr v9, v12

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/r2;->n:Ljava/lang/String;

    if-eqz v3, :cond_17

    const-wide/32 v12, 0x5265c00

    cmp-long v3, v9, v12

    if-lez v3, :cond_17

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/r2;->q:Ljava/lang/String;

    if-nez v3, :cond_17

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    :cond_17
    :goto_11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/r2;->n:Ljava/lang/String;

    if-nez v3, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r2;->r()V

    :cond_18
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/r2;->n:Ljava/lang/String;

    move-object/from16 v32, v1

    goto :goto_12

    :cond_19
    move-wide/from16 v27, v9

    move-object/from16 v32, v5

    :goto_12
    const-wide/32 v12, 0x11d28

    move-object v5, v4

    move-wide/from16 v9, v20

    move-object v1, v11

    move-object/from16 v11, v19

    move v3, v14

    move-object/from16 v29, v15

    move-wide/from16 v14, p0

    move-object/from16 v19, v2

    move-wide/from16 v20, v22

    move/from16 v22, v3

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v29

    move-object/from16 v29, v1

    move-object/from16 v31, v0

    invoke-direct/range {v5 .. v32}, Lcom/google/android/gms/measurement/internal/w5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final u()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v4, "Processing queued up service tasks"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string v5, "Task exception while flushing queue"

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->i:Lcom/google/android/gms/measurement/internal/y4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/j;->a()V

    return-void
.end method

.method public final v()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->g:Landroidx/recyclerview/widget/c;

    iget-object v1, v0, Landroidx/recyclerview/widget/c;->c:Ljava/lang/Object;

    check-cast v1, Lg3/a;

    check-cast v1, Lc3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/recyclerview/widget/c;->b:J

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/measurement/internal/o2;->J:Lcom/google/android/gms/measurement/internal/n2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n2;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->f:Lcom/google/android/gms/measurement/internal/y4;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/j;->c(J)V

    return-void
.end method

.method public final w(Ljava/lang/Runnable;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    const-string p1, "Discarding data. Max runnable queue size reached"

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/c5;->i:Lcom/google/android/gms/measurement/internal/y4;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/j;->c(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->z()V

    return-void
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final z()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->w()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    invoke-static {}, Lf3/a;->b()Lf3/a;

    move-result-object v3

    monitor-enter v2

    :try_start_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    if-eqz v4, :cond_1

    iget-object p0, v2, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v4, v4, Lb0/h;->a:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v5, "Using local app measurement service"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iput-boolean v1, v2, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    const/16 v4, 0x81

    invoke-virtual {v3, p0, v0, v1, v4}, Lf3/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    const-string v0, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Connection attempt already in progress"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v2}, Lc3/e;->t()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v2}, Lc3/e;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v1, "Already awaiting connection attempt"

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/google/android/gms/measurement/internal/u2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v0, v3, p0, p0}, Lcom/google/android/gms/measurement/internal/u2;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/measurement/internal/b5;Lcom/google/android/gms/measurement/internal/b5;)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object v0, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->i:Lcom/google/android/gms/measurement/internal/x2;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->k(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x2;->n:Lcom/google/android/gms/measurement/internal/v2;

    const-string v2, "Connecting to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/b5;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-static {v0}, Lva/n;->i(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->b:Lcom/google/android/gms/measurement/internal/u2;

    invoke-virtual {v0}, Lc3/e;->h()V

    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
