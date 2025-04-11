.class public abstract Lqa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Ljava/lang/String;)I
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    check-cast v0, Lxa/c;

    iget-object v1, v0, Lxa/c;->b:Lva/e;

    :try_start_0
    invoke-virtual {v1}, Lva/e;->d()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string p0, "Failed to get empty index."

    :try_start_1
    invoke-virtual {v1}, Lva/e;->i()Lwa/b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v3, v2, Lwa/b;->a:J

    invoke-virtual {v1, v3, v4}, Lva/e;->e(J)V

    iget p0, v2, Lwa/b;->b:I

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    invoke-direct {p1, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p0}, Lqa/b;->d()I

    move-result p0

    :goto_1
    :try_start_2
    new-instance v1, Lwa/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lwa/e;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lxa/c;->a:Lva/m;

    invoke-virtual {p0, v1}, Lva/m;->j(Lwa/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "Failed to insert."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    const-string p1, "Failed to check empty."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0
.end method

.method public abstract d()I
.end method

.method public abstract e(Ljava/lang/String;)Ljava/util/Map;
.end method
