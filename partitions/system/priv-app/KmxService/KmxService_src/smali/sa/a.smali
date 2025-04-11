.class public abstract Lsa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I[B[BLjava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object p0

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setPreviousBlockHashValue(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object p0

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setGlobalStateMerkleTreeRootValue(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->addAllTransactions(Ljava/lang/Iterable;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;II)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lg2/m;->g([B)[B

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getGlobalStateMerkleTreeRootValue()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p1, v1, p0, v2}, Lsa/a;->a(I[B[BLjava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static c(I)I
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget v0, v0, Lga/a;->e:I

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v1

    iget v1, v1, Lga/a;->e:I

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    mul-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lg2/m;->g([B)[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getPreviousBlockHashValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p1

    invoke-static {p1}, Lsa/a;->c(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    :goto_0
    move p0, v2

    goto :goto_1

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static e(II)Z
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget v0, v0, Lga/a;->e:I

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v0

    iget v0, v0, Lga/a;->e:I

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v0

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    return-object p0
.end method
