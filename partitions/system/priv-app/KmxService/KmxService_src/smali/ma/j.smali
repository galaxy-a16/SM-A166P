.class public final Lma/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lha/a;

.field public final b:Lpa/a;

.field public final c:Lpa/c;


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lpa/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/j;->a:Lha/a;

    iput-object p2, p0, Lma/j;->b:Lpa/a;

    iput-object p3, p0, Lma/j;->c:Lpa/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "QUERY_MANAGER"

    const-string v0, "Query to fabric chain."

    invoke-static {v3, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Query with "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lma/j;->b:Lpa/a;

    invoke-interface {v5}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v0

    new-instance v6, Ln0/d;

    invoke-direct {v6, v0}, Ln0/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v6}, Ln0/d;->a()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Ln0/d;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lma/c;

    const/4 v8, 0x7

    invoke-direct {v6, v8}, Lma/c;-><init>(I)V

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "Request query("

    const-string v9, ") to "

    invoke-static {v0, v2, v9, v8, v4}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lra/d;

    iget-object v9, v1, Lma/j;->c:Lpa/c;

    invoke-direct {v0, v9}, Lra/d;-><init>(Lpa/c;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryRequest;

    move-result-object v9

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v0, v8, v11, v9, v10}, Lu4/a;->c(Ljava/lang/String;ILcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/GeneratedMessageV3;)Lra/f;

    move-result-object v0

    iget-object v0, v0, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    move-object v9, v0

    check-cast v9, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v10, "Response from "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is invalid."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getLastBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getGlobalStateMerkleTreeRootValue()Lcom/google/protobuf/ByteString;

    move-result-object v11

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v12

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getHeight()I

    move-result v13

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getIndexedStatesList()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getIntermediateNodesList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v5}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v16, v4

    iget-object v4, v1, Lma/j;->a:Lha/a;

    invoke-static {v4, v0, v12, v2}, Lsa/b;->a(Lha/a;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lma/c;

    const/16 v4, 0xc

    invoke-direct {v2, v4}, Lma/c;-><init>(I)V

    new-instance v4, Lma/c;

    const/16 v12, 0xd

    invoke-direct {v4, v12}, Lma/c;-><init>(I)V

    invoke-static {v2, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lma/c;

    invoke-direct {v4, v7}, Lma/c;-><init>(I)V

    new-instance v7, Lma/c;

    const/16 v12, 0xf

    invoke-direct {v7, v12}, Lma/c;-><init>(I)V

    invoke-static {v4, v7}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v11}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v13, v13, -0x1

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v13, v2, v7, v0}, Lta/b;->a(IILjava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4

    :cond_1
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainInvalidMultiProofException;

    const-string v4, "Failed to verify full states."

    invoke-direct {v0, v4}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainInvalidMultiProofException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget-object v7, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->DEBUG:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-lt v4, v11, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_4

    sget-object v4, Lla/a;->a:Lla/b;

    if-eqz v4, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v2

    :goto_3
    if-eqz v11, :cond_4

    const-string v11, "VERIFIER"

    const-string v12, "Failed to verify."

    invoke-interface {v4, v7, v11, v12, v0}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not verified."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xe

    move-object/from16 v2, p1

    move-object/from16 v4, v16

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/event/query/QueryProto$QueryResponse;->getIndexedStatesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lma/c;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lma/c;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lma/c;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lma/c;-><init>(I)V

    new-instance v2, Lma/c;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lma/c;-><init>(I)V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_8
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException;

    const-string v1, "No valid response from any peers."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;

    const-string v1, "All stable peers are offline."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoDataToQueryException;

    const-string v1, "Pointless query: all peers are empty."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoDataToQueryException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
