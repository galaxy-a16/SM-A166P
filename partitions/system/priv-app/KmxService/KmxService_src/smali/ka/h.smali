.class public final Lka/h;
.super Lka/e;
.source "SourceFile"


# instance fields
.field public final c:Lpa/d;

.field public final d:Lma/a;


# direct methods
.method public constructor <init>(Lpa/d;Lma/a;Lpa/c;)V
    .locals 0

    invoke-direct {p0, p3}, Lka/e;-><init>(Lpa/c;)V

    iput-object p1, p0, Lka/h;->c:Lpa/d;

    iput-object p2, p0, Lka/h;->d:Lma/a;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Ljava/lang/Exception;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 1

    invoke-static {}, Lka/e;->h()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setResponseMessage(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 0

    const/16 p0, 0x1001

    return p0
.end method

.method public final g(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/GeneratedMessageV3;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;

    const-string v2, "SUBMIT_REQ_HANDLER"

    const-string v3, "Received submit request."

    invoke-static {v2, v3}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->getTransaction()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->getSignature()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v1

    new-instance v3, Lia/e;

    invoke-direct {v3, v1, v2}, Lia/e;-><init>(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;Ljava/lang/Object;)V

    iget-object v4, v0, Lka/h;->c:Lpa/d;

    invoke-interface {v4}, Lpa/d;->getCurrentMutex()Lia/c;

    move-result-object v4

    iget-object v5, v4, Lia/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ")."

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lg2/m;->g([B)[B

    move-result-object v1

    iget-object v2, v4, Lia/c;->b:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lka/h;->d:Lma/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "BLOCK_GENERATOR"

    const-string v0, "Generate new signed block."

    invoke-static {v3, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lma/a;->e:Lpa/a;

    invoke-interface {v0}, Lpa/a;->getPeerStatusList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ln0/d;

    invoke-direct {v5, v4}, Ln0/d;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Ln0/d;->a()I

    move-result v4

    iget-object v6, v2, Lma/a;->c:Lna/b;

    invoke-virtual {v6}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v8

    if-ne v4, v8, :cond_16

    const-string v4, "Get public key map from the member manager."

    invoke-static {v3, v4}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lpa/a;->getPublicKeyMap()Ljava/util/Map;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iget-object v8, v2, Lma/a;->b:Lha/a;

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/e;

    const-string v9, "VALIDATOR"

    const-string v10, "Verify transaction with signature."

    invoke-static {v9, v10}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lia/e;->a:Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    invoke-virtual {v10}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSigner()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    iget-object v13, v0, Lia/e;->b:Ljava/lang/Object;

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v10}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v10

    move-object v11, v13

    check-cast v11, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    :try_start_0
    invoke-virtual {v11}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lg2/m;->g([B)[B

    move-result-object v11

    invoke-interface {v8, v11, v10, v0}, Lha/a;->verify([B[B[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v8, "Failed to verify."

    invoke-static {v9, v8, v0}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    check-cast v13, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v5}, Ln0/d;->a()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v4, v5, Ln0/d;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lma/c;

    const/16 v9, 0x9

    invoke-direct {v5, v9}, Lma/c;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lna/b;->b()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v5

    add-int/lit8 v9, v5, 0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v0}, Lsa/a;->e(II)Z

    move-result v11

    if-eqz v11, :cond_c

    new-instance v4, Loa/b;

    invoke-direct {v4, v6}, Loa/b;-><init>(Lna/b;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const-string v9, "EXTRACTOR"

    const-string v10, "Extract preservable states to new transactions."

    invoke-static {v9, v10}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v9

    iget v9, v9, Lga/a;->f:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v9

    iget-object v6, v6, Lna/b;->a:Lo2/i;

    iget-object v6, v6, Lo2/i;->e:Ljava/lang/Object;

    check-cast v6, Lqa/b;

    check-cast v6, Lxa/c;

    iget-object v6, v6, Lxa/c;->a:Lva/m;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "SELECT * FROM state ORDER BY block_stamp DESC, `index` DESC LIMIT ?"

    invoke-static {v1, v9}, Landroidx/room/d0;->d(ILjava/lang/String;)Landroidx/room/d0;

    move-result-object v9

    int-to-long v10, v10

    invoke-virtual {v9, v1, v10, v11}, Landroidx/room/d0;->W(IJ)V

    iget-object v1, v6, Lva/m;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v1, v6, Lva/m;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/room/RoomDatabase;

    invoke-static {v1, v9}, Lkotlinx/coroutines/a0;->B(Landroidx/room/RoomDatabase;Landroidx/room/d0;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    const-string v6, "index"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v10, "key"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "value"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "block_stamp"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/m;->f(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_4

    move-object/from16 v15, v16

    goto :goto_5

    :cond_4
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_5
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    :goto_6
    move/from16 p0, v6

    move-object/from16 v6, v16

    goto :goto_7

    :cond_5
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    :goto_7
    move/from16 p1, v10

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v16, v11

    new-instance v11, Lwa/e;

    invoke-direct {v11, v14, v10, v15, v6}, Lwa/e;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v6, p0

    move/from16 v10, p1

    move/from16 v11, v16

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Landroidx/room/d0;->i()V

    invoke-interface {v13}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lxa/a;

    const/4 v9, 0x3

    invoke-direct {v6, v9}, Lxa/a;-><init>(I)V

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v6, Lma/c;

    const/16 v9, 0x13

    invoke-direct {v6, v9}, Lma/c;-><init>(I)V

    new-instance v9, Lma/c;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Lma/c;-><init>(I)V

    new-instance v10, Lna/a;

    invoke-direct {v10}, Lna/a;-><init>()V

    new-instance v11, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/samsung/android/kmxservice/fabrickeystore/keystore/keys/b;-><init>(I)V

    invoke-static {v6, v9, v10, v11}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->getInstruction()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getOperation()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object v10

    sget-object v11, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    if-ne v10, v11, :cond_8

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    sget-object v11, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    if-ne v10, v11, :cond_9

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_9
    sget-object v11, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    if-ne v10, v11, :cond_7

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    invoke-virtual {v6}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->getTimestamp()J

    move-result-wide v6

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object v9

    iget v9, v9, Lga/a;->f:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v9, :cond_b

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v9

    goto :goto_9

    :cond_b
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v10, v11, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Loa/a;

    invoke-direct {v10, v4, v1, v6, v7}, Loa/a;-><init>(Loa/b;Ljava/util/Map;J)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/List;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->setBlockNumber(I)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v4

    invoke-static {v0}, Lsa/a;->c(I)I

    move-result v9

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Landroidx/room/d0;->i()V

    throw v0

    :cond_c
    :goto_a
    invoke-static {v4, v9, v0}, Lsa/a;->b(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_b

    :cond_d
    invoke-static {v1}, Lsa/a;->f(Ljava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v4

    :goto_b
    invoke-virtual {v4}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lg2/m;->g([B)[B

    move-result-object v1

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    const/16 v6, 0xc

    invoke-static {v6, v4}, Landroidx/activity/b;->w(ILjava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v0}, Lsa/a;->e(II)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/hivemq/client/internal/mqtt/handler/auth/b;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v2, v5}, Lcom/hivemq/client/internal/mqtt/handler/auth/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    goto/16 :goto_10

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ll9/b;->c0(I)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_14

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v9, :cond_f

    new-instance v12, Lja/a;

    invoke-direct {v12, v5, v11}, Lja/a;-><init>(II)V

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_10

    const/4 v11, 0x1

    goto :goto_e

    :cond_10
    const/4 v11, 0x0

    :goto_e
    if-eqz v11, :cond_11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v11, 0x0

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    if-ge v11, v12, :cond_12

    mul-int/lit8 v12, v11, 0x2

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    const/4 v15, 0x1

    add-int/2addr v12, v15

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    new-array v13, v13, [[B

    const/16 v16, 0x0

    aput-object v14, v13, v16

    aput-object v12, v13, v15

    invoke-static {v13}, Lg2/m;->h([[B)[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_12
    add-int/lit8 v5, v5, 0x1

    move-object v7, v9

    goto :goto_c

    :cond_13
    iget-object v5, v2, Lma/a;->d:Lma/h;

    invoke-virtual {v5, v4}, Lma/h;->e(Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    :cond_14
    :goto_10
    invoke-static {v4}, Ll9/b;->Y(Ljava/util/Map;)[B

    move-result-object v4

    invoke-static {v0, v1, v4, v10}, Lsa/a;->a(I[B[BLjava/util/List;)Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;->getBlockNumber()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sign block "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lla/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lg2/m;->g([B)[B

    move-result-object v1

    invoke-interface {v8, v1}, Lha/a;->sign([B)[B

    move-result-object v1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v3

    iget-object v2, v2, Lma/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->setSigner(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;

    move-result-object v1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setValid(Z)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setBlock(Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->setSignature(Lcom/samsung/security/fabric/chain/core/data/signature/SignatureProto$Signature;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitResponse;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainNoValidTransactionException;

    const-string v1, "No valid transactions."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainNoValidTransactionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string v0, "Failed to generate block: Local("

    const-string v1, ") is not latest ("

    invoke-static {v0, v8, v1, v4, v7}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainLocalStatusOutdatedException;

    invoke-direct {v1, v0}, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainLocalStatusOutdatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainRequestMismatchMutexException;

    const-string v1, "Requested transaction\'s hash value is different from the Mutex."

    invoke-direct {v0, v1}, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainRequestMismatchMutexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-string v0, "Requester ("

    const-string v2, ")is different from the Mutex Holder ("

    invoke-static {v0, v1, v2, v5, v7}, Landroidx/activity/b;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainRequestMismatchMutexException;

    invoke-direct {v1, v0}, Lcom/samsung/security/fabric/chain/core/exception/chain/blockgenerator/FabricChainRequestMismatchMutexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i(Lcom/google/protobuf/GeneratedMessageV3;)Z
    .locals 0

    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->hasTransaction()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->hasSignature()Z

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

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/samsung/security/fabric/chain/core/data/event/consensus/ConsensusProto$SubmitRequest;

    move-result-object p0

    return-object p0
.end method
