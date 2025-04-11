.class public final Lcom/samsung/security/fabric/chain/core/manager/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpa/a;

.field public final b:Lna/b;

.field public final c:Lna/d;


# direct methods
.method public constructor <init>(Lpa/a;Lna/b;Lna/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->a:Lpa/a;

    iput-object p2, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->b:Lna/b;

    iput-object p3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->c:Lna/d;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->b:Lna/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Try to rollback local DB to block("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RECOVERY"

    invoke-static {v2, v1}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->a:Lpa/a;

    iget-object p0, p0, Lcom/samsung/security/fabric/chain/core/manager/sync/a;->c:Lna/d;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lna/e;->a()V

    invoke-interface {v3, v1}, Lpa/a;->setMyLastBlockNumber(I)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lsa/a;->c(I)I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v4, v5}, Lna/b;->a(II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, p1}, Lna/b;->c(I)Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    move-result-object v0

    invoke-virtual {p0}, Lna/e;->a()V

    new-instance v5, Lia/b;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lia/a;->a(Ljava/util/List;)V

    new-instance v6, Lia/a;

    invoke-direct {v6, v4}, Lia/a;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v6, v0}, Lia/b;-><init>(Lia/a;Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;)V

    invoke-virtual {p0, v5}, Lna/e;->b(Lia/b;)V

    invoke-interface {v3, p1}, Lpa/a;->setMyLastBlockNumber(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;

    const-string v0, "Empty data for chained blocks."

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/data/FabricChainEmptyBlockListException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to rollback. Try to reset."

    invoke-static {v2, v0, p1}, Lla/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lna/e;->a()V

    invoke-interface {v3, v1}, Lpa/a;->setMyLastBlockNumber(I)V

    :goto_0
    return-void
.end method
