.class public Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientAgent"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SolbManager::ClientAgent"


# instance fields
.field private final clientExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFabricChainClientAgent:Lya/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    new-instance v0, Lya/a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lya/a;-><init>(Ljava/lang/String;Lha/a;Lpa/a;Lpa/c;Lpa/d;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->mFabricChainClientAgent:Lya/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "construction"

    const-string p2, "TrustChain::SolbManager::ClientAgent"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->lambda$get$2(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->lambda$write$0(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->lambda$erase$1(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method private executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->clientExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/e;-><init>(Ljava/util/function/Supplier;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method private synthetic lambda$erase$1(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 4

    const-string v0, "erase"

    const-string v1, "TrustChain::SolbManager::ClientAgent"

    const-string v2, "erase : "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->mFabricChainClientAgent:Lya/a;

    invoke-virtual {p0, p1}, Lya/a;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMutexOccupiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private synthetic lambda$get$2(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5

    const-string v0, ""

    const-string v1, "get"

    const-string v2, "TrustChain::SolbManager::ClientAgent"

    const-string v3, "get : "

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->mFabricChainClientAgent:Lya/a;

    invoke-virtual {p0, p1}, Lya/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private synthetic lambda$write$0(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 4

    const-string v0, "write"

    const-string v1, "TrustChain::SolbManager::ClientAgent"

    const-string v2, "write key : "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->mFabricChainClientAgent:Lya/a;

    invoke-virtual {p0, p1, p2}, Lya/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainMutexOccupiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/consensus/FabricChainConsensusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method


# virtual methods
.method public erase(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/f;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;I)V

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/f;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;I)V

    new-instance p1, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p1, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EMPTY_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method
