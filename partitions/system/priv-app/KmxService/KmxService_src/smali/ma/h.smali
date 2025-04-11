.class public final Lma/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lqa/b;

.field public final c:Lt6/a;

.field public d:I

.field public e:Ljava/util/HashMap;

.field public f:Ljava/util/HashMap;

.field public g:Ljava/util/HashSet;

.field public h:Ljava/util/HashSet;

.field public i:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lqa/b;Lt6/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lma/h;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lma/h;->b:Lqa/b;

    iput-object p2, p0, Lma/h;->c:Lt6/a;

    sget-object p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance p2, Lma/f;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lma/f;-><init>(Lma/h;I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance p2, Lma/f;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lma/f;-><init>(Lma/h;I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    new-instance p2, Lma/f;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lma/f;-><init>(Lma/h;I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/state/GlobalStateProto$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lg2/m;->g([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lma/h;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lma/h;->b:Lqa/b;

    invoke-virtual {p0, p1}, Lqa/b;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lja/a;)[B
    .locals 4

    iget v0, p1, Lja/a;->b:I

    iget v1, p1, Lja/a;->a:I

    iget-object v2, p0, Lma/h;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lma/h;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    iget-object v2, p0, Lma/h;->c:Lt6/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v2, Lt6/a;->b:Ljava/lang/Object;

    check-cast v3, Lva/f;

    invoke-virtual {v3, v1, v0}, Lva/f;->e(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lt6/a;->l(Lja/a;)[B

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lma/h;->h:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lja/a;

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v1, v0}, Lja/a;-><init>(II)V

    invoke-virtual {p0, p1}, Lma/h;->b(Lja/a;)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lg2/m;->g:[B

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string v0, "Failed to get bytes."

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lma/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lma/h;->i:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lma/h;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lma/h;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lma/h;->i:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lma/h;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lma/h;->f:Ljava/util/HashMap;

    new-instance v1, Lja/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lja/a;-><init>(II)V

    invoke-static {p1, p2}, Lma/h;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/FabricChainDuplicateKeyException;

    const-string p1, "The key already exists."

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/FabricChainDuplicateKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/util/List;)Ljava/util/Map;
    .locals 13

    const-string v0, "TREE_SIMULATOR"

    const-string v1, "Initialize simulator memory."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lma/h;->b:Lqa/b;

    invoke-virtual {v1}, Lqa/b;->d()I

    move-result v2

    iput v2, p0, Lma/h;->d:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lma/h;->e:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lma/h;->f:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lma/h;->g:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lma/h;->h:Ljava/util/HashSet;

    check-cast v1, Lxa/c;

    iget-object v1, v1, Lxa/c;->b:Lva/e;

    :try_start_0
    invoke-virtual {v1}, Lva/e;->d()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lva/e;->h()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Failed to get empty indices."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    iput-object v2, p0, Lma/h;->i:Ljava/util/LinkedList;

    const-string v1, "Simulate merkle tree updates from instructions."

    invoke-static {v0, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_b

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getOperation()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lma/h;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/g;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    check-cast v2, Lma/f;

    iget v0, v2, Lma/f;->a:I

    iget-object v2, v2, Lma/f;->b:Lma/h;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v3

    aget-object v1, v1, v4

    iget-object v5, v2, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Lma/h;->f:Ljava/util/HashMap;

    new-instance v6, Lja/a;

    invoke-direct {v6, v3, v5}, Lja/a;-><init>(II)V

    invoke-static {v0, v1}, Lma/h;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Lma/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v2, Lma/h;->b:Lqa/b;

    invoke-virtual {v5, v0}, Lqa/b;->b(Ljava/lang/String;)I

    move-result v5

    iget-object v2, v2, Lma/h;->f:Ljava/util/HashMap;

    new-instance v6, Lja/a;

    invoke-direct {v6, v3, v5}, Lja/a;-><init>(II)V

    invoke-static {v0, v1}, Lma/h;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v0, v1}, Lma/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v2, v0, v1}, Lma/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v1, v3

    iget-object v1, v2, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sget-object v5, Lg2/m;->g:[B

    if-eqz v1, :cond_6

    iget-object v1, v2, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v6, v2, Lma/h;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lma/h;->i:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, v2, Lma/h;->f:Ljava/util/HashMap;

    new-instance v2, Lja/a;

    invoke-direct {v2, v3, v1}, Lja/a;-><init>(II)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v0}, Lma/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lma/h;->b:Lqa/b;

    invoke-virtual {v1, v0}, Lqa/b;->b(Ljava/lang/String;)I

    move-result v1

    iget-object v6, v2, Lma/h;->g:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lma/h;->i:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, v2, Lma/h;->f:Ljava/util/HashMap;

    new-instance v2, Lja/a;

    invoke-direct {v2, v3, v1}, Lja/a;-><init>(II)V

    :goto_4
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    iget p1, p0, Lma/h;->d:I

    if-lez p1, :cond_10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ll9/b;->c0(I)I

    move-result v2

    move v5, v3

    :goto_5
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_d

    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_8

    move v7, v4

    goto :goto_6

    :cond_8
    move v7, v3

    :goto_6
    if-eqz v7, :cond_9

    new-instance v7, Lja/a;

    invoke-direct {v7, v5, p1}, Lja/a;-><init>(II)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    if-ne p1, v4, :cond_a

    move p1, v3

    goto :goto_8

    :cond_a
    if-nez v6, :cond_b

    move v6, v4

    goto :goto_7

    :cond_b
    move v6, v3

    :goto_7
    div-int/lit8 p1, p1, 0x2

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 p1, p1, 0x1

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    iput-object v0, p0, Lma/h;->h:Ljava/util/HashSet;

    iget-object p1, p0, Lma/h;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lma/c;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lma/c;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget v0, p0, Lma/h;->d:I

    invoke-static {v0}, Ll9/b;->c0(I)I

    move-result v0

    move v5, v4

    :goto_9
    if-ge v5, v0, :cond_f

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lja/a;

    iget-object v8, p0, Lma/h;->f:Ljava/util/HashMap;

    new-instance v9, Lja/a;

    iget v10, v7, Lja/a;->a:I

    add-int/lit8 v10, v10, -0x1

    iget v11, v7, Lja/a;->b:I

    mul-int/2addr v11, v1

    invoke-direct {v9, v10, v11}, Lja/a;-><init>(II)V

    invoke-virtual {p0, v9}, Lma/h;->b(Lja/a;)[B

    move-result-object v9

    new-instance v10, Lja/a;

    iget v12, v7, Lja/a;->a:I

    add-int/lit8 v12, v12, -0x1

    add-int/2addr v11, v4

    invoke-direct {v10, v12, v11}, Lja/a;-><init>(II)V

    invoke-virtual {p0, v10}, Lma/h;->b(Lja/a;)[B

    move-result-object v10

    new-array v11, v1, [[B

    aput-object v9, v11, v3

    aput-object v10, v11, v4

    invoke-static {v11}, Lg2/m;->h([[B)[B

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v6, Lma/c;

    invoke-direct {v6, v2}, Lma/c;-><init>(I)V

    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_f
    :goto_b
    iget-object p0, p0, Lma/h;->f:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size must be greater than zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Failed to check empty."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
