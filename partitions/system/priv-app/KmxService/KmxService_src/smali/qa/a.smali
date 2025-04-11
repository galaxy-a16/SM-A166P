.class public abstract Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
.end method

.method public final b()V
    .locals 3

    invoke-virtual {p0}, Lqa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    check-cast p0, Lxa/b;

    :try_start_0
    new-instance v1, Lwa/a;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lwa/a;-><init>(ILcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)V

    iget-object p0, p0, Lxa/b;->a:Lva/a;

    check-cast p0, Lva/c;

    iget-object v0, p0, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lva/c;->b:Lva/b;

    invoke-virtual {p0, v1}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v1, "Failed to append block."

    invoke-direct {v0, v1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract c()Z
.end method
