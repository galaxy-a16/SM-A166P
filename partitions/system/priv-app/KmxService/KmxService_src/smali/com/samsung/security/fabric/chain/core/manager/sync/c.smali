.class public final Lcom/samsung/security/fabric/chain/core/manager/sync/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lha/a;

.field public final d:Lpa/a;

.field public final e:Lra/c;


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lpa/c;)V
    .locals 1

    new-instance v0, Lra/c;

    invoke-direct {v0, p3}, Lra/c;-><init>(Lpa/c;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p3

    iget-object p3, p3, Lga/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->a:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p3

    iget p3, p3, Lga/a;->b:I

    iput p3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->b:I

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->c:Lha/a;

    iput-object p2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->d:Lpa/a;

    iput-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->e:Lra/c;

    return-void
.end method

.method public static e(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Ljava/lang/String;II)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getValid()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SYNC_DATA_COLLECTOR"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Response from "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getBlocksList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v3, p3, p2

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    const-string p0, "Count of blocks is not matched with requested."

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    if-eq v0, p2, :cond_2

    const-string p0, "First block number is not matched with requested."

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p0

    sub-int/2addr p3, v4

    if-eq p0, p3, :cond_3

    const-string p0, "Last block number is not matched with requested."

    :goto_0
    invoke-static {v2, p0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v4

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Blocks from "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v4
.end method


# virtual methods
.method public final a(IILia/a;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->d:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ln0/d;

    invoke-direct {v1, v0}, Ln0/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Ln0/d;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->c(Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Request "

    const-string v4, "-"

    const-string v5, " to "

    invoke-static {v3, p1, v4, p2, v5}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SYNC_DATA_COLLECTOR"

    invoke-static {v5, v3}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->e:Lra/c;

    invoke-virtual {v3, p1, p2, v2}, Lra/c;->e(IILjava/lang/String;)Lra/f;

    move-result-object v3

    iget-object v3, v3, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast v3, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    invoke-static {v3, v2, p1, p2}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->e(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getBlocksList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3, v3}, Lia/a;->b(Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appended "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " at front."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainDataRegulationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response blocks from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " are not linkable."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v0, 0x10

    invoke-direct {p3, v0}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;

    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;-><init>(II)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromAllPeersException;

    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromAllPeersException;-><init>(II)V

    throw p0

    :cond_3
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;

    const-string p1, "All stable peers are offline."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(II)Lia/b;
    .locals 6

    const-string v0, "-"

    if-ge p1, p2, :cond_3

    sub-int v1, p2, p1

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->b:I

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "."

    const-string v5, "SYNC_DATA_COLLECTOR"

    if-eqz v1, :cond_2

    const-string v0, "Sync by multi fragments. Total range "

    const-string v1, " to "

    invoke-static {v0, p1, v1, p2, v4}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v0, p2, v3

    invoke-virtual {p0, v0, p2}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->d(II)Lcom/samsung/security/fabric/chain/core/manager/sync/b;

    move-result-object p2

    iget-object v0, p2, Lcom/samsung/security/fabric/chain/core/manager/sync/b;->a:Lia/a;

    iget-object v1, v0, Lia/a;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    :goto_1
    sub-int v2, v1, v3

    if-le v2, p1, :cond_1

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->a(IILia/a;)V

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->a(IILia/a;)V

    new-instance p0, Lia/b;

    iget-object p1, p2, Lcom/samsung/security/fabric/chain/core/manager/sync/b;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-direct {p0, v0, p1}, Lia/b;-><init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    return-object p0

    :cond_2
    const-string v1, "Sync by single fragment. Total range "

    invoke-static {v1, p1, v0, p2, v4}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->d(II)Lcom/samsung/security/fabric/chain/core/manager/sync/b;

    move-result-object p0

    new-instance p1, Lia/b;

    iget-object p2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/b;->a:Lia/a;

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/b;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-direct {p1, p2, p0}, Lia/b;-><init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid range: "

    invoke-static {v1, p1, v0, p2}, Landroidx/activity/b;->i(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/util/HashSet;)Ljava/util/Set;
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/c;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lma/c;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final d(II)Lcom/samsung/security/fabric/chain/core/manager/sync/b;
    .locals 10

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->d:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ln0/d;

    invoke-direct {v2, v1}, Ln0/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Ln0/d;->b()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->c(Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Request "

    const-string v5, "-"

    const-string v6, " to "

    invoke-static {v4, p1, v5, p2, v6}, Landroidx/activity/b;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (with seal)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SYNC_DATA_COLLECTOR"

    invoke-static {v5, v4}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->e:Lra/c;

    invoke-virtual {v4, p1, p2, v3}, Lra/c;->e(IILjava/lang/String;)Lra/f;

    move-result-object v4

    iget-object v4, v4, Lra/f;->b:Lcom/google/protobuf/GeneratedMessageV3;

    check-cast v4, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    invoke-static {v4, v3, p1, p2}, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->e(Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getBlocksList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v7

    invoke-interface {v0}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/c;->c:Lha/a;

    invoke-static {v6}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v6

    invoke-static {v9, v6, v7, v8}, Lsa/b;->a(Lha/a;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/Map;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Seal from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v7, 0x0

    :cond_1
    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getBlockchain()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->getBlocksList()Ljava/util/List;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Lia/a;->a(Ljava/util/List;)V

    new-instance v7, Lia/a;

    invoke-direct {v7, v6}, Lia/a;-><init>(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;

    const-string v7, "Empty data for chained blocks."

    invoke-direct {v6, v7}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainDataRegulationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Response blocks from "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not chained."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/manager/sync/b;

    invoke-direct {p1, v7, p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/b;-><init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    return-object p1

    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;

    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromLivePeersException;-><init>(II)V

    throw p0

    :cond_6
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromAllPeersException;

    invoke-direct {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseFromAllPeersException;-><init>(II)V

    throw p0

    :cond_7
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;

    const-string p1, "All stable peers are offline."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainNoAvailablePeerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
