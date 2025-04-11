.class public Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;
.super Ljava/lang/Object;
.source "SdpDatabaseCache.java"


# instance fields
.field public final mCache:Ljava/util/HashMap;

.field public final mDatabaseHelper:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

.field public mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

.field public mDbWritable:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$smLogI(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$1;-><init>(Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;IFZ)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDatabaseHelper:Lcom/android/server/knox/dar/sdp/SdpDatabaseCache$DatabaseHelper;

    .line 50
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static LogD(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SdpDatabaseCache"

    .line 308
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SdpDatabaseCache"

    invoke-static {v0, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final cache(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 194
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 196
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Val : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroy(I)V
    .locals 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sdp_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "remove"

    .line 245
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 253
    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 254
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove - Val of key [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 247
    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    throw p1
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->getInternal(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move p3, p0

    :catch_0
    :cond_0
    return p3
.end method

.method public final getInternal(ILjava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->hitOrNull(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "sdp_info"

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "value"

    aput-object v6, v5, v1

    const-string/jumbo v6, "name=? AND user=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v1

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 143
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    move v1, v11

    :cond_1
    if-eqz v2, :cond_2

    .line 154
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "get"

    .line 152
    invoke-static {v4, v3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :goto_2
    if-eqz v2, :cond_4

    .line 154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_4
    throw p0
.end method

.method public final hitOrNull(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 183
    invoke-static {p1, p2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    monitor-enter p2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hit - [ Tag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->LogD(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit p2

    return-object p0

    .line 189
    :cond_0
    monitor-exit p2

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public preload(I)V
    .locals 11

    const/4 v0, 0x0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbReadable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "sdp_info"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "name"

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-string/jumbo v4, "value"

    const/4 v10, 0x1

    aput-object v4, v3, v10

    const-string/jumbo v4, "user=?"

    new-array v5, v10, [Ljava/lang/String;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 214
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "preload"

    .line 228
    invoke-static {p1, p0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 230
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_2
    throw p0
.end method

.method public putBoolean(ILjava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putInt(ILjava/lang/String;I)V
    .locals 0

    .line 59
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putInternal(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "sdp_info"

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    .line 76
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "value"

    .line 78
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 83
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "name=? AND user=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v2

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 83
    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    iget-object v3, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v2, v7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "put"

    .line 91
    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->cache(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 93
    :goto_1
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpDatabaseCache;->mDbWritable:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    throw p1

    :cond_2
    :goto_2
    return-void
.end method
