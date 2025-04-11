.class public Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final DATABASE_CREATE_E2EE_ALLOW_LIST:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS kmx_allow_pkg_table (id INTEGER PRIMARY KEY AUTOINCREMENT, allow_list TEXT) "

.field private static final DATABASE_CREATE_E2EE_ITEM:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS kmx_e2ee_table (id INTEGER PRIMARY KEY AUTOINCREMENT, fabric_id TEXT, fabric_key_id TEXT, sak_uid TEXT, device_key_id TEXT, sa_state INTEGER, service_key_id_list TEXT, allow_list TEXT) "

.field private static final DATABASE_CREATE_ESCROW_VAULT_TOKEN:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ev_token (id INTEGER PRIMARY KEY, token TEXT) "

.field private static final DATABASE_CREATE_ESCROW_VAULT_VERIFIER:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ev_verifier_info (id INTEGER PRIMARY KEY, verifier_info TEXT) "

.field static final DB_KMX:Ljava/lang/String; = "kmx_e2ee.db"

.field static final DB_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KMXService_KmxDBHelper"

.field private static sDBHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;


# instance fields
.field private IS_UPGRADED:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->IS_UPGRADED:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;
    .locals 4

    sget-object v0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->sDBHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "kmx_e2ee.db"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->sDBHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->sDBHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    return-object p0
.end method

.method private migrationAllowList(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string p0, "KMXService_KmxDBHelper"

    const-string v0, "INSERT INTO kmx_allow_pkg_table (allow_list) VALUES (\'"

    const-string v1, "Upgrade DB ! "

    const-string v2, "[Error DB migration] "

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM kmx_allow_pkg_table"

    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_1

    :try_start_1
    const-string p1, "Cursor is NULL"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v5, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    :try_start_3
    const-string v5, " SELECT allow_list FROM kmx_e2ee_table WHERE id=\'1\'"

    invoke-virtual {p1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    :try_start_4
    const-string v3, "allow_list"

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v5, :cond_6

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v5, v3

    :goto_2
    move-object v3, v4

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v3

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v5, v3

    :goto_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_5
    return-void

    :catchall_3
    move-exception p0

    :goto_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw p0
.end method


# virtual methods
.method public isUpgraded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->IS_UPGRADED:Z

    return p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS kmx_e2ee_table (id INTEGER PRIMARY KEY AUTOINCREMENT, fabric_id TEXT, fabric_key_id TEXT, sak_uid TEXT, device_key_id TEXT, sa_state INTEGER, service_key_id_list TEXT, allow_list TEXT) "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS kmx_allow_pkg_table (id INTEGER PRIMARY KEY AUTOINCREMENT, allow_list TEXT) "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS ev_verifier_info (id INTEGER PRIMARY KEY, verifier_info TEXT) "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS ev_token (id INTEGER PRIMARY KEY, token TEXT) "

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->IS_UPGRADED:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->migrationAllowList(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
