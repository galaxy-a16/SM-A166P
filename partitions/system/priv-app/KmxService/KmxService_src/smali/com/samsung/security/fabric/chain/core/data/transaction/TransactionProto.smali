.class public final Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;,
        Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$TransactionOrBuilder;,
        Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;,
        Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$InstructionOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/p3;

.field private static final internal_static_Instruction_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Instruction_fieldAccessorTable:Lcom/google/protobuf/q6;

.field private static final internal_static_Transaction_descriptor:Lcom/google/protobuf/h3;

.field private static final internal_static_Transaction_fieldAccessorTable:Lcom/google/protobuf/q6;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u0011transaction.proto\"\u0080\u0001\n\u000bInstruction\u0012)\n\toperation\u0018\u0001 \u0001(\u000e2\u0016.Instruction.Operation\u0012\u000b\n\u0003key\u0018\u0002 \u0001(\t\u0012\r\n\u0005value\u0018\u0003 \u0001(\t\"*\n\tOperation\u0012\u0008\n\u0004POST\u0010\u0000\u0012\u0007\n\u0003PUT\u0010\u0001\u0012\n\n\u0006DELETE\u0010\u0002\"R\n\u000bTransaction\u0012\r\n\u0005nonce\u0018\u0001 \u0001(\t\u0012!\n\u000binstruction\u0018\u0002 \u0001(\u000b2\u000c.Instruction\u0012\u0011\n\ttimestamp\u0018\u0003 \u0001(\u0004BK\n7com.samsung.security.fabric.chain.core.data.transactionB\u0010TransactionProtob\u0006proto3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$1;

    invoke-direct {v1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/p3;

    invoke-static {v0, v3, v1}, Lcom/google/protobuf/p3;->j([Ljava/lang/String;[Lcom/google/protobuf/p3;Lcom/google/protobuf/o3;)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Instruction_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Key"

    const-string v3, "Value"

    const-string v4, "Operation"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Instruction_fieldAccessorTable:Lcom/google/protobuf/q6;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->getDescriptor()Lcom/google/protobuf/p3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/p3;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    sput-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Transaction_descriptor:Lcom/google/protobuf/h3;

    new-instance v1, Lcom/google/protobuf/q6;

    const-string v2, "Instruction"

    const-string v3, "Timestamp"

    const-string v4, "Nonce"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/q6;-><init>(Lcom/google/protobuf/h3;[Ljava/lang/String;)V

    sput-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Transaction_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Instruction_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Instruction_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/google/protobuf/h3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Transaction_descriptor:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public static bridge synthetic d()Lcom/google/protobuf/q6;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->internal_static_Transaction_fieldAccessorTable:Lcom/google/protobuf/q6;

    return-object v0
.end method

.method public static bridge synthetic e(Lcom/google/protobuf/p3;)V
    .locals 0

    sput-object p0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->descriptor:Lcom/google/protobuf/p3;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/p3;
    .locals 1

    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->descriptor:Lcom/google/protobuf/p3;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/q4;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto;->registerAllExtensions(Lcom/google/protobuf/t4;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/t4;)V
    .locals 0

    .line 2
    return-void
.end method
