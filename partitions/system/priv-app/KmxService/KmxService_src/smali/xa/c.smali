.class public final Lxa/c;
.super Lqa/b;
.source "SourceFile"


# instance fields
.field public final a:Lva/m;

.field public final b:Lva/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lqa/b;-><init>()V

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->h()Lva/m;

    move-result-object v0

    iput-object v0, p0, Lxa/c;->a:Lva/m;

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->d()Lva/e;

    move-result-object p1

    iput-object p1, p0, Lxa/c;->b:Lva/e;

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;
    .locals 1

    new-instance v0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    invoke-direct {v0, p0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lxa/c;->a:Lva/m;

    invoke-virtual {p0, p1}, Lva/m;->c(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to check exist."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "Failed to get index."

    :try_start_0
    iget-object p0, p0, Lxa/c;->a:Lva/m;

    invoke-virtual {p0, p1}, Lva/m;->h(Ljava/lang/String;)Lwa/e;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lwa/e;->a:I

    return p0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    invoke-direct {p0, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0
.end method

.method public final d()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lxa/c;->a:Lva/m;

    invoke-virtual {v0}, Lva/m;->d()I

    move-result v0

    iget-object p0, p0, Lxa/c;->b:Lva/e;

    invoke-virtual {p0}, Lva/e;->d()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "Failed to check exist."

    invoke-static {v0, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0
.end method

.method public final e(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lxa/c;->a:Lva/m;

    invoke-virtual {p0, p1}, Lva/m;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lxa/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lxa/a;-><init>(I)V

    new-instance v0, Lxa/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lxa/a;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to pattern match."

    invoke-static {p1, p0}, Lxa/c;->f(Ljava/lang/String;Ljava/lang/Exception;)Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainStateRepositoryException;

    move-result-object p0

    throw p0
.end method
