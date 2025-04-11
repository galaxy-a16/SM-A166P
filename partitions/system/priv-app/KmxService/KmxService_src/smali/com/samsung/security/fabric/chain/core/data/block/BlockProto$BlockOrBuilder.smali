.class public interface abstract Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/t8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BlockOrBuilder"
.end annotation


# virtual methods
.method public abstract synthetic findInitializationErrors()Ljava/util/List;
.end method

.method public abstract synthetic getAllFields()Ljava/util/Map;
.end method

.method public abstract getBlockNumber()I
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/n8;
.end method

.method public abstract synthetic getDefaultInstanceForType()Lcom/google/protobuf/r8;
.end method

.method public abstract synthetic getDescriptorForType()Lcom/google/protobuf/h3;
.end method

.method public abstract synthetic getField(Lcom/google/protobuf/n3;)Ljava/lang/Object;
.end method

.method public abstract getGlobalStateMerkleTreeRootValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getInitializationErrorString()Ljava/lang/String;
.end method

.method public abstract synthetic getOneofFieldDescriptor(Lcom/google/protobuf/s3;)Lcom/google/protobuf/n3;
.end method

.method public abstract getPreviousBlockHashValue()Lcom/google/protobuf/ByteString;
.end method

.method public abstract synthetic getRepeatedField(Lcom/google/protobuf/n3;I)Ljava/lang/Object;
.end method

.method public abstract synthetic getRepeatedFieldCount(Lcom/google/protobuf/n3;)I
.end method

.method public abstract getTransactions(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;
.end method

.method public abstract getTransactionsCount()I
.end method

.method public abstract getTransactionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionsOrBuilder(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$TransactionOrBuilder;
.end method

.method public abstract getTransactionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$TransactionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract synthetic getUnknownFields()Lcom/google/protobuf/ob;
.end method

.method public abstract synthetic hasField(Lcom/google/protobuf/n3;)Z
.end method

.method public abstract synthetic hasOneof(Lcom/google/protobuf/s3;)Z
.end method

.method public abstract synthetic isInitialized()Z
.end method
