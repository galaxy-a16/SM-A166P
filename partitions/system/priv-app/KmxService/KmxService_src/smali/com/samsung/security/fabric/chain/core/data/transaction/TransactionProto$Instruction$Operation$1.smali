.class Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/a7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/a7;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/z6;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation$1;->findValueByNumber(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object p0

    return-object p0
.end method

.method public findValueByNumber(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->forNumber(I)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    move-result-object p0

    return-object p0
.end method
