.class public abstract Lsa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lha/a;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/Map;)Z
    .locals 7

    const-string v0, "VALIDATOR"

    const-string v1, "Verify block with seal."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Filter out invalid signers in the seal."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getSignaturesList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lma/b;

    const/4 v2, 0x4

    invoke-direct {v1, p3, v2}, Lma/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v1

    iget v1, v1, Lga/a;->d:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-gt v2, v1, :cond_0

    return v3

    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lg2/m;->g([B)[B

    move-result-object v6

    invoke-interface {p0, v6, v1, v5}, Lha/a;->verify([B[B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "Failed to verify."

    invoke-static {v0, v5, v1}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_2
    return v3
.end method
