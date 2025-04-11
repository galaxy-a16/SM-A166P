.class public Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerAgent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::SolbManager::PeerAgent"


# instance fields
.field private mFabricChainPeerAgent:Lya/b;

.field private final peerExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    move-object v2, p0

    iput-object v0, v2, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->peerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/samsung/android/kmxservice/trustchain/manager/h;

    move-object v1, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/kmxservice/trustchain/manager/h;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "construction"

    const-string v2, "TrustChain::SolbManager::PeerAgent"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$sync$5()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$destroy$3()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$registerConsensusCallback$8(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$reset$4()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$localQuery$6(Ljava/lang/String;)Landroid/util/Pair;

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

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->peerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/e;

    const/4 v1, 0x1

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

.method public static synthetic f(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$start$1()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$new$0(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$stop$2()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->lambda$needSync$7()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lya/b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    return-object p0
.end method

.method private lambda$destroy$3()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    :try_start_0
    const-string v1, "destroy peer agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SDK_PEER"

    const-string v2, "Clear local database."

    invoke-static {v1, v2}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lya/b;->d:Lo2/i;

    invoke-virtual {p0}, Lo2/i;->e()V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "destroy"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private synthetic lambda$localQuery$6(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const-string v0, ""

    const-string v1, "TrustChain::SolbManager::PeerAgent"

    const-string v2, "localQuery"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    invoke-virtual {p0, p1}, Lya/b;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p1, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoSuchKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {p0, v2, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private synthetic lambda$needSync$7()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    const-string v1, "isLatestStable"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    invoke-virtual {p0}, Lya/b;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NOT_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_SOLB_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainStatusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)Ljava/lang/Boolean;
    .locals 8

    new-instance v7, Lya/b;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lya/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lha/a;Lpa/a;Lpa/c;Lpa/d;)V

    iput-object v7, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private lambda$registerConsensusCallback$8(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent$ConsensusCallback;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    iget-object p0, p0, Lya/b;->i:Lka/a;

    iput-object v0, p0, Lka/e;->b:Lka/f;

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "registerConsensusCallback"

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private lambda$reset$4()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    :try_start_0
    const-string v1, "reset peer agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    iget-object v1, p0, Lya/b;->f:Lna/d;

    invoke-virtual {v1}, Lna/e;->a()V

    iget-object p0, p0, Lya/b;->b:Lpa/a;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lpa/a;->setMyLastBlockNumber(I)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "reset"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private synthetic lambda$start$1()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    :try_start_0
    const-string v1, "start peer agent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    invoke-virtual {p0}, Lya/b;->d()V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "start"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private lambda$stop$2()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    const-string v0, "TrustChain::SolbManager::PeerAgent"

    :try_start_0
    const-string v1, "stop peer agent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "SDK_PEER"

    const-string v2, "Stop listening incoming events from the messenger."

    invoke-static {v1, v2}, Lla/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lya/b;->c:Lpa/c;

    invoke-virtual {p0}, Lpa/c;->unsubscribeAll()V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "stop"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private lambda$sync$5()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    const-string v0, "sync"

    const-string v1, "TrustChain::SolbManager::PeerAgent"

    :try_start_0
    const-string v2, "sync peer agent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->mFabricChainPeerAgent:Lya/b;

    iget-object p0, p0, Lya/b;->g:Lcom/samsung/security/fabric/chain/core/manager/sync/d;

    invoke-virtual {p0}, Lcom/samsung/security/fabric/chain/core/manager/sync/d;->d()V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/FabricChainNoValidResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/regulation/FabricChainRegulationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/security/fabric/chain/core/exception/chain/status/FabricChainStatusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method


# virtual methods
.method public destroy()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public localQuery(Ljava/lang/String;)Landroid/util/Pair;
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

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroid/util/Pair;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v2, ""

    invoke-direct {p1, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public needSync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public registerConsensusCallback(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/auth/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/auth/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public reset()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public start()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public stop()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public sync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/g;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/g;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->executeTask(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method
