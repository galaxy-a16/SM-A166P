.class public final Lna/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo2/i;


# direct methods
.method public constructor <init>(Lo2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lna/b;->a:Lo2/i;

    return-void
.end method


# virtual methods
.method public final a(II)Ljava/util/List;
    .locals 4

    const-string v0, "Blocks "

    const-string v1, "-"

    if-ge p1, p2, :cond_2

    iget-object p0, p0, Lna/b;->a:Lo2/i;

    iget-object p0, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast p0, Lqa/a;

    check-cast p0, Lxa/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ge p1, p2, :cond_1

    :try_start_0
    iget-object p0, p0, Lxa/b;->a:Lva/a;

    check-cast p0, Lva/c;

    invoke-virtual {p0, p1, p2}, Lva/c;->b(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lma/c;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lma/c;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, p2, p1

    if-ne v2, v3, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, " do not exist in the repository."

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string p2, "Failed to get sublist."

    invoke-direct {p1, p2, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v0, "Invalid range for sublist "

    const-string v2, "."

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, " is invalid."

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;
    .locals 0

    iget-object p0, p0, Lna/b;->a:Lo2/i;

    iget-object p0, p0, Lo2/i;->a:Ljava/lang/Object;

    check-cast p0, Lqa/a;

    invoke-virtual {p0}, Lqa/a;->a()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object p0

    return-object p0
.end method

.method public final c(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Get seal of block number "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLOCKCHAIN_READER"

    invoke-static {v1, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lna/b;->a:Lo2/i;

    iget-object p0, p0, Lo2/i;->b:Ljava/lang/Object;

    check-cast p0, Lqa/c;

    check-cast p0, Lxa/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "There is no seal with "

    :try_start_0
    iget-object p0, p0, Lxa/e;->a:Lva/g;

    check-cast p0, Lva/j;

    invoke-virtual {p0, p1}, Lva/j;->a(I)Lwa/d;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lwa/d;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    const-string v0, "Failed to put seal."

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    throw p0
.end method
