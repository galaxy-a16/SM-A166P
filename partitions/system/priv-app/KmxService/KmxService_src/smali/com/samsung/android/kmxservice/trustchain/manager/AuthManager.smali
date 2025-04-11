.class public Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;,
        Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;,
        Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::AuthManager"

.field private static final mAuthResourceString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAccessTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFabricId:Ljava/lang/String;

.field private mFabricIdChanged:Z

.field private mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

.field private final mMemberId:Ljava/lang/String;

.field private mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$1;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mAuthResourceString:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$2;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$2;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricIdChanged:Z

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-direct {p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mMemberId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mMemberId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;)Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    return-void
.end method

.method private getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;
    .locals 0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->CHAIN_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    :goto_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    if-ne p1, p0, :cond_3

    if-eqz p2, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MEMBERSHIP_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    :goto_1
    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    if-ne p1, p0, :cond_5

    if-eqz p2, :cond_4

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->BLACKBOARD_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    :goto_2
    return-object p0

    :cond_5
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    if-ne p1, p0, :cond_7

    if-eqz p2, :cond_6

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_T:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->MESSAGE_F:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    :goto_3
    return-object p0

    :cond_7
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;->NONE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    return-object p0
.end method

.method private requestAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "TrustChain::AuthManager"

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const-string p1, "invalid latest information - deletable token requires previous auth information"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_FABRICID:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_LATEST_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_0
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->requestChallenge(ZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->isValid()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->requestDeviceToken(ZLcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;)Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->isValid()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->getKnoxMatrixId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fabric id is changed, from : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mMemberId:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->updateFabricIdIntoSaInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricIdChanged:Z

    :cond_6
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_7
    :goto_1
    const-string p0, "deviceToken is invalid!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_AUTH_TOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_8
    :goto_2
    const-string p0, "challenge is invalid!"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_SERVER_CHALLENGE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_9
    :goto_3
    const-string p0, "sa token is invalid - samsung account service didn\'t work well"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_PREREQUISITE_SATOKEN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private requestChallenge(ZLcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;
    .locals 3

    const-string v0, "TrustChain::AuthManager"

    const-string v1, "requestChallenge"

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mAuthResourceString:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getChallenge(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseCode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private requestDeviceToken(ZLcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;)Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;
    .locals 12

    const-string v0, "TrustChain::AuthManager"

    const-string v1, "requestDeviceToken"

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->getChallenge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/CertChainUtils;->getCertChain(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->getChallengeId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    const-string v8, "KmxChain"

    iget-object v9, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object v10

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getRegionMcc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v3 .. v11}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getDeviceDeletableToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthChallengeResponse;->getChallengeId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaClientId()Ljava/lang/String;

    move-result-object v4

    iget-object p2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    iget-object p2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-string v7, ""

    const-string v8, "KmxChain"

    iget-object v9, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->getDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseCode()I

    move-result p1

    sget-object p2, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->HTTP_CREATED:Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/ResponseCode;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class p2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkValidSAToken()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkValidServiceRegion()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isChinaAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isChinaAccount(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public ensureAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    if-eq p1, v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->getJwtToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    const-string v3, ""

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v2, "TrustChain::AuthManager"

    const-string v4, "AuthToken is null or expired -> request new token"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->requestAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricIdChanged:Z

    if-eqz p0, :cond_3

    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH_KMXID_CHANGED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Landroid/util/Pair;

    if-nez v2, :cond_4

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_AUTH:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->getJwtToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0

    :cond_5
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFabricIdFromServer(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->getKnoxMatrixId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->requestAuthToken(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p0

    const-string p1, ""

    if-eqz p0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;->getKnoxMatrixId()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public requestSAToken(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$SAListener;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0, v2}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestSAService(Landroid/content/Context;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V

    return-void
.end method

.method public resetAuthToken()V
    .locals 6

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->sAccessTokenMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->CHAIN:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v5}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->BLACKBOARD:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v5}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v1

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MESSAGE:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v4}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->getAuthType(Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;Z)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthType;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/AuthTokenResponse;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFabricId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricId:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mFabricIdChanged:Z

    return-void
.end method

.method public setLatestSaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    const-string v1, "latest sa token"

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;->mLatestSAToken:Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;

    return-void
.end method
