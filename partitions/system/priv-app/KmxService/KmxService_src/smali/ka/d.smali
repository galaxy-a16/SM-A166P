.class public final Lka/d;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lna/b;


# direct methods
.method public constructor <init>(Lna/b;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/d;->c:Lna/b;

    return-void
.end method

.method public static l([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1007

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 12

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;

    const-string p1, "GLOBAL_STATE_REQ_HANDLER"

    const-string v0, "Received global state request."

    invoke-static {p1, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lka/d;->c:Lna/b;

    invoke-virtual {p0}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getGlobalStateMerkleTreeRootValue()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    iget-object p0, p0, Lna/b;->a:Lo2/i;

    iget-object v0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast v0, Lqa/b;

    invoke-virtual {v0}, Lqa/b;->d()I

    move-result v0

    invoke-static {v0}, Ll9/b;->c0(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lo2/i;->d:Ljava/lang/Object;

    check-cast v1, Lt6/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v1, Lt6/a;->b:Ljava/lang/Object;

    check-cast v1, Lva/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lva/f;->i(II)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast p1, Lqa/b;

    check-cast p1, Lxa/c;

    iget-object v0, p1, Lxa/c;->a:Lva/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SELECT * FROM state"

    invoke-static {v2, v1}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v1

    iget-object v2, v0, Lva/m;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, v0, Lva/m;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-static {v0, v1}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_1
    const-string v2, "index"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "key"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "value"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "block_stamp"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move-object v8, v9

    goto :goto_1

    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v11, Lwa/e;

    invoke-direct {v11, v7, v10, v8, v9}, Lwa/e;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lw5/d;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lw5/d;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lo2/i;->e:Ljava/lang/Object;

    check-cast p0, Lqa/b;

    check-cast p0, Lxa/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object p0, p0, Lxa/c;->b:Lva/e;

    invoke-virtual {p0}, Lva/e;->h()Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->addAllSyncableStates(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->addAllEmptyIndex(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to get empty indices."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroidx/room/d0;->i()V

    throw p0

    :cond_3
    invoke-static {p1}, Lka/d;->l([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lka/d;->l([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Repository is broken: cannot provide valid states.\nMerkle root of actual nodes ("

    const-string v1, ") different from last block\'s ("

    const-string v2, ")."

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainMerkleRootRegulationException;

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainMerkleRootRegulationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :try_start_3
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string p1, "Failed to get bytes"

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string v0, "Failed to get bytes."

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0
.end method

.method public final bridge synthetic i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GlobalStateRequest;

    move-result-object p0

    return-object p0
.end method
