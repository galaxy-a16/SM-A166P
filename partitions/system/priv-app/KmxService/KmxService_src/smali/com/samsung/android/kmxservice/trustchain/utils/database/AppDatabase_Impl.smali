.class public final Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;
.super Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;
.source "SourceFile"


# instance fields
.field private volatile _dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

.field private volatile _fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

.field private volatile _memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

.field private volatile _sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;La1/b;)La1/b;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:La1/b;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;La1/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(La1/b;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
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

    const-string v3, "DELETE FROM `data_pended`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `sa_info`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `membership_fabric_info`"

    invoke-interface {v2, v3}, La1/b;->q(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `membership_member_info`"

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

.method public createInvalidationTracker()Landroidx/room/n;
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, Landroidx/room/n;

    const-string v3, "data_pended"

    const-string v4, "sa_info"

    const-string v5, "membership_fabric_info"

    const-string v6, "membership_member_info"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/n;-><init>(Landroidx/room/RoomDatabase;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public createOpenHelper(Landroidx/room/f;)La1/f;
    .locals 6

    new-instance v3, Landroidx/room/c0;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;I)V

    const-string p0, "ea70952885410194d29efd5c7bf71c59"

    const-string v1, "08b8d5776808ddc00d513769c22d549e"

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

.method public dataPendedDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_dataPendedDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fabricInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_fabricInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lh5/d;",
            ">;",
            "Lh5/d;",
            ">;)",
            "Ljava/util/List<",
            "Ly0/a;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lh5/d;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/DataPendedDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public memberInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_memberInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saInfoDao()Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->_sAInfoDao:Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
