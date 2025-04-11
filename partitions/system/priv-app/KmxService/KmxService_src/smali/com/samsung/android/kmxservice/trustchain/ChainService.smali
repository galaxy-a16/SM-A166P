.class public Lcom/samsung/android/kmxservice/trustchain/ChainService;
.super Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub;
.source "SourceFile"


# static fields
.field private static final INITIALIZATION_TIMEOUT:I = 0x14

.field private static final NOT_REQUIRED:Z = false

.field private static final REQUIRED:Z = true

.field private static final TAG:Ljava/lang/String; = "TrustChain::ChainService"


# instance fields
.field private final mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

.field private mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFabricId:Ljava/lang/String;

.field private mInit:Ljava/util/concurrent/CountDownLatch;

.field private mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mMemberId:Ljava/lang/String;

.field private mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

.field private mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

.field private final mServiceExecutor:Ljava/util/concurrent/ExecutorService;

.field private mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

.field private requiredInitManager:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceInterface$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mCallbackMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mInit:Ljava/util/concurrent/CountDownLatch;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mFabricId:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->startInit()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->setSALoggingConfigs(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setSolbLogger()V

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 p3, 0xa

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->requiredInitManager:Z

    invoke-virtual {p2, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->requestSAToken(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic A(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$getDashboardInfoSelf$12()V

    return-void
.end method

.method public static synthetic B(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$syncTrustChain$18()V

    return-void
.end method

.method public static synthetic C(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$wakeupRequested$21(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$detectTrustedFabricAbnormality$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic E(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$writeData$5(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic F(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$updateSMPDetails$25()V

    return-void
.end method

.method public static synthetic G(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$syncTrustChain$16(I)V

    return-void
.end method

.method public static synthetic H(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$wakeupRequested$22(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic I(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$signedInSamsungAccount$26()V

    return-void
.end method

.method public static synthetic J(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$wakeupRequested$23()V

    return-void
.end method

.method public static synthetic K(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$getFabricDashboardInfo$10()V

    return-void
.end method

.method public static synthetic L(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$writeDataDashboard$4(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$syncTrustChain$17(I)V

    return-void
.end method

.method public static synthetic N(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$detectFabricAbnormality$13()V

    return-void
.end method

.method public static synthetic O(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$writeData$6(I)V

    return-void
.end method

.method public static synthetic P(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$addNewMember$19()V

    return-void
.end method

.method public static synthetic Q(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$updateFabric$24()V

    return-void
.end method

.method public static synthetic R(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$activateService$1()V

    return-void
.end method

.method public static synthetic S(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$getMemberDashboardInfo$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->doneInit()V

    return-void
.end method

.method public static synthetic U(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$readData$8(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic V(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$deleteMember$20()V

    return-void
.end method

.method public static synthetic W(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$detectMemberAbnormality$15(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic X(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$destroyService$3()V

    return-void
.end method

.method private actionPushBasedMessageConnect(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "TrustChain::ChainService"

    const-string v3, "fail sending wake up message. by "

    const-string v4, "apbmc, send wake up push : "

    const-string v5, "fail subscription of threshold topic. by "

    const-string v6, "fail syncing chain. by "

    const-string v7, "fail registering threshold. by "

    const-string v8, ", validTime : 30"

    const-string v9, "apbmc, register threshold to BB server, threshold : "

    const-string v10, "fail connecting message server. by "

    const-string v11, "fail starting peer. cannot start the chain. by "

    const-string v12, "chain is not available. by "

    const/4 v13, 0x1

    :try_start_0
    iget-object v14, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v14}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->isAvailable()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v12, "apbmc, ensure auth token for chain resource"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    sget-object v14, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    iget-object v12, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v12}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v11, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v11}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->connectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v10, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v10}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo()Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {v10}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getWakeupThreshold()J

    move-result-wide v10

    long-to-int v10, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->registerThreshold(II)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne v8, v9, :cond_2

    const-string v6, "apbmc, register threshold succeed, wake up other members"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v6, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->setWorkAfterThreshold(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->setWorkOnFailure(Ljava/lang/Runnable;)V

    const-string v0, "apbmc, subscribe ThresholdReached"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->subscribeThresholdReached()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "apbmc, start threshold timer : 30"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->startThresholdTimer()V

    iget-object v0, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->sendWakeUpPushMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->stopThresholdTimer()V

    iget-object v4, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->unsubscribeThreshold()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v4, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x8

    :try_start_1
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x7

    :try_start_3
    new-instance v3, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :try_start_4
    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_THRESHOLD_ALREADY_SATISFIED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne v8, v3, :cond_4

    const-string v3, "apbmc, active members are already satisfied"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->doChainAction(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v3, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v4, 0xd

    :try_start_5
    new-instance v3, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    :try_start_6
    iget-object v0, v1, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/16 v4, 0x9

    :try_start_7
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v4, 0x6

    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v4, 0xc

    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v4, 0x5

    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move v4, v13

    :goto_0
    const-string v3, "apbmc"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v2, 0x0

    move/from16 v3, p1

    invoke-direct {v1, v3, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    invoke-static {v13, v4}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    :goto_1
    return-void
.end method

.method public static activeScanCurrentDashboardInfo()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityScanner;->activeScanning()Landroid/util/Pair;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "security_status"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "security_status_cause"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "timestamp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "trust_level"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "encryption_public_key"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->getCause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "L1"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "not_defined"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->DASHBOARD_ITEMS:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainJsonBuilder;->getJson(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json build fail, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private addNewMember()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$deactivateService$2()V

    return-void
.end method

.method private checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z
    .locals 7

    const-string v0, "TrustChain::ChainService"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mInit:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string p2, "service initialization, initialization time was exceeded"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->checkValidServiceRegion()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p2, "Service is not supported in this country"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_COUNTRY_NOT_SUPPORTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    const-string p2, "service initialization, server is not activated"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_NOT_ACTIVATED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->checkValidSAToken()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "service initialization, samsung account service was not completely finished. check the account"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->isSaSignedIn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_NOT_SIGNED_IN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_7

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->getSaInfoFromSaInfo(Landroid/content/Context;)Lkotlin/Triple;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "check latest sa info : "

    invoke-direct {p5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_1

    :cond_5
    iget-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {p5, p3, p4, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->setLatestSaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string p2, "service initialization, latest sa token is required, but invalid"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SA_LATEST_INFO_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto/16 :goto_0

    :cond_7
    :goto_2
    invoke-direct {p0, p6}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->extractFabricId(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "service initialization, fabricId is invalid, cannot create managers"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_FABRIC_ID_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto/16 :goto_0

    :cond_8
    iget-boolean p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->requiredInitManager:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mFabricId:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->initManagers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "service initialization, fail initialization of manager"

    :goto_3
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto/16 :goto_0

    :cond_9
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "service initialization, exception"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3
.end method

.method public static synthetic d(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$readData$9(I)V

    return-void
.end method

.method private deleteMember()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private doneInit()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mInit:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private extractFabricId(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->getFabricIdFromSaInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->resetAuthToken()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getFabricIdFromServer(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mFabricId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mFabricId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->resetAuthToken()V

    iget-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->requiredInitManager:Z

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->updateManager(Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mFabricId:Ljava/lang/String;

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private getFabricDashboardInfoRaw()Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    const-string v2, "TrustChain::ChainService"

    if-eqz v1, :cond_0

    const-string p0, "getFabricDashboardInfoRaw, cannot get fabric info"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v1, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "getFabricDashboardInfoRaw, peer can not started"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v1, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getMemberInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getDeviceType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getModelCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-static {v10}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->readLocalData(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v5, ""

    :cond_3
    move-object v12, v5

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    move v13, v4

    const/4 v9, 0x1

    new-instance v14, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    move-object v4, v14

    move-object v5, v10

    move-object v6, v11

    move-object v7, v3

    move-object v8, v12

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fabric dashboard info : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", true"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v2, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    invoke-direct {v2, v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private declared-synchronized initManagers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    monitor-enter p0

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->setFabricId(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, p2, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    new-instance v7, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;)V

    iput-object v7, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-direct {v1, v2, p2, p1, v3}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)V

    iput-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-direct {v4, v1}, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;)V

    new-instance v5, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v5, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance v9, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v9, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;-><init>(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance v7, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v7, v1}, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance v10, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    move-object v1, v10

    move-object v3, p1

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V

    iput-object v10, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    new-instance v7, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-object v1, v7

    move-object v3, p2

    move-object v4, p1

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;)V

    iput-object v7, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    iput-boolean v8, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->requiredInitManager:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    monitor-exit p0

    return v8
.end method

.method private synthetic lambda$activateService$1()V
    .locals 9

    const-string v0, "activateService in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->ACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->registerMembership()Lkotlin/Triple;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->registerBlackboard(Z)Lkotlin/Triple;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "activateService"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogActivate(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$addNewMember$19()V
    .locals 2

    const-string v0, "TrustChain::ChainService"

    const-string v1, "push(addNewMember) in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->refreshFabricInfo()V

    return-void
.end method

.method private synthetic lambda$deactivateService$2()V
    .locals 9

    const-string v0, "deactivateService in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DEACTIVATE_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->isAvailable()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->destroyPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->withdrawBlackboard()Lkotlin/Triple;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->withdrawMembership()Lkotlin/Triple;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_DEACTIVATE_COMPLETED"

    invoke-static {v4, v5}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sendInternalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->resetLocalData()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deactivateService, disconnect message server"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogDeactivate(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$deleteMember$20()V
    .locals 2

    const-string v0, "TrustChain::ChainService"

    const-string v1, "push(deleteMember) in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->refreshFabricInfo()V

    return-void
.end method

.method private synthetic lambda$destroyService$3()V
    .locals 9

    const-string v0, "destroyService in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DESTROY_SERVICE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->isAvailable()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->destroyPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->withdrawBlackboard()Lkotlin/Triple;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->withdrawMembership()Lkotlin/Triple;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_DEACTIVATE_COMPLETED"

    invoke-static {v4, v5}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sendInternalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "destroyService, disconnect message server, destroy peer"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogDestroy(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$detectFabricAbnormality$13()V
    .locals 9

    const-string v0, "detectFabricAbnormality, in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->getFabricDashboardInfoRaw()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->getMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getDashboardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/ParserDashboardInfo;->parseDashboardInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isTrustedSecurityStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Abnormal | memberId : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "detectFabricAbnormality isAbnormal : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "target_abnormality"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v1

    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$detectMemberAbnormality$15(Ljava/lang/String;)V
    .locals 9

    const-string v0, "detectMemberAbnormality, in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_MEMBER_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "detectMemberAbnormality, fail start peer, "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->readLocalData(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detectMemberAbnormality, fail local query, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_ID_NOT_EXIST:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/ParserDashboardInfo;->parseDashboardInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "detectMemberAbnormality, no status of member"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v4}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isTrustedSecurityStatus(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "target_abnormality"

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "detectMemberAbnormality, the member is secured : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "detectMemberAbnormality, the member is not secured : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, v4, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$detectTrustedFabricAbnormality$14(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detectTrustedFabricAbnormality, in, target trust level : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_TRUSTED_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->getFabricDashboardInfoRaw()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo;->getMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getDashboardInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/ParserDashboardInfo;->parseDashboardInfo(Ljava/lang/String;)Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getTrustLevel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/DashboardInfo;->getSecurityStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isTrustedSecurityStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Abnormal | memberId : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/sdk/trustchain/dashboard/FabricDashboardInfo$MemberDashboardInfo;->getMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "detectTrustedFabricAbnormality, target : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isAbnormal : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "target_abnormality"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->DETECT_TRUSTED_FABRIC_ABNORMALITY:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$getDashboardInfoSelf$12()V
    .locals 2

    const-string v0, "TrustChain::ChainService"

    const-string v1, "getMyDashboardInfo, in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->getMemberDashboardInfo(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getFabricDashboardInfo$10()V
    .locals 8

    const-string v0, "TrustChain::ChainService"

    const-string v1, "getFabricDashboardInfo, in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_FABRIC_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->getFabricDashboardInfoRaw()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "fabric_dashboard_info"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_CANNOT_ACCESS_FABRIC_INFO:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SERVER_CANNOT_ACCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private synthetic lambda$getMemberDashboardInfo$11(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getMemberDashboardInfo, target : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_MEMBER_DASHBOARD_INFO:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "getMemberDashboardInfo, peer can not started"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->readLocalData(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    sget-object v5, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NO_SUCH_KEY:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_ID_NOT_EXIST:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_2
    check-cast v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v4}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMemberDashboardInfo, member : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", data : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "member_dashboard_info"

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->insertMemberIdIntoSaInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$readData$8(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->getBlock(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    const-string v2, "TrustChain::ChainService"

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "readData : key : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "value"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    const/4 p0, 0x0

    const/4 p1, -0x3

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->getFabricChainInfo()Landroid/util/Pair;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "read failure, chain info : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    const/4 p0, 0x1

    const/16 p1, 0xb

    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    return-void
.end method

.method private synthetic lambda$readData$9(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$readDataDashboard$7()V
    .locals 8

    const-string v0, "TrustChain::ChainService"

    const-string v1, "readDataDashboard in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->READ_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->readData(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$signedInSamsungAccount$26()V
    .locals 3

    const-string v0, "TrustChain::ChainService"

    const-string v1, "samsung account logged in -> reset local data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->resetLocalData()V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SIGNED_IN_SA:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$syncTrustChain$16(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->syncPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TrustChain::ChainService"

    if-eqz v0, :cond_0

    const-string v0, "sync peer succeed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_0
    const-string v0, "sync peer failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_SYNC:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$syncTrustChain$17(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_SYNC:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$syncTrustChain$18()V
    .locals 9

    const-string v0, "syncTrustChain, in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SYNC_CHAIN:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    move v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "syncTrustChain, can not start peer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_SOLB_CANNOT_START_PEER:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->needSync()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_SOLB_NOT_NEED_SYNC:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    if-ne v2, v4, :cond_2

    const-string v2, "syncTrustChain, peer is already stable"

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "syncTrustChain, cannot check needSync, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;II)V

    new-instance v2, Lcom/samsung/android/kmxservice/trustchain/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/samsung/android/kmxservice/trustchain/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;II)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->actionPushBasedMessageConnect(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateFabric$24()V
    .locals 3

    const-string v0, "TrustChain::ChainService"

    const-string v1, "updateFabric in, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$updateSMPDetails$25()V
    .locals 8

    const-string v0, "TrustChain::ChainService"

    const-string v1, "push(updateSMPDetails) in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->updateMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$wakeupRequested$21(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sleepInSecond(I)V

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->writeData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$wakeupRequested$22(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/kmxservice/trustchain/d;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$wakeupRequested$23()V
    .locals 15

    const-string v0, "push(wakeupRequested) exit, result : "

    const-string v1, "fail registering consensus callback "

    const-string v2, "register the pending data in the consensus callback, "

    const-string v3, "fail connecting message server "

    const-string v4, "fail starting peer "

    const-string v5, "push(wakeupRequested) in"

    const-string v6, "TrustChain::ChainService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v8

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v14, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v7, p0

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string v7, "wakeUpRequested, ensure auth token for chain resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v14, v8}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    sget-object v7, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v10}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->startPeer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->connectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->getDataPended(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/kmxservice/trustchain/d;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/samsung/android/kmxservice/trustchain/d;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->registerConsensusCallback(Ljava/lang/Runnable;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v1

    goto :goto_3

    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "wakeupRequested"

    invoke-static {v1, v2, v6}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleExceptionInfo(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_2
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v1

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, v1, v0, v9}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->getValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_5
    sget-object v2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    invoke-direct {p0, v2, v0, v9}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    throw v1
.end method

.method private synthetic lambda$writeData$5(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;->writeBlock(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->eraseDataPended(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p1

    invoke-direct {p0, p3, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    const/4 p0, 0x0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->getFabricChainInfo()Landroid/util/Pair;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "write failure, chain info : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrustChain::ChainService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p1

    invoke-direct {p0, p3, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    const/4 p0, 0x1

    const/16 p1, 0xa

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    return-void
.end method

.method private synthetic lambda$writeData$6(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$writeDataDashboard$4(Ljava/util/List;Ljava/util/List;)V
    .locals 9

    const-string v0, "writeDataDashboard in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isActivated(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x5

    invoke-static {v2, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getDashboardKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "trust_level"

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "L1"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p2, "encryption_public_key"

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "not_defined"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->DASHBOARD_ITEMS:Ljava/util/List;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/utils/ChainJsonBuilder;->getJson(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isBlank()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p2

    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->writeData(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "writeData, value is empty -> fail"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->WRITE_DATA_DASHBOARD:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object p2, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_TRANSACTION_WRITE_EMPTY_VALUE:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    const/4 p0, 0x4

    invoke-static {v2, p0}, Lcom/samsung/android/kmxservice/trustchain/SAChainLog;->sendSALogTransaction(II)V

    return-void
.end method

.method private readData(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readData, request : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/profileinstaller/a;

    invoke-direct {v0, p0, p2, p1}, Landroidx/profileinstaller/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/c;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;II)V

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->actionPushBasedMessageConnect(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshFabricInfo()V
    .locals 8

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->checkInitSucceed(IZZZZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->refreshFabricInfo()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->SUCCESS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method private resetLocalData()V
    .locals 2

    const-string v0, "TrustChain::ChainService"

    const-string v1, "reset local db & preference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setBlackboardActivated(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setMembershipActivated(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->clearAllDatabases(Landroid/content/Context;)V

    return-void
.end method

.method private sendCallback(IILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "sendCallback exception, "

    if-gez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;->onComplete(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "TrustChain::ChainService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private startInit()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mInit:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private updateFabric()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateManager(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->setFabricId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->updateId(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->setFabricId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->setFabricId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->updateFabricId(Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-direct {v4, p1}, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;)V

    new-instance v5, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v5, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance v6, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v6, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;-><init>(Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance v7, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-direct {v7, p1}, Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMemberId:Ljava/lang/String;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/MessengerAdapter;Lcom/samsung/android/kmxservice/trustchain/adapter/SemaphoreAdapter;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mSolbManager:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager;

    return-void
.end method

.method private updateSMPDetails()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private wakeupRequested()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private writeData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeData, request : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->insertDataPended(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls2/e;

    invoke-direct {v0, p0, p2, p3, p1}, Ls2/e;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/c;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/kmxservice/trustchain/c;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;II)V

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->actionPushBasedMessageConnect(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic z(Lcom/samsung/android/kmxservice/trustchain/ChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->lambda$readDataDashboard$7()V

    return-void
.end method


# virtual methods
.method public activateService()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cleanup()V
    .locals 2

    const-string v0, "cleanup in"

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mMessageManager:Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MessageManager;->disconnectMessageServer()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :cond_0
    const-string p0, "cleanup exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deactivateService()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public destroyService()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public detectFabricAbnormality()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public detectMemberAbnormality(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/trustchain/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public detectTrustedFabricAbnormality(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/trustchain/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getDashboardInfoSelf()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getFabricDashboardInfo()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getMemberDashboardInfo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/kmxservice/trustchain/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getSTMemberSecurityStatus(Ljava/lang/String;)V
    .locals 2

    const-string p1, "TrustChain::ChainService"

    const-string v0, "This API wasn\'t implemented yet. It will be updated after ST id collection."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBER_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_NOT_IMPLEMENTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method public getSTMembersSecurityStatus()V
    .locals 3

    const-string v0, "TrustChain::ChainService"

    const-string v1, "This API wasn\'t implemented yet. It will be updated after ST id collection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->GET_ST_MEMBERS_SECURITY_STATUS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result v0

    sget-object v1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_NOT_IMPLEMENTED:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    return-void
.end method

.method public handlePushEvents(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Push Category : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustChain::ChainService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "L3Onboarding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "Update_SMP_Details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "FabricNewMemberJoin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "L3Updated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "L3Withdrawal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "FabricMemberWithdrawal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "MessageClientWakeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "FabricUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string v0, "unhandled category : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->SMP_PUSH_EVENTS:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainRequest;->getValue()I

    move-result p1

    sget-object v0, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->FAIL_GENERAL:Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/sdk/trustchain/ChainResponse;->getValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->sendCallback(IILandroid/os/Bundle;)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->updateSMPDetails()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->addNewMember()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->refreshFabricInfo()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->deleteMember()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->wakeupRequested()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->updateFabric()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4864da12 -> :sswitch_7
        -0x4520538f -> :sswitch_6
        -0x2b79922c -> :sswitch_5
        0x7fd0d7c -> :sswitch_4
        0xb6c5d54 -> :sswitch_3
        0x51caebdf -> :sswitch_2
        0x673d49c3 -> :sswitch_1
        0x6a60c6e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public readDataDashboard()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public registerCallback(ILcom/samsung/android/kmxservice/sdk/trustchain/IChainServiceCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public signedInSamsungAccount()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public syncTrustChain()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/a;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public unRegisterCallback(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public writeDataDashboard(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;->mServiceExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/emoji2/text/n;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/emoji2/text/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
