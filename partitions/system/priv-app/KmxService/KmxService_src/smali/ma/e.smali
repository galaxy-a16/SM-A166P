.class public final Lma/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lha/a;

.field public final d:Lpa/a;

.field public final e:Lpa/c;

.field public final f:Lpa/d;


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lpa/c;Lpa/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget-object v0, v0, Lga/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lma/e;->b:Ljava/lang/String;

    iput-object p1, p0, Lma/e;->c:Lha/a;

    iput-object p2, p0, Lma/e;->d:Lpa/a;

    iput-object p3, p0, Lma/e;->e:Lpa/c;

    iput-object p4, p0, Lma/e;->f:Lpa/d;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p1

    iget p1, p1, Lga/a;->d:I

    iput p1, p0, Lma/e;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Map;
    .locals 6

    iget-object v0, p0, Lma/e;->d:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lma/d;

    invoke-direct {v2, p0, v0}, Lma/d;-><init>(Lma/e;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "Collected signed block count: "

    const-string v4, ". Verified block count: "

    const-string v5, "."

    invoke-static {v3, v1, v4, v2, v5}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONSENSUS_MANAGER"

    invoke-static {v2, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lma/e;->a:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lma/c;-><init>(I)V

    new-instance v1, Lma/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lma/c;-><init>(I)V

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/b;

    invoke-direct {v0, p0, v3}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    new-instance v1, Lw5/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lw5/d;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough verified blocks."

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " The number of signed blocks: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v1, 0xe

    invoke-static {v1, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v1, 0xf

    invoke-static {v1, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Block signers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v0, 0x11

    invoke-static {v0, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Verified block signers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNoTolerantConsensusException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNoTolerantConsensusException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lia/e;Ljava/util/Set;)Ljava/util/List;
    .locals 8

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcast submit request to run create block each. Expected response count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSENSUS_MANAGER"

    invoke-static {v1, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lra/g;

    iget-object v2, p0, Lma/e;->e:Lpa/c;

    invoke-direct {v0, v2}, Lra/g;-><init>(Lpa/c;)V

    iget-object v2, p1, Lia/e;->b:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;->setTransaction(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;

    move-result-object v2

    iget-object p1, p1, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {v2, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;->setSignature(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, p1}, Lu4/a;->d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    const/16 v3, 0x12

    invoke-static {v3, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/m;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const/16 v3, 0x13

    invoke-static {v3, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "Collected signed block response count: "

    const-string v6, ". Succeed response count: "

    const-string v7, "."

    invoke-static {v5, v3, v6, v4, v7}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget p0, p0, Lma/e;->a:I

    if-le v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not enough signed block response from peers."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of expected response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Expected response peer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " The number of total response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const/16 v0, 0x14

    invoke-static {v0, p2}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p2}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of succeed response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Succeed response peer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 p2, 0x15

    invoke-static {p2, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " Failed response peer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/util/Set;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcast commit request to confirm each. Expected response count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSENSUS_MANAGER"

    invoke-static {v1, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lra/a;

    iget-object v2, p0, Lma/e;->e:Lpa/c;

    invoke-direct {v0, v2}, Lra/a;-><init>(Lpa/c;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v3}, Lu4/a;->d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-static {v3, v2}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Collected commit response count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Succeed response count: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lma/e;->a:I

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough commit succeed response from peers."

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " The number of expected response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Expected response peer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " The number of total response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v2, 0x1d

    invoke-static {v2, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " The number of succeed response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Succeed response peer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lma/c;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " Failed response peer: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljava/util/Map;Ljava/util/Set;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ll6/d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ll6/d;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    const-string v3, "Failed to select major signed block."

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lma/b;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Broadcast finalize request to run store block each. Expected response count: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSENSUS_MANAGER"

    invoke-static {v1, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lra/b;

    iget-object v3, p0, Lma/e;->e:Lpa/c;

    invoke-direct {v0, v3}, Lra/b;-><init>(Lpa/c;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;->setBlock(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;->setSeal(Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$FinalizeRequest;

    move-result-object p1

    invoke-virtual {v0, v4, v2, p1}, Lu4/a;->d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const/16 v2, 0x16

    invoke-static {v2, v0}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Collected finalize response count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Succeed response count: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lma/e;->a:I

    int-to-long v0, p0

    cmp-long p0, v2, v0

    if-lez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not enough finalize response from peers."

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of expected response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Expected response peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of total response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    const/16 v1, 0x17

    invoke-static {v1, p2}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-static {p2}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of succeed response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Succeed response peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 p2, 0x18

    invoke-static {p2, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " Failed response peer: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughFinalizeException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughFinalizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusConflictException;

    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusConflictException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusConflictException;

    invoke-direct {p0, v3}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusConflictException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNoTolerantConsensusException;

    const-string p1, "There is no fault tolerant block."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNoTolerantConsensusException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/util/Set;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Broadcast request to run sync each. Expected response count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONSENSUS_MANAGER"

    invoke-static {v1, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lra/h;

    iget-object v2, p0, Lma/e;->e:Lpa/c;

    invoke-direct {v0, v2}, Lra/h;-><init>(Lpa/c;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;->getDefaultInstance()Lcom/samsung/security/fabric/chain/core/data/event/sync/SynchronizationProto$SyncRequest;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lu4/a;->d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v3, v2}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Collected sync response count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Succeed response count: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lma/e;->a:I

    int-to-long v5, p0

    cmp-long p0, v2, v5

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough sync succeed response from peers."

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " The number of expected response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Expected response peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of total response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v1, 0x1a

    invoke-static {v1, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " The number of succeed response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Succeed response peer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    const/16 v0, 0x1b

    invoke-static {v0, p1}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Failed response peer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughResponsesException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lg2/m;->g([B)[B

    move-result-object v0

    iget-object v1, p0, Lma/e;->c:Lha/a;

    invoke-interface {v1, v0}, Lha/a;->sign([B)[B

    move-result-object v0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v1

    iget-object v2, p0, Lma/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->setSigner(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v0

    new-instance v1, Lia/e;

    invoke-direct {v1, v0, p1}, Lia/e;-><init>(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;Ljava/lang/Object;)V

    const-string v0, "Submit transaction."

    const-string v2, "CONSENSUS_MANAGER"

    invoke-static {v2, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lg2/m;->g([B)[B

    move-result-object p1

    const-string v0, "Get peer statuses from the server."

    invoke-static {v2, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lma/e;->d:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v0

    new-instance v3, Lc/c;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lc/c;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/m;

    const/16 v5, 0xd

    invoke-direct {v3, v5}, Lcom/fasterxml/jackson/databind/deser/std/m;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lma/c;

    invoke-direct {v3, v4}, Lma/c;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    iget v4, p0, Lma/e;->a:I

    const-string v5, "."

    if-le v3, v4, :cond_1

    invoke-static {v0}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Detected live peers: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Acquire write flag on the server."

    invoke-static {v2, v3}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lma/e;->f:Lpa/d;

    invoke-interface {v3, p1}, Lpa/d;->acquireMutex([B)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lma/e;->e(Ljava/util/Set;)V

    invoke-virtual {p0, v1, v0}, Lma/e;->b(Lia/e;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lma/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lma/e;->d(Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Lma/e;->c(Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughFinalizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lma/e;->g()V

    return-void

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Notify finalize has failed. Request peer to rollback its status."

    invoke-static {v2, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lra/a;

    iget-object v2, p0, Lma/e;->e:Lpa/c;

    invoke-direct {v1, v2}, Lra/a;-><init>(Lpa/c;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$CommitRequest;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3, v2}, Lu4/a;->d(IILcom/google/protobuf/GeneratedMessageV3;)Ljava/util/List;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lma/e;->g()V

    throw p1

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMutexOccupiedException;

    const-string p1, "Write flag already in use: retry later."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMutexOccupiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Not enough live peers."

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " The number of live peers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lv9/a;->F(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Live peers: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughLivePeersException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainNotEnoughLivePeersException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g()V
    .locals 6

    const-string v0, "CONSENSUS_MANAGER"

    const-string v1, "Release write flag on the server."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lma/e;->f:Lpa/d;

    invoke-interface {p0}, Lpa/d;->releaseMutex()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Failed to release mutex: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->g(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object v1, Lla/a;->b:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;->WARN:Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    sget-object v1, Lla/a;->a:Lla/b;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v1, v2, v0, p0}, Lla/b;->print(Lcom/samsung/security/fabric/chain/core/logger/Logger$Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "message is marked non-null but is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
