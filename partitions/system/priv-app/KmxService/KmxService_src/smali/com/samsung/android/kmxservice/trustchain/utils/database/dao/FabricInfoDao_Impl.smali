.class public final Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfFabricInfoEntity:Landroidx/room/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/g;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearTable:Landroidx/room/f0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__insertionAdapterOfFabricInfoEntity:Landroidx/room/g;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl$2;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearTable()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw v1
.end method

.method public getAllMemberInfos(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "select * from membership_fabric_info where fabric_id=?"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-virtual {v2, v3}, Landroidx/room/d0;->A(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3, v1}, Landroidx/room/d0;->r(ILjava/lang/String;)V

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v2}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "fabric_id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "block_capacity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "transaction_capacity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "fragment_size"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "fabric_pub_key"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "syncPeriod"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "validPeriod"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "ftolerance"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "updated_at"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v14, v12

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    :goto_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move-object/from16 v18, v12

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :goto_3
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    new-instance v12, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;

    move-object v13, v12

    invoke-direct/range {v13 .. v21}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;-><init>(Ljava/lang/String;IIILjava/lang/String;III)V

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;->updated_at:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/d0;->i()V

    return-object v12

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/d0;->i()V

    throw v0
.end method

.method public insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/FabricInfoEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__insertionAdapterOfFabricInfoEntity:Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/FabricInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
