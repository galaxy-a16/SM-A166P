.class public final Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSAInfoEntity:Landroidx/room/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/g;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearTable:Landroidx/room/f0;

.field private final __preparedStmtOfUpdateFabricId:Landroidx/room/f0;

.field private final __preparedStmtOfUpdateSaInfo:Landroidx/room/f0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__insertionAdapterOfSAInfoEntity:Landroidx/room/g;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$2;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateFabricId:Landroidx/room/f0;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$3;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateSaInfo:Landroidx/room/f0;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl$4;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

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

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw v1
.end method

.method public getFabricId()Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT fabric_id FROM sa_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT member_id FROM sa_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public getSaGuid()Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT sa_guid FROM sa_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public getSaMcc()Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT sa_mcc FROM sa_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public getSaRegionMcc()Ljava/lang/String;
    .locals 3

    const-string v0, "SELECT sa_region_mcc FROM sa_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/SAInfoEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__insertionAdapterOfSAInfoEntity:Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateFabricId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateFabricId:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    invoke-interface {v0, p2}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p1}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateFabricId:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateFabricId:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw p1
.end method

.method public updateSaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateSaInfo:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p3, :cond_1

    invoke-interface {v0, p2}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2, p3}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x3

    if-nez p4, :cond_2

    invoke-interface {v0, p2}, La1/g;->A(I)V

    goto :goto_2

    :cond_2
    invoke-interface {v0, p2, p4}, La1/g;->r(ILjava/lang/String;)V

    :goto_2
    const/4 p2, 0x4

    if-nez p1, :cond_3

    invoke-interface {v0, p2}, La1/g;->A(I)V

    goto :goto_3

    :cond_3
    invoke-interface {v0, p2, p1}, La1/g;->r(ILjava/lang/String;)V

    :goto_3
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateSaInfo:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/SAInfoDao_Impl;->__preparedStmtOfUpdateSaInfo:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw p1
.end method
