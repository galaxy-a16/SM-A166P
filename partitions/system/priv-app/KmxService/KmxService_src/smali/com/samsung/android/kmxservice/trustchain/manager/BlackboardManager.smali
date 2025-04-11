.class public Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::BlackboardManager"


# instance fields
.field private final mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

.field private final mBlackboardResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field private final mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

.field private final mContext:Landroid/content/Context;

.field private mFabricId:Ljava/lang/String;

.field private final mMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mBlackboardResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->addMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method private addMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "addMember"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "addMember in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardNotActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mBlackboardResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p0}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->registerMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ALREADY_REGISTERED_MEMBER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "BB add member fail, but already registered"

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printSuccessLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_2
    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->deleteMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method private checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isBlackboardActivated(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private checkBlackboardNotActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isBlackboardActivated(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_PREREQUISITE_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private deleteMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "deleteMember"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "deleteMember in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mBlackboardResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->withdrawMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO_REGISTERED_MEMBER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->getCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NO_REGISTERED_CHAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "BB delete member fail, because not registered"

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printSuccessLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_3
    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method


# virtual methods
.method public getFabricChainInfo()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "getFabricChainInfo"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "getFabricChainInfo in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Landroid/util/Pair;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getFabricChainInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-virtual {v2, p0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    if-eqz p0, :cond_2

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/Pair;

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_3
    new-instance p0, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getMutexFlag()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "getMutexFlag"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "getMutexFlag in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Landroid/util/Pair;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->checkMutex(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-virtual {v2, p0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    if-eqz p0, :cond_2

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-instance p0, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardCheckMutexResponse;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "publish"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "publish in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    invoke-virtual {v3, v2, p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->publishMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public registerBlackboard(Z)Lkotlin/Triple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Triple<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isBlackboardActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/a;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;I)V

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->retryCodeAction(Ljava/util/concurrent/Callable;I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "fail"

    :goto_0
    const-string v2, ", register (BB) : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setBlackboardActivated(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.kmxservice.trustchain.KMX_CHAIN_ACTIVATE_COMPLETED"

    invoke-static {v0, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->sendInternalBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->initializeSMP(Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string p1, ", register (BB) : already registered"

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_PRECONDITION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string p1, ", register (BB) : mem did not registered"

    :goto_1
    move-object v1, p1

    move-object p1, p0

    const-string v2, "NA"

    :cond_3
    :goto_2
    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, p1, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public registerThreshold(II)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 8

    const-string v0, "registerThreshold"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "registerThreshold in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->registerThreshold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseCode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_BAD_REQUEST:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardError;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTIVE_MEMBERS_MORE_THAN_THRESHOLD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "receive error, but allowed condition : ACTIVE_MEMBERS_MORE_THAN_THRESHOLD"

    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printSuccessLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_THRESHOLD_ALREADY_SATISFIED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_2
    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public setFabricId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    return-void
.end method

.method public updateBlockNumber(I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "updateBlockNumber"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "updateBlockNumber in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->updateMemberBlockNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public updateMutexFlag(ZLjava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 11

    const-string v0, "updateMutexFlag"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "updateMutexFlag in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    const/4 v3, 0x1

    if-eqz p1, :cond_2

    move v9, v3

    goto :goto_0

    :cond_2
    move v9, v4

    :goto_0
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->acquireMutex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardAcquireMutexResponse;

    invoke-virtual {p2, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardAcquireMutexResponse;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardAcquireMutexResponse;->getExpiredAt()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-eqz p0, :cond_3

    move v4, v3

    :cond_3
    if-ne v4, p1, :cond_4

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public updateStatus(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "updateStatus"

    const-string v1, "TrustChain::BlackboardManager"

    :try_start_0
    const-string v2, "updateStatus in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->checkBlackboardActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mChainResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mFabricId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mMemberId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager$StatusBlackboard;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v2, v4, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->updateMemberStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_BB_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public withdrawBlackboard()Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Triple<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isBlackboardActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;I)V

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->retryCodeAction(Ljava/util/concurrent/Callable;I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "success"

    goto :goto_0

    :cond_0
    const-string v2, "fail"

    :goto_0
    const-string v3, ", withdraw (BB) : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setBlackboardActivated(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_BB_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v2, ", withdraw (BB) : not registered"

    const-string v3, "NA"

    :cond_2
    :goto_1
    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
