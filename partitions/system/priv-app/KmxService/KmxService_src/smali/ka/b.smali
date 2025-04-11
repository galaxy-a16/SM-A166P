.class public final Lka/b;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lna/b;

.field public final d:Lna/d;


# direct methods
.method public constructor <init>(Lna/b;Lna/d;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p3}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/b;->c:Lna/b;

    iput-object p2, p0, Lka/b;->d:Lna/d;

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

    const/4 p0, 0x3

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1003

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 6

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;

    const-string v0, "Received finalize request."

    const-string v1, "FINALIZE_REQ_HANDLER"

    invoke-static {v1, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->getBlock()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->getSeal()Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object p1

    iget-object v2, p0, Lka/b;->c:Lna/b;

    invoke-virtual {v2}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v5

    invoke-static {v3, v5}, Lsa/a;->e(II)Z

    move-result v3

    iget-object p0, p0, Lka/b;->d:Lna/d;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lna/e;->a()V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-static {v5}, Lsa/a;->c(I)I

    move-result v4

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v3

    invoke-static {v2, v4, v3}, Lsa/a;->b(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lia/b;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lia/a;->a(Ljava/util/List;)V

    new-instance v3, Lia/a;

    invoke-direct {v3, v2}, Lia/a;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v3, p1}, Lia/b;-><init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    invoke-virtual {p0, v0}, Lna/e;->b(Lia/b;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Succeed to finalize block "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeResponse;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;

    const-string p1, "Empty data for chained blocks."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->hasSeal()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->hasBlock()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 0

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;

    move-result-object p0

    return-object p0
.end method
