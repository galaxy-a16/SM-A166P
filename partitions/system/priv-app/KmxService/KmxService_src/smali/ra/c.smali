.class public final Lra/c;
.super Lu4/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lu4/a;-><init>(Lpa/c;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x1006

    return p0
.end method

.method public final b(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p0

    return-object p0
.end method

.method public final e(IILjava/lang/String;)Lra/f;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;->setFromBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;->setToBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainRequest;

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$GetBlockchainResponse;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p0, p3, v0, p1, p2}, Lu4/a;->c(Ljava/lang/String;ILcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/GeneratedMessageV3;)Lra/f;

    move-result-object p0

    return-object p0
.end method
