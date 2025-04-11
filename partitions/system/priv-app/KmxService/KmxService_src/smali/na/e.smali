.class public abstract Lna/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo2/i;

.field public final b:Lna/f;

.field public c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lo2/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lna/e;->a:Lo2/i;

    new-instance v0, Lna/f;

    invoke-direct {v0, p1, p2, p3}, Lna/f;-><init>(Lha/a;Lpa/a;Lo2/i;)V

    iput-object v0, p0, Lna/e;->b:Lna/f;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lna/e;->a:Lo2/i;

    invoke-virtual {p0}, Lo2/i;->e()V

    iget-object p0, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast p0, Lqa/a;

    invoke-virtual {p0}, Lqa/a;->b()V

    return-void
.end method

.method public final b(Lia/b;)V
    .locals 9

    const-string v0, "WRITER"

    const-string v1, "Write new data."

    invoke-static {v0, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lna/d;

    iget-object v2, p1, Lia/b;->a:Lia/a;

    iget-object v3, v2, Lia/a;->a:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lma/c;

    const/16 v5, 0x15

    invoke-direct {v4, v5}, Lma/c;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lma/c;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lma/c;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lma/c;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lma/c;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v1, v1, Lna/d;->d:Lma/h;

    invoke-virtual {v1, v3}, Lma/h;->e(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lna/e;->c:Ljava/util/Map;

    iget-object v1, v2, Lia/a;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lna/e;->b:Lna/f;

    iget-object v4, v3, Lna/f;->b:Lpa/a;

    invoke-interface {v4}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v5

    iget-object v6, v3, Lna/f;->a:Lha/a;

    iget-object v7, p1, Lia/b;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-static {v6, v5, v7, v4}, Lsa/b;->a(Lha/a;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lna/f;->c:Lo2/i;

    iget-object v3, v3, Lo2/i;->a:Ljava/lang/Object;

    check-cast v3, Lqa/a;

    invoke-virtual {v3}, Lqa/a;->a()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-static {v3, v4}, Lsa/a;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lna/e;->c:Ljava/util/Map;

    invoke-static {v3}, Ll9/b;->Y(Ljava/util/Map;)[B

    move-result-object v3

    invoke-static {v1}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getGlobalStateMerkleTreeRootValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lia/a;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lia/b;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    iget-object v1, p0, Lna/e;->a:Lo2/i;

    iget-object v1, v1, Lo2/i;->c:Ljava/lang/Object;

    check-cast v1, Lxa/d;

    new-instance v8, Lr2/a;

    const/4 v7, 0x3

    move-object v2, v8

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lr2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v1, Lxa/d;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    invoke-virtual {p0, v8}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/lang/Runnable;)V

    const-string p0, "Succeed to write new data in repositories."

    invoke-static {v0, p0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainMerkleRootRegulationException;

    const-string p1, "Merkle root is different from the last block."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainMerkleRootRegulationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockListNotChainedException;

    const-string p1, "Given blocks are not linkable."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockListNotChainedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainSealRegulationException;

    const-string p1, "Failed to verify the seal of last block."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainSealRegulationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
