.class Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;
.super Landroidx/room/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->createOpenHelper(Landroidx/room/f;)La1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/a0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(La1/b;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `data_pended` (`key` TEXT NOT NULL, `value` TEXT, PRIMARY KEY(`key`))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `sa_info` (`member_id` TEXT NOT NULL, `fabric_id` TEXT NOT NULL, `sa_guid` TEXT NOT NULL, `sa_mcc` TEXT NOT NULL, `sa_region_mcc` TEXT NOT NULL, PRIMARY KEY(`member_id`))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `membership_fabric_info` (`fabric_id` TEXT NOT NULL DEFAULT \'\', `block_capacity` INTEGER NOT NULL DEFAULT 0, `transaction_capacity` INTEGER NOT NULL DEFAULT 0, `fragment_size` INTEGER NOT NULL DEFAULT 0, `fabric_pub_key` TEXT NOT NULL DEFAULT \'\', `syncPeriod` INTEGER NOT NULL DEFAULT 0, `validPeriod` INTEGER NOT NULL DEFAULT 0, `ftolerance` INTEGER NOT NULL DEFAULT 0, `updated_at` INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(`fabric_id`))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `membership_member_info` (`member_id` TEXT NOT NULL DEFAULT \'\', `member_noti_server` TEXT NOT NULL DEFAULT \'\', `member_reg_info` TEXT NOT NULL DEFAULT \'\', `trust_level` TEXT NOT NULL DEFAULT \'\', `cert_chain` TEXT NOT NULL DEFAULT \'\', `device_type` TEXT NOT NULL DEFAULT \'\', `model_code` TEXT NOT NULL DEFAULT \'\', `stDeviceId` TEXT NOT NULL DEFAULT \'\', `saDeviceId` TEXT NOT NULL DEFAULT \'\', `securityStatus` TEXT NOT NULL DEFAULT \'\', `isPeer` TEXT NOT NULL DEFAULT \'\', PRIMARY KEY(`member_id`))"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'ea70952885410194d29efd5c7bf71c59\')"

    invoke-interface {p1, p0}, La1/b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(La1/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `data_pended`"

    invoke-interface {p1, v0}, La1/b;->q(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `sa_info`"

    invoke-interface {p1, v0}, La1/b;->q(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `membership_fabric_info`"

    invoke-interface {p1, v0}, La1/b;->q(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS `membership_member_info`"

    invoke-interface {p1, v0}, La1/b;->q(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->access$000(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(La1/b;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->access$100(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "db"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(La1/b;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->access$202(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;La1/b;)La1/b;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->access$300(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;La1/b;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl$1;->this$0:Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;->access$400(Lcom/samsung/android/kmxservice/trustchain/utils/database/AppDatabase_Impl;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/x;

    invoke-virtual {v0, p1}, Landroidx/room/x;->a(La1/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(La1/b;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(La1/b;)V
    .locals 0

    invoke-static {p1}, Lkotlinx/coroutines/a0;->k(La1/b;)V

    return-void
.end method

.method public onValidateSchema(La1/b;)Landroidx/room/b0;
    .locals 21

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lz0/a;

    const-string v4, "key"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v5, "value"

    const-string v6, "TEXT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Lz0/e;

    const-string v6, "data_pended"

    invoke-direct {v5, v6, v1, v2, v4}, Lz0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v6}, Lz0/e;->a(La1/b;Ljava/lang/String;)Lz0/e;

    move-result-object v1

    invoke-virtual {v5, v1}, Lz0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "\n Found:\n"

    if-nez v2, :cond_0

    new-instance v0, Landroidx/room/b0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "data_pended(com.samsung.android.kmxservice.trustchain.utils.database.entity.DataPendedEntity).\n Expected:\n"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/b0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lz0/a;

    const-string v6, "member_id"

    const-string v7, "TEXT"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "member_id"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "fabric_id"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "fabric_id"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "sa_guid"

    const-string v9, "TEXT"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "sa_guid"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v9, "sa_mcc"

    const-string v10, "TEXT"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "sa_mcc"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v9, "sa_region_mcc"

    const-string v10, "TEXT"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "sa_region_mcc"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lz0/e;

    const-string v9, "sa_info"

    invoke-direct {v8, v9, v1, v2, v7}, Lz0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v9}, Lz0/e;->a(La1/b;Ljava/lang/String;)Lz0/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lz0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Landroidx/room/b0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "sa_info(com.samsung.android.kmxservice.trustchain.utils.database.entity.SAInfoEntity).\n Expected:\n"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/b0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lz0/a;

    const-string v8, "fabric_id"

    const-string v9, "TEXT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "\'\'"

    const/4 v13, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v15, "block_capacity"

    const-string v16, "INTEGER"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v19, "0"

    const/16 v20, 0x1

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "block_capacity"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "transaction_capacity"

    const-string v9, "INTEGER"

    const/4 v11, 0x0

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "transaction_capacity"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "fragment_size"

    const-string v9, "INTEGER"

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "fragment_size"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "fabric_pub_key"

    const-string v9, "TEXT"

    const-string v12, "\'\'"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "fabric_pub_key"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "syncPeriod"

    const-string v9, "INTEGER"

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "syncPeriod"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "validPeriod"

    const-string v9, "INTEGER"

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "validPeriod"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "ftolerance"

    const-string v9, "INTEGER"

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "ftolerance"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v8, "updated_at"

    const-string v9, "INTEGER"

    const-string v12, "0"

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v6, "updated_at"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lz0/e;

    const-string v8, "membership_fabric_info"

    invoke-direct {v7, v8, v1, v2, v6}, Lz0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v8}, Lz0/e;->a(La1/b;Ljava/lang/String;)Lz0/e;

    move-result-object v1

    invoke-virtual {v7, v1}, Lz0/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroidx/room/b0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "membership_fabric_info(com.samsung.android.kmxservice.trustchain.utils.database.entity.FabricInfoEntity).\n Expected:\n"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroidx/room/b0;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lz0/a;

    const-string v7, "member_id"

    const-string v8, "TEXT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "\'\'"

    const/4 v12, 0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v14, "member_noti_server"

    const-string v15, "TEXT"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "\'\'"

    const/16 v19, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "member_noti_server"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "member_reg_info"

    const-string v8, "TEXT"

    const/4 v10, 0x0

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "member_reg_info"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "trust_level"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "trust_level"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "cert_chain"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "cert_chain"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "device_type"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "device_type"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "model_code"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "model_code"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "stDeviceId"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "stDeviceId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "saDeviceId"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "saDeviceId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "securityStatus"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "securityStatus"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz0/a;

    const-string v7, "isPeer"

    const-string v8, "TEXT"

    const-string v11, "\'\'"

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lz0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "isPeer"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Lz0/e;

    const-string v7, "membership_member_info"

    invoke-direct {v6, v7, v1, v2, v5}, Lz0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v0, v7}, Lz0/e;->a(La1/b;Ljava/lang/String;)Lz0/e;

    move-result-object v0

    invoke-virtual {v6, v0}, Lz0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/room/b0;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "membership_member_info(com.samsung.android.kmxservice.trustchain.utils.database.entity.MemberInfoEntity).\n Expected:\n"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroidx/room/b0;-><init>(ZLjava/lang/String;)V

    return-object v1

    :cond_3
    new-instance v0, Landroidx/room/b0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/room/b0;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method
