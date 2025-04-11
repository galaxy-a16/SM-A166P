.class public Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALREADY_EXISTED:J = -0x2L

.field private static final INVALID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "KmxService_KmxDBAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->initializeInstance(Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;)V

    return-void
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->getInstance()Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->closeDatabase()V

    :cond_0
    return-void
.end method

.method private open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->getInstance()Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KmxService_KmxDBAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->getInstance()Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public deleteCredentialInfo(Ljava/lang/String;)I
    .locals 6

    const-string v0, "[deleteCredentialInfo] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "service_name=?"

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "ev_credential_info"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-virtual {v1, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v3

    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public deleteToken()I
    .locals 5

    const-string v0, "[deleteToken] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    const-string v2, "ev_token"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public deleteVerifierInfo()I
    .locals 5

    const-string v0, "[deleteVerifierInfo] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    const-string v2, "ev_verifier_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public getAllowList()Ljava/lang/String;
    .locals 13

    const-string v0, "allow_list"

    const-string v1, "[allow_list Value] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_0
    const-string v3, "kmx_allow_pkg_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v12

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v12

    :goto_1
    :try_start_2
    const-string v3, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v12

    :catchall_1
    move-exception v0

    move-object v12, v2

    :goto_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public getFabricId()Ljava/lang/String;
    .locals 12

    const-string v0, "[getFabricId] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_0
    const-string v2, "kmx_e2ee_table"

    const-string v3, "id"

    const-string v4, "fabric_id"

    const-string v5, "fabric_key_id"

    const-string v6, "sak_uid"

    const-string v7, "device_key_id"

    const-string v8, "allow_list"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v10}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v11

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v11

    :goto_1
    :try_start_2
    const-string v3, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v10}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v11

    :catchall_1
    move-exception v0

    move-object v11, v1

    :goto_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v10}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public getFabricKeyId()Ljava/lang/String;
    .locals 12

    const-string v0, "fabric_key_id"

    const-string v1, "[getFabricKeyId] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    :try_start_0
    const-string v3, "kmx_e2ee_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_1
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_5
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :goto_2
    const/4 p0, 0x0

    return-object p0

    :goto_3
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "fabric_id=\'"

    const-string v1, "["

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_0
    const-string v3, "kmx_e2ee_table"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v12

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v12

    :goto_1
    :try_start_2
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Value] "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v12

    :catchall_1
    move-exception p2

    move-object v12, p1

    :goto_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p2
.end method

