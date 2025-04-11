.class public final Lka/a;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lpa/a;

.field public final e:Lna/d;

.field public final f:Lna/b;


# direct methods
.method public constructor <init>(Lpa/c;Lpa/a;Lna/d;Lna/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lka/e;-><init>(Lpa/c;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p1

    iget-object p1, p1, Lga/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lka/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lka/a;->d:Lpa/a;

    iput-object p3, p0, Lka/a;->e:Lna/d;

    iput-object p4, p0, Lka/a;->f:Lna/b;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1002

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 7

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;

    const-string v0, "COMMIT_REQ_HANDLER"

    const-string v1, "Received commit request."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;->getValid()Z

    move-result p1

    iget-object v1, p0, Lka/a;->f:Lna/b;

    iget-object v2, p0, Lka/a;->d:Lpa/a;

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Update local number ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") to the board."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p0

    invoke-interface {v2, p0}, Lpa/a;->setMyLastBlockNumber(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lma/b;

    iget-object v4, p0, Lka/a;->c:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lma/c;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lma/c;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/kmxservice/common/update/a;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/kmxservice/common/update/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v3

    if-ge p1, v3, :cond_1

    const-string v4, "Local number ("

    const-string v5, ") is greater than board number ("

    const-string v6, "): try rollback to the board number."

    invoke-static {v4, v3, v5, p1, v6}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;

    iget-object p0, p0, Lka/a;->e:Lna/d;

    invoke-direct {v0, v2, v1, p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/a;-><init>(Lpa/a;Lna/b;Lna/d;)V

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->a(I)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitResponse;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainInvalidPeerStatusException;

    const-string p1, "Status board is empty."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainInvalidPeerStatusException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;

    move-result-object p0

    return-object p0
.end method
