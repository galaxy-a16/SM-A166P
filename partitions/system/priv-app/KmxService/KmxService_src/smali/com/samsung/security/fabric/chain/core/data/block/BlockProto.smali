.class public final Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Blockchain;,
        Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockchainOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$Block;,
        Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$BlockOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_Block_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Block_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_Blockchain_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Blockchain_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "\n\u000bblock.proto\u001a\u0011transaction.proto\"\u0091\u0001\n\u0005Block\u0012\u0014\n\u000cblock_number\u0018\u0001 \u0001(\r\u0012!\n\u0019previous_block_hash_value\u0018\u0002 \u0001(\u000c\u0012+\n#global_state_merkle_tree_root_value\u0018\u0003 \u0001(\u000c\u0012\"\n\u000ctransactions\u0018\u0004 \u0003(\u000b2\u000c.Transaction\"$\n\nBlockchain\u0012\u0016\n\u0006blocks\u0018\u0001 \u0003(\u000b2\u0006.BlockB?\n1com.samsung.security.fabric.chain.core.data.blockB\nBlockProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto$1;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Block_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v3, "GlobalStateMerkleTreeRootValue"

    const-string v4, "Transactions"

    const-string v5, "BlockNumber"

    const-string v6, "PreviousBlockHashValue"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Block_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Blockchain_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Blocks"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Blockchain_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Block_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Block_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Blockchain_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->internal_static_Blockchain_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/block/BlockProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