.method public insertCredentialInfo(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    const-string v0, "[insertCredentialInfo]"

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "service_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "credential_info"

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ev_credential_info"

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "KmxService_KmxDBAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public insertDeviceId(Ljava/lang/String;)J
    .locals 14

    const-string v0, "sak_uid"

    const-string v1, ""

    const-string v2, "fabric_id=\'"

    const-string v3, "[insertDeviceId]"

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    :try_start_0
    const-string v5, "kmx_e2ee_table"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "fabric_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "fabric_key_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_key_id"

    invoke-virtual {v4, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sa_state"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "service_key_id_list"

    invoke-virtual {v4, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "allow_list"

    invoke-virtual {v4, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "kmx_e2ee_table"

    invoke-virtual {v12, p1, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v13, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v13, v2

    goto :goto_1

    :cond_0
    const-wide/16 v0, -0x2

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0, v12}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string v0, "KmxService_KmxDBAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v12}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 v0, -0x1

    :goto_2
    return-wide v0

    :goto_3
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, v12}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public insertFabricId(Ljava/lang/String;)J
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "fabric_id"

    const-string v3, "KmxService_KmxDBAdapter"

    const-string v4, ""

    const-string v5, "fabric_id=\'"

    const-string v6, "[insertFabricId]"

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const/4 v14, 0x0

    const-wide/16 v16, -0x1

    :try_start_0
    const-string v8, "kmx_e2ee_table"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    move-object v7, v15

    move-object/from16 v18, v6

    move-object v6, v14

    move-object v14, v5

    :try_start_1
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ge v5, v7, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fabric_key_id"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sak_uid"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_key_id"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sa_state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "service_key_id_list"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allow_list"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kmx_e2ee_table"

    invoke-virtual {v15, v0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-string v0, "DB working well..."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide/16 v16, -0x2

    :goto_0
    if-eqz v14, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v14, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v14, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v14

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    move-object v6, v14

    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_1

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {v1, v15}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v16

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {v1, v15}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public insertToken([B)J
    .locals 5

    const-string v0, "[insertToken]"

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "token"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "ev_token"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public insertVerifierInfo(Ljava/lang/String;)J
    .locals 5

    const-string v0, "[insertVerifierInfo]"

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "verifier_info"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ev_verifier_info"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public isUpgraded()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->getInstance()Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->isUpgraded()Z

    move-result p0

    return p0
.end method

.method public queryCredentialInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "credential_info"

    const-string v1, "[queryCredentialInfo] "

    const-string v2, ""

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v6, "service_name=?"

    :try_start_0
    const-string v4, "ev_credential_info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_2
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v2

    :goto_3
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public queryToken()[B
    .locals 12

    const-string v0, "token"

    const-string v1, "[queryToken] "

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_0
    const-string v3, "ev_token"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :goto_2
    invoke-direct {p0, v10}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "KmxService_KmxDBAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :goto_3
    return-object v11

    :goto_4
    invoke-direct {p0, v10}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public queryVerifierInfo()Ljava/lang/String;
    .locals 12

    const-string v0, "verifier_info"

    const-string v1, "[queryVerifierInfo] "

    const-string v2, ""

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    :try_start_0
    const-string v4, "ev_verifier_info"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :goto_2
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_4
    const-string v3, "KmxService_KmxDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :goto_3
    return-object v2

    :goto_4
    invoke-direct {p0, v11}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public recoverFabricKeyId(Ljava/lang/String;Ljava/lang/String;)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "fabric_id"

    const-string v3, "KmxService_KmxDBAdapter"

    const-string v4, "fabric_id=\'"

    const-string v5, "[insertFabricId]"

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    :try_start_0
    const-string v7, "kmx_e2ee_table"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v14

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fabric_key_id"

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    const-string v7, "kmx_e2ee_table"

    if-ge v0, v2, :cond_0

    :try_start_2
    invoke-virtual {v14, v7, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-string v0, "[recoverFabricKeyId] insert"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v7, v6, v15, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v6, v0

    :try_start_3
    const-string v0, "[recoverFabricKeyId] update"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v16, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v15, v4

    move-wide/from16 v16, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v15, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v4

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    invoke-direct {v1, v14}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v16

    :goto_3
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {v1, v14}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public removeAll()V
    .locals 11

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "kmx_e2ee_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "kmx_e2ee_table"

    invoke-virtual {v9, v1, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v10, v0

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v10, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    invoke-direct {p0, v9}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :goto_2
    :try_start_2
    const-string v0, "KmxService_KmxDBAdapter"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0, v9}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method public updateAllowList(Ljava/lang/String;)J
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "KmxService_KmxDBAdapter"

    const-string v3, "allow_list updateAllowList success..."

    const-string v4, "[updateItem]allow_list "

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    :try_start_0
    const-string v6, "kmx_allow_pkg_table"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, v14

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ltz v6, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "kmx_allow_pkg_table"

    const-string v8, "allow_list"

    if-nez v6, :cond_0

    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    const-string v0, "AllowList DB working well..."

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v6, v15, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v6, v0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v16, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v15, v5

    move-wide/from16 v16, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v15, v5

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v15, v5

    goto :goto_3

    :cond_1
    :try_start_4
    const-string v0, "Can not update allowlist item"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    invoke-direct {v1, v14}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_4
    return-wide v16

    :goto_5
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {v1, v14}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public updateItem(Ljava/lang/String;ILcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J
    .locals 20

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\'"

    const-string v3, "KmxService_KmxDBAdapter"

    const-string v4, "fabric_id=\'"

    const-string v5, "Can not update item :"

    const-string v6, "[updateItem]"

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const/4 v14, 0x0

    const-wide/16 v16, -0x1

    :try_start_0
    const-string v8, "kmx_e2ee_table"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v9, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->getFabricId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v7, v15

    move-object/from16 v14, v18

    move-object/from16 v18, v6

    move-object v6, v15

    move-object/from16 v15, v19

    :try_start_1
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_0

    :try_start_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "kmx_e2ee_table"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->getFabricId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    move-wide/from16 v16, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v14, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    move-object v14, v4

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    move-object v14, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v14

    move-object v6, v15

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    move-object v4, v14

    move-object v6, v15

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_1

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {v1, v6}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v16

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {v1, v6}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method public updateItem(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;)J
    .locals 20

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "\'"

    const-string v4, "KmxService_KmxDBAdapter"

    const-string v5, "fabric_id=\'"

    const-string v6, "[updateItem]"

    const-string v7, "allow_list"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->updateAllowList(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const/4 v14, 0x0

    const-wide/16 v16, -0x1

    :try_start_0
    const-string v8, "kmx_e2ee_table"

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v9, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->getFabricId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v7, v15

    move-object/from16 v14, v18

    move-object/from16 v18, v6

    move-object v6, v15

    move-object/from16 v15, v19

    :try_start_1
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_1

    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kmx_e2ee_table"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->getFabricId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v6, v0, v7, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    int-to-long v7, v0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Update success..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v16, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide/from16 v16, v7

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_4
    const-string v0, "Can not update item"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    if-eqz v14, :cond_2

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    move-object v14, v5

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    move-object v14, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v14

    move-object v6, v15

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v5, v14

    move-object v6, v15

    :goto_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v14, :cond_2

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {v1, v6}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-wide v16

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {v1, v6}, Lcom/samsung/android/kmxservice/common/database/KmxDBAdapter;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method
