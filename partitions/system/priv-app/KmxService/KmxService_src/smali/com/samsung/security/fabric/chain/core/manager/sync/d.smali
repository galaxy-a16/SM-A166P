.class public final Lcom/samsung/security/fabric/chain/core/manager/sync/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lha/a;

.field public final c:Lpa/a;

.field public final d:Lpa/c;

.field public final e:Lna/b;

.field public final f:Lna/d;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lpa/c;Lna/b;Lna/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget-object v0, v0, Lga/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->b:Lha/a;

    iput-object p2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    iput-object p3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->d:Lpa/c;

    iput-object p4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    iput-object p5, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    iget-object v0, v0, Lna/b;->a:Lo2/i;

    iget-object v0, v0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v0, Lqa/a;

    check-cast v0, Lxa/b;

    iget-object v0, v0, Lxa/b;->a:Lva/a;

    check-cast v0, Lva/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "SELECT COUNT(number) FROM block"

    invoke-static {v1, v2}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v2

    iget-object v0, v0, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-static {v0, v2}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/d0;->i()V

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    invoke-static {v0}, Lsa/a;->c(I)I

    move-result v0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x2

    if-ne v3, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenLocalBlockchainException;

    invoke-direct {p0, v1}, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenLocalBlockchainException;-><init>(I)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/d0;->i()V

    throw p0
.end method

.method public final b()V
    .locals 5

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v4

    invoke-virtual {v1, v4}, Lna/b;->c(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->b:Lha/a;

    invoke-static {p0, v3, v1, v0}, Lsa/b;->a(Lha/a;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/Map;)Z

    move-result p0
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainRepositoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SYNC_MANAGER"

    const-string v1, "Failed to verify seal."

    invoke-static {v0, v1, p0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenSealException;

    invoke-direct {p0, v2}, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenSealException;-><init>(I)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    if-lt v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$UnstableException;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$UnstableException;-><init>(I)V

    throw p0
.end method

.method public final declared-synchronized d()V
    .locals 6

    const-string v0, "Status: Local("

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    invoke-interface {v1}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ln0/d;

    invoke-direct {v2, v1}, Ln0/d;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->a:Ljava/lang/String;

    iget-object v3, v2, Ln0/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lma/b;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lma/c;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lma/c;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/kmxservice/common/update/a;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lcom/samsung/android/kmxservice/common/update/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    invoke-virtual {v2}, Ln0/d;->a()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    const-string v2, "SYNC_MANAGER"

    iget v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), Board("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), Latest("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c()V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->a()V

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    if-le v1, v2, :cond_0

    const-string v1, "SYNC_MANAGER"

    const-string v2, "Local number is greater than board number. Try to rollback."

    invoke-static {v1, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/security/fabric/chain/core/manager/sync/a;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    iget-object v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    iget-object v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/security/fabric/chain/core/manager/sync/a;-><init>(Lpa/a;Lna/b;Lna/d;)V

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->a(I)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->b()V
    :try_end_1
    .catch Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$UnstableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenLocalBlockchainException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/security/fabric/chain/core/manager/sync/SyncManager$BrokenSealException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v1, "SYNC_MANAGER"

    const-string v2, "Local blockchain has no valid seal. Try to reset."

    invoke-static {v1, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    :goto_0
    invoke-virtual {v1}, Lna/e;->a()V

    goto :goto_1

    :catch_1
    const-string v1, "SYNC_MANAGER"

    const-string v2, "Local blockchain is broken. Try to reset."

    invoke-static {v1, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    goto :goto_0

    :goto_1
    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    goto :goto_2

    :catch_2
    const-string v1, "SYNC_MANAGER"

    const-string v2, "Board number is unstable. Try to reset."

    invoke-static {v1, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    invoke-virtual {v1}, Lna/e;->a()V

    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    invoke-interface {v1, v0}, Lpa/a;->setMyLastBlockNumber(I)V

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iput v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    :goto_2
    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    if-ne v0, v1, :cond_1

    const-string v0, "SYNC_MANAGER"

    const-string v1, "Local blockchain is stable latest. No need to sync."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Lcom/samsung/security/fabric/chain/core/manager/sync/c;)V
    .locals 5

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v2}, Lsa/a;->e(II)Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    invoke-static {v0}, Lsa/a;->c(I)I

    move-result v0

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    add-int/lit8 p0, p0, 0x1

    const-string v1, "Latest peers had been refreshed. Try to request blocks("

    const-string v3, "-"

    const-string v4, ")."

    invoke-static {v1, v0, v3, p0, v4}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SYNC_MANAGER"

    invoke-static {v3, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->b(II)Lia/b;

    move-result-object p0

    invoke-virtual {v2}, Lna/e;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v3}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->b(II)Lia/b;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Lna/e;->b(Lia/b;)V

    return-void
.end method

.method public final f()V
    .locals 10

    const-string v0, "SYNC_MANAGER"

    new-instance v1, Lcom/samsung/security/fabric/chain/core/manager/sync/c;

    iget-object v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->b:Lha/a;

    iget-object v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->c:Lpa/a;

    iget-object v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->d:Lpa/c;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;-><init>(Lha/a;Lpa/a;Lpa/c;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e(Lcom/samsung/security/fabric/chain/core/manager/sync/c;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockListNotChainedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromAllPeersException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "All of stable latest peer replied invalid blockchain."

    invoke-static {v4, v1}, Lla/a;->d(Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainException;)V

    iget v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->h:I

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    if-ne v4, p0, :cond_0

    const-string p0, "There is no valid latest blockchain including myself. Try to update board number to 0."

    invoke-static {v0, p0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Lpa/a;->setMyLastBlockNumber(I)V

    :cond_0
    throw v1

    :catch_1
    move-exception v4

    iget v5, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    iget v6, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->i:I

    const-string v7, "Local blocks("

    const-string v8, ") are not chained with stable latest blocks("

    const-string v9, "). Try to reset & re-sync."

    invoke-static {v7, v5, v8, v6, v9}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lla/a;->d(Ljava/lang/String;Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainException;)V

    iget-object v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->f:Lna/d;

    invoke-virtual {v4}, Lna/e;->a()V

    iput v2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e(Lcom/samsung/security/fabric/chain/core/manager/sync/c;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->e:Lna/b;

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    iput v1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    invoke-interface {v3, v1}, Lpa/a;->setMyLastBlockNumber(I)V

    iget p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Succeed to sync to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
