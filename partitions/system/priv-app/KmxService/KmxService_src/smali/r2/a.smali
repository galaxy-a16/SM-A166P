.class public final synthetic Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lr2/a;->a:I

    iput-object p1, p0, Lr2/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lr2/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr2/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lr2/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lr2/a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lr2/a;->e:Ljava/lang/Object;

    iget-object v4, p0, Lr2/a;->d:Ljava/lang/Object;

    iget-object v5, p0, Lr2/a;->c:Ljava/lang/Object;

    iget-object p0, p0, Lr2/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast p0, Ls6/a;

    check-cast v5, Lw5/h;

    check-cast v4, Li6/b;

    check-cast v3, Lio/netty/channel/EventLoop;

    sget-object v0, Li6/d;->c:Lv5/a;

    invoke-virtual {p0}, Ls6/a;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Li6/c;

    invoke-direct {v1, p0, v5, v4, v3}, Li6/c;-><init>(Ls6/a;Lw5/h;Li6/b;Lio/netty/channel/EventLoop;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :pswitch_1
    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;

    check-cast v5, Ljava/lang/Throwable;

    check-cast v4, Ljava/util/function/BiConsumer;

    check-cast v3, Ljava/util/function/Consumer;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    iget-object v0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/c;->e:Lv5/a;

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v0, v1, v5}, Lv5/a;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lh6/e;->a:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v4, p0, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_2
    check-cast p0, Lr2/c;

    check-cast v5, Lo2/j;

    check-cast v4, Lcom/google/firebase/concurrent/h;

    check-cast v3, Lo2/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lr2/c;->f:Ljava/util/logging/Logger;

    :try_start_0
    iget-object v6, p0, Lr2/c;->c:Lp2/f;

    iget-object v7, v5, Lo2/j;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lp2/f;->a(Ljava/lang/String;)Lp2/h;

    move-result-object v6

    if-nez v6, :cond_2

    const-string p0, "Transport backend \'%s\' is not registered"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v5, Lo2/j;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    check-cast v6, Lm2/d;

    invoke-virtual {v6, v3}, Lm2/d;->a(Lo2/h;)Lo2/h;

    move-result-object v1

    iget-object v3, p0, Lr2/c;->e:Lu2/b;

    new-instance v6, Lr2/b;

    invoke-direct {v6, p0, v5, v1, v2}, Lr2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v3, Lt2/k;

    invoke-virtual {v3, v6}, Lt2/k;->x(Lu2/a;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :goto_3
    check-cast p0, Lna/e;

    check-cast v5, Ljava/util/List;

    check-cast v4, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    check-cast v3, Lia/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v0

    invoke-static {v5}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v6

    const-string v7, "Block DB: append new blocks ["

    const-string v8, "-"

    const-string v9, "]."

    invoke-static {v7, v0, v8, v6, v9}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "WRITER"

    invoke-static {v6, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lna/e;->a:Lo2/i;

    iget-object v7, v0, Lo2/i;->a:Ljava/lang/Object;

    check-cast v7, Lqa/a;

    check-cast v7, Lxa/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v10, Lxa/a;

    invoke-direct {v10, v2}, Lxa/a;-><init>(I)V

    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v7, v7, Lxa/b;->a:Lva/a;

    check-cast v7, Lva/c;

    iget-object v8, v7, Lva/c;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    iget-object v7, v7, Lva/c;->b:Lva/b;

    invoke-virtual {v7, v2}, Landroidx/room/g;->insert(Ljava/lang/Iterable;)V

    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    invoke-static {v5}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v2

    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getBlockNumber()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Seal DB: store new seal ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lo2/i;->b:Ljava/lang/Object;

    check-cast v0, Lqa/c;

    check-cast v0, Lxa/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    new-instance v5, Lwa/d;

    invoke-direct {v5, v2, v4}, Lwa/d;-><init>(ILcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    iget-object v0, v0, Lxa/e;->a:Lva/g;

    check-cast v0, Lva/j;

    iget-object v2, v0, Lva/j;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v0, v0, Lva/j;->b:Lva/h;

    invoke-virtual {v0, v5}, Landroidx/room/g;->insert(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    check-cast p0, Lna/d;

    const-string v0, "State DB: execute instructions."

    invoke-static {v6, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lia/b;->a:Lia/a;

    iget-object v0, v0, Lia/a;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lna/e;->a:Lo2/i;

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getTransactionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lma/c;

    const/16 v7, 0x18

    invoke-direct {v5, v7}, Lma/c;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getOperation()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getValue()Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lna/c;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    iget-object v10, p0, Lna/e;->a:Lo2/i;

    if-eq v9, v1, :cond_a

    const/4 v11, 0x2

    if-eq v9, v11, :cond_7

    const/4 v5, 0x3

    if-eq v9, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Invalid operation: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lla/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v5, v3, Lo2/i;->e:Ljava/lang/Object;

    check-cast v5, Lqa/b;

    invoke-virtual {v5, v8}, Lqa/b;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, v3, Lo2/i;->e:Ljava/lang/Object;

    check-cast v5, Lqa/b;

    invoke-virtual {v5, v8}, Lqa/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v8}, Lqa/b;->b(Ljava/lang/String;)I

    move-result v7

    check-cast v5, Lxa/c;

    :try_start_7
    iget-object v8, v5, Lxa/c;->a:Lva/m;

    invoke-virtual {v8, v7}, Lva/m;->e(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    new-instance v8, Lwa/b;

    invoke-direct {v8, v7}, Lwa/b;-><init>(I)V

    iget-object v5, v5, Lxa/c;->b:Lva/e;

    invoke-virtual {v5, v8}, Lva/e;->j(Lwa/b;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    const-string v0, "Failed to insert empty index."

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    const-string v0, "Failed to delete."

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v7, v3, Lo2/i;->e:Ljava/lang/Object;

    check-cast v7, Lqa/b;

    invoke-virtual {v7, v8}, Lqa/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v10, Lo2/i;->e:Ljava/lang/Object;

    check-cast v7, Lqa/b;

    invoke-virtual {v7, v2, v8, v5}, Lqa/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v7, v3, Lo2/i;->e:Ljava/lang/Object;

    check-cast v7, Lqa/b;

    invoke-virtual {v7, v8}, Lqa/b;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7, v8}, Lqa/b;->b(Ljava/lang/String;)I

    move-result v8

    check-cast v7, Lxa/c;

    :try_start_9
    iget-object v7, v7, Lxa/c;->a:Lva/m;

    invoke-virtual {v7, v8, v2, v5}, Lva/m;->m(IILjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception p0

    const-string v0, "Failed to update."

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-virtual {v7, v2, v8, v5}, Lqa/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    iget-object v7, v10, Lo2/i;->e:Ljava/lang/Object;

    check-cast v7, Lqa/b;

    invoke-virtual {v7, v2, v8, v5}, Lqa/b;->c(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    const-string v0, "Node DB: upsert updated merkle tree nodes."

    invoke-static {v6, v0}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lo2/i;->d:Ljava/lang/Object;

    check-cast v0, Lt6/a;

    iget-object p0, p0, Lna/e;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lxa/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lxa/a;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iget-object v0, v0, Lt6/a;->b:Ljava/lang/Object;

    check-cast v0, Lva/f;

    invoke-virtual {v0, p0}, Lva/f;->l(Ljava/util/List;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    return-void

    :catch_4
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string v1, "Failed to put data."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0

    :catchall_0
    move-exception p0

    :try_start_b
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :catch_5
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    const-string v1, "Failed to put seal."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainSealRepositoryException;

    throw p0

    :catchall_1
    move-exception p0

    :try_start_c
    invoke-virtual {v8}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    :catch_6
    move-exception p0

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;

    const-string v1, "Failed to append blocks."

    invoke-direct {v0, v1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainBlockRepositoryException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
