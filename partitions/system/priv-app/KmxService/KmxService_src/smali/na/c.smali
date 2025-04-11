.class public abstract synthetic Lna/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->values()[Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lna/c;->a:[I

    :try_start_0
    sget-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lna/c;->a:[I

    sget-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lna/c;->a:[I

    sget-object v1, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
