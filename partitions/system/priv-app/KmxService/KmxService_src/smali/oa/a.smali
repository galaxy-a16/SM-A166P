.class public final synthetic Loa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Loa/b;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Loa/b;Ljava/util/Map;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loa/a;->a:Loa/b;

    iput-object p2, p0, Loa/a;->b:Ljava/util/Map;

    iput-wide p3, p0, Loa/a;->c:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Loa/a;->a:Loa/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loa/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object v1

    sget-object v2, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->POST:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-virtual {v1, v2}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setOperation(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object p1

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->setInstruction(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object p1

    iget-wide v0, p0, Loa/a;->c:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->setTimestamp(J)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    move-result-object p0

    return-object p0
.end method
