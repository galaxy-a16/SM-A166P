.class public final Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;
.super Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;
.source "SourceFile"


# instance fields
.field public volatile c:Lva/c;

.field public volatile d:Lva/j;

.field public volatile e:Lva/m;

.field public volatile f:Lva/f;

.field public volatile g:Lva/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic j(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic n(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic o(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic p(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;Landroidx/sqlite/db/framework/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:La1/b;

    return-void
.end method

.method public static synthetic q(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic r(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final c()Lva/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->c:Lva/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->c:Lva/c;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->c:Lva/c;

    if-nez v0, :cond_1

    new-instance v0, Lva/c;

    invoke-direct {v0, p0}, Lva/c;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->c:Lva/c;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->c:Lva/c;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()La1/f;

    move-result-object v2

    check-cast v2, Landroidx/sqlite/db/framework/f;

    invoke-virtual {v2}, Landroidx/sqlite/db/framework/f;->a()La1/b;

    move-result-object v2

    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `block`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `seal`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `state`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `node`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `tree_node`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `empty_index`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, La1/b;->r0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, La1/b;->K()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v2, v0}, La1/b;->q(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    invoke-interface {v2, v1}, La1/b;->r0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, La1/b;->K()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {v2, v0}, La1/b;->q(Ljava/lang/String;)V

    :cond_1
    throw v3
.end method

.method public final createInvalidationTracker()Landroidx/room/n;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/n;

    const-string v3, "block"

    const-string v4, "seal"

    const-string v5, "state"

    const-string v6, "node"

    const-string v7, "tree_node"

    const-string v8, "empty_index"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/n;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(Landroidx/room/f;)La1/f;
    .locals 6

    new-instance v3, Landroidx/room/c0;

    new-instance v0, Landroidx/work/impl/b0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/work/impl/b0;-><init>(Landroidx/room/RoomDatabase;II)V

    const-string p0, "a1541ab559c83dad9106c1f93b2e90c1"

    const-string v1, "08a0238f771931288d4e9da9b7568235"

    invoke-direct {v3, p1, v0, p0, v1}, Landroidx/room/c0;-><init>(Landroidx/room/f;Landroidx/room/a0;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/room/f;->a:Landroid/content/Context;

    const-string p0, "context"

    invoke-static {v1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p1, Landroidx/room/f;->b:Ljava/lang/String;

    new-instance p0, La1/d;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, La1/d;-><init>(Landroid/content/Context;Ljava/lang/String;La1/c;ZZ)V

    iget-object p1, p1, Landroidx/room/f;->c:La1/e;

    invoke-interface {p1, p0}, La1/e;->b(La1/d;)La1/f;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lva/e;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->g:Lva/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->g:Lva/e;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->g:Lva/e;

    if-nez v0, :cond_1

    new-instance v0, Lva/e;

    invoke-direct {v0, p0}, Lva/e;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->g:Lva/e;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->g:Lva/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Lva/f;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->f:Lva/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->f:Lva/f;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->f:Lva/f;

    if-nez v0, :cond_1

    new-instance v0, Lva/f;

    invoke-direct {v0, p0}, Lva/f;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->f:Lva/f;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->f:Lva/f;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Lva/g;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->d:Lva/j;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->d:Lva/j;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->d:Lva/j;

    if-nez v0, :cond_1

    new-instance v0, Lva/j;

    invoke-direct {v0, p0}, Lva/j;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->d:Lva/j;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->d:Lva/j;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ly0/a;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/a;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/g;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/m;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/n;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/f;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lva/e;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final h()Lva/m;
    .locals 1

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->e:Lva/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->e:Lva/m;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->e:Lva/m;

    if-nez v0, :cond_1

    new-instance v0, Lva/m;

    invoke-direct {v0, p0}, Lva/m;-><init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->e:Lva/m;

    :cond_1
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase_Impl;->e:Lva/m;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
