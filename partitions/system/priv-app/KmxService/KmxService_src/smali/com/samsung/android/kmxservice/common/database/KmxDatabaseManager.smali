.class public Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KmxService_DatabaseManager"

.field private static sDatabaseHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

.field private static sInstance:Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;
    .locals 3

    const-class v0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sInstance:Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "KmxDatabaseManageris not initialized, call initializeInstance first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initializeInstance(Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;)V
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sInstance:Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sInstance:Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;

    sput-object p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sDatabaseHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUpgraded()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sDatabaseHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;->isUpgraded()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const-string v0, "SQLiteException : "

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-object v2, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sDatabaseHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "KmxService_DatabaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->sDatabaseHelper:Lcom/samsung/android/kmxservice/common/database/KmxDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/database/KmxDatabaseManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
