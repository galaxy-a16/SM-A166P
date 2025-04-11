.class public final Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfMemberInfoEntity:Landroidx/room/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/g;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearTable:Landroidx/room/f0;

.field private final __preparedStmtOfDeleteMember:Landroidx/room/f0;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$1;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__insertionAdapterOfMemberInfoEntity:Landroidx/room/g;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$2;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfDeleteMember:Landroidx/room/f0;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl$3;-><init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

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

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfClearTable:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw v1
.end method

.method public deleteMember(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfDeleteMember:Landroidx/room/f0;

    invoke-virtual {v0}, Landroidx/room/f0;->acquire()La1/i;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p1}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v0}, La1/i;->v()I

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfDeleteMember:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__preparedStmtOfDeleteMember:Landroidx/room/f0;

    invoke-virtual {p0, v0}, Landroidx/room/f0;->release(La1/i;)V

    throw p1
.end method

.method public getAllMemberInfo()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "select * from membership_member_info"

    invoke-static {v1, v2}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {v0, v1}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "member_id"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "member_noti_server"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "member_reg_info"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "trust_level"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "cert_chain"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "device_type"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "model_code"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "stDeviceId"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "saDeviceId"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "securityStatus"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "isPeer"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    move-object/from16 v17, v15

    goto :goto_1

    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v14

    :goto_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v18, v15

    goto :goto_2

    :cond_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    :goto_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v19, v15

    goto :goto_3

    :cond_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v14

    :goto_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v20, v15

    goto :goto_4

    :cond_3
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    :goto_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v21, v15

    goto :goto_5

    :cond_4
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v21, v14

    :goto_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v22, v15

    goto :goto_6

    :cond_5
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    :goto_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v23, v15

    goto :goto_7

    :cond_6
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v14

    :goto_7
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v24, v15

    goto :goto_8

    :cond_7
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v24, v14

    :goto_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v25, v15

    goto :goto_9

    :cond_8
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v14

    :goto_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v26, v15

    goto :goto_a

    :cond_9
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v26, v14

    :goto_a
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_a

    :goto_b
    move-object/from16 v27, v15

    goto :goto_c

    :cond_a
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    :goto_c
    new-instance v14, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v27}, Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    return-object v13

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    throw v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "select member_id from membership_member_info"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-static {p0, v0}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/d0;->i()V

    throw v1
.end method

.method public insert(Lcom/samsung/android/kmxservice/trustchain/utils/database/entity/MemberInfoEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__insertionAdapterOfMemberInfoEntity:Landroidx/room/g;

    invoke-virtual {v0, p1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/dao/MemberInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
