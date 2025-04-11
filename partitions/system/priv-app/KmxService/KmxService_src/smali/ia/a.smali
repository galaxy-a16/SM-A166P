.class public final Lia/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-static {v0, v1}, Lsa/a;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockNotChainedException;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    const-string v2, "Blocks must be chained: broken ["

    const-string v3, "-"

    const-string v4, "]"

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockNotChainedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lia/a;->a(Ljava/util/List;)V

    invoke-static {p1}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    iget-object v1, p0, Lia/a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-static {v0, v1}, Lsa/a;->d(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/List;

    aput-object p1, v0, v2

    const/4 p1, 0x1

    iget-object v1, p0, Lia/a;->a:Ljava/util/List;

    aput-object v1, v0, p1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lia/a;->a:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockListNotChainedException;

    const-string p1, "Blocks must be chained."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainBlockListNotChainedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;

    const-string p1, "Empty data for chained blocks."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
