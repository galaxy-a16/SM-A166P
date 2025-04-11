.class public final Lka/c;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lna/b;


# direct methods
.method public constructor <init>(Lna/b;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/c;->c:Lna/b;

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

    const/4 p0, 0x6

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1006

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 4

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;

    const-string v0, "GET_BLOCKCHAIN_REQ_HANDLER"

    const-string v1, "Received get blockchain request."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->getFromBlockNumber()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->getToBlockNumber()I

    move-result p1

    iget-object p0, p0, Lka/c;->c:Lna/b;

    invoke-virtual {p0, v1, p1}, Lna/b;->a(II)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->addAllBlocks(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;

    move-result-object v1

    invoke-virtual {p0}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_0

    const-string v2, "Last block included; replying with seal."

    invoke-static {v0, v2}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lna/b;->c(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Last block not included; replying without seal."

    invoke-static {v0, p0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setBlockchain(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->getFromBlockNumber()I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->getFromBlockNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->getToBlockNumber()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;

    move-result-object p0

    return-object p0
.end method
