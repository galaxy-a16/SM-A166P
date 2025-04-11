.class public final Lka/g;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lna/b;


# direct methods
.method public constructor <init>(Lna/b;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/g;->c:Lna/b;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1005

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 12

    const-string v0, "Failed to get bytes."

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;

    const-string v1, "QUERY_REQ_HANDLER"

    const-string v2, "Received query request."

    invoke-static {v1, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lka/g;->c:Lna/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "BLOCKCHAIN_READER"

    const-string v2, "Generate merkle multi proofs."

    invoke-static {v1, v2}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lna/b;->a:Lo2/i;

    iget-object v2, v1, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Lqa/b;

    invoke-virtual {v2, p1}, Lqa/b;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lo2/i;->e:Ljava/lang/Object;

    check-cast v2, Lqa/b;

    invoke-virtual {v2}, Lqa/b;->d()I

    move-result v2

    invoke-static {v2}, Ll9/b;->c0(I)I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ll6/l;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ll6/l;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    move v6, v3

    :goto_0
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_0

    new-instance v7, Lta/a;

    invoke-direct {v7, v4, v6, v5}, Lta/a;-><init>(Ll6/l;ILjava/util/Set;)V

    invoke-interface {v5, v7}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lma/c;

    const/16 v8, 0x1c

    invoke-direct {v7, v8}, Lma/c;-><init>(I)V

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v4, Ll6/l;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lja/a;

    iget-object v8, v1, Lo2/i;->d:Ljava/lang/Object;

    check-cast v8, Lt6/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v9, v8, Lt6/a;->b:Ljava/lang/Object;

    check-cast v9, Lva/f;

    iget v10, v6, Lja/a;->a:I

    iget v11, v6, Lja/a;->b:I

    invoke-virtual {v9, v10, v11}, Lva/f;->e(II)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v9, :cond_1

    invoke-virtual {v8, v6}, Lt6/a;->l(Lja/a;)[B

    move-result-object v7

    goto :goto_3

    :cond_1
    iget v9, v6, Lja/a;->a:I

    iget v10, v6, Lja/a;->b:I

    rem-int/lit8 v11, v10, 0x2

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const-string v11, "Failed to get bytes"

    if-nez v7, :cond_4

    add-int/lit8 v10, v10, -0x1

    :try_start_1
    iget-object v7, v8, Lt6/a;->b:Ljava/lang/Object;

    check-cast v7, Lva/f;

    invoke-virtual {v7, v9, v10}, Lva/f;->i(II)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_3

    :goto_3
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :try_start_2
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    invoke-direct {p0, v11}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0

    :cond_4
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    invoke-direct {p0, v11}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0

    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {v1, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v3

    invoke-virtual {p0, v3}, Lna/b;->c(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setHeight(I)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->addAllIntermediateNodes(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->addAllIndexedStates(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setLastBlock(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoSuchKeyException;

    const-string p1, "No match for the key."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoSuchKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;

    move-result-object p0

    return-object p0
.end method
