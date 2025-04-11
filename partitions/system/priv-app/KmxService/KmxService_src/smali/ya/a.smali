.class public final Lya/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lha/a;

.field public final b:Lpa/a;

.field public final c:Lpa/c;

.field public final d:Lpa/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lha/a;Lpa/a;Lpa/c;Lpa/d;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lya/a;->a:Lha/a;

    iput-object p3, p0, Lya/a;->b:Lpa/a;

    iput-object p4, p0, Lya/a;->c:Lpa/c;

    iput-object p5, p0, Lya/a;->d:Lpa/d;

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getConfiguration()Lga/a;

    move-result-object p0

    iget v3, p0, Lga/a;->c:I

    iget v4, p0, Lga/a;->d:I

    iget v2, p0, Lga/a;->b:I

    iget v5, p0, Lga/a;->e:I

    iget v6, p0, Lga/a;->f:I

    const/4 v7, 0x0

    new-instance p0, Lga/a;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lga/a;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->setConfiguration(Lga/a;)V

    return-void
.end method

.method public static a(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;
    .locals 2

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setOperation(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;

    move-result-object p0

    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;->newBuilder()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->setInstruction(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->setNonce(Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->setTimestamp(J)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction$Builder;->build()Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->DELETE:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lya/a;->a(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    move-result-object p1

    const-string v0, "SDK_CLIENT"

    const-string v1, "Try submitting transaction to peer(s)."

    invoke-static {v0, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lma/e;

    iget-object v1, p0, Lya/a;->a:Lha/a;

    iget-object v2, p0, Lya/a;->b:Lpa/a;

    iget-object v3, p0, Lya/a;->c:Lpa/c;

    iget-object v4, p0, Lya/a;->d:Lpa/d;

    invoke-direct {v0, v1, v2, v3, v4}, Lma/e;-><init>(Lha/a;Lpa/a;Lpa/c;Lpa/d;)V

    invoke-virtual {v0, p1}, Lma/e;->f(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "SDK_CLIENT"

    const-string v1, "Try querying key to peer(s)."

    invoke-static {v0, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lma/j;

    iget-object v1, p0, Lya/a;->a:Lha/a;

    iget-object v2, p0, Lya/a;->b:Lpa/a;

    iget-object v3, p0, Lya/a;->c:Lpa/c;

    invoke-direct {v0, v1, v2, v3}, Lma/j;-><init>(Lha/a;Lpa/a;Lpa/c;)V

    invoke-virtual {v0, p1}, Lma/j;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;->PUT:Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;

    invoke-static {v0, p1, p2}, Lya/a;->a(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Instruction$Operation;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;

    move-result-object p1

    const-string p2, "SDK_CLIENT"

    const-string v0, "Try submitting transaction to peer(s)."

    invoke-static {p2, v0}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lma/e;

    iget-object v0, p0, Lya/a;->a:Lha/a;

    iget-object v1, p0, Lya/a;->b:Lpa/a;

    iget-object v2, p0, Lya/a;->c:Lpa/c;

    iget-object v3, p0, Lya/a;->d:Lpa/d;

    invoke-direct {p2, v0, v1, v2, v3}, Lma/e;-><init>(Lha/a;Lpa/a;Lpa/c;Lpa/d;)V

    invoke-virtual {p2, p1}, Lma/e;->f(Lcom/samsung/security/fabric/chain/core/data/transaction/TransactionProto$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
