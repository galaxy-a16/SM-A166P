.class public Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;,
        Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MemberManager"


# instance fields
.field private final mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

.field private final mContext:Landroid/content/Context;

.field private final mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

.field private final mKeyStoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

.field private final mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

.field private final mMembershipResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;->MEMBERSHIP:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMembershipResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    new-instance p1, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    iput-object p5, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mKeyStoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->registerMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->deleteMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mAuthManager:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    return-object p0
.end method

.method private checkMembershipActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_NOT_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private checkMembershipNotActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_PREREQUISITE_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMembershipResType:Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    return-object p0
.end method

.method private deleteMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MemberManager"

    const-string v1, "deleteMember in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->delete()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->checkMembershipActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method private enoughPeers(II)Z
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->checkMembershipNotActivated()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method private getMyMemberInfo()Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "L1"

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mKeyStoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->getSigningCertChain()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getModelName()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    new-instance v0, Landroid/util/Pair;

    sget-object v13, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v14, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->getMemberId()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v1, v14

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, "TrustChain::MemberManager"

    const-string v0, "There is no cert chain."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE_INVALID_CERT_CHAIN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private isAllowedException(II)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 13

    const-string v0, ""

    const-string v1, "TrustChain::MemberManager"

    :try_start_0
    const-string v2, "registerMember in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->getPushType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isBlank()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v2, "fcm"

    :cond_1
    move-object v4, v2

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mKeyStoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->getSigningCertChain()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "L1"

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/PushManager;->getPushToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isBlank()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ConstantUtil;->getRandomPushToken()Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v7, v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v8, v0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getModelName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getDeviceType()Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual/range {v3 .. v12}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    const-string p0, "There is no cert chain."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_KEYSTORE_INVALID_CERT_CHAIN:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "registerMember"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private removeLatestFabricInfo()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MemberManager"

    const-string v1, "remove latest fabric info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->clearFabricInfo(Landroid/content/Context;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private updateMember(Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberNotiServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getCertChain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getTrustLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberRegInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getModelCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getIsPeer()Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "updateMember"

    const-string v0, "TrustChain::MemberManager"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method private updateMyMemberInfo(Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getMyMemberInfo()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getMemberInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->getMemberId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    const-string v0, "TrustChain::MemberManager"

    const-string v2, "memberInfo is mismatched, try updating member info"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->updateMember(Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-static {v2, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->updateMemberInfo(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getFabricId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->getFabricId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFabricInfo()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const-wide/32 v0, 0x240c8400

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo(J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getFabricInfo(J)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "TrustChain::MemberManager"

    const-string v1, "getFabricInfo in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->getFabricId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->getFabricInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->isExist()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->refreshFabricInfo()Landroid/util/Pair;

    move-result-object p0

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    :cond_2
    move-object p0, v0

    :goto_1
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance p2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->getMemberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->isExist()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getMemberInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getNumOperablePeers()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFtolerance()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check available peer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fault tolerance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TrustChain::MemberManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->enoughPeers(II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->isAllowedException(II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_1
    return-object p0

    :cond_4
    :goto_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_NOT_AVAILABLE:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public refreshFabricInfo()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "refreshFabricInfo in"

    const-string v1, "TrustChain::MemberManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->getFabricInfo()Landroid/util/Pair;

    move-result-object v0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-static {v2, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/database/DatabaseUtil;->putFabricInfo(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;)V

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {p0, v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->updateMyMemberInfo(Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "memberInfo is mismatched, but update was failed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public registerMembership()Lkotlin/Triple;
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

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;I)V

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->retryCodeAction(Ljava/util/concurrent/Callable;I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "success"

    goto :goto_0

    :cond_0
    const-string v1, "fail"

    :goto_0
    const-string v2, ", register (Mem) : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setMembershipActivated(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->refreshFabricInfo()Landroid/util/Pair;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS_MEM_ALREADY_REGISTERED:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v1, ", register (Mem) : already registered"

    const-string v2, "NA"

    :cond_2
    :goto_1
    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v1, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public sendFabricUpdatePushMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MemberManager"

    const-string v1, "sendFabricUpdatePushMessage in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    const-string v0, "FabricUpdate"

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->sendPushMessage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public sendWakeUpPushMessage()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 2

    const-string v0, "TrustChain::MemberManager"

    const-string v1, "sendWakeUpPushMessage in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    const-string v0, "MessageClientWakeup"

    invoke-virtual {p0, v0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->sendPushMessage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0
.end method

.method public setFabricId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mFabric:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;

    invoke-virtual {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->setFabricId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->setFabricId(Ljava/lang/String;)V

    return-void
.end method

.method public updateMember()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 3

    .line 1
    const-string v0, "TrustChain::MemberManager"

    :try_start_0
    const-string v1, "updateMember in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getMyMemberInfo()Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0

    :cond_0
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-direct {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->updateMember(Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "updateMember"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public updateSolbConfiguration()V
    .locals 9

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mMember:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Member;->getMemberId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getBlockCapacity()I

    move-result v6

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFragmentSize()I

    move-result v3

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getFtolerance()I

    move-result v5

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getTransactionCapacity()I

    move-result v7

    const/16 v4, 0x3a98

    const/4 v8, 0x0

    new-instance p0, Lga/a;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lga/a;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-static {}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->getInstance()Lcom/samsung/security/fabric/chain/core/config/Configurator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/security/fabric/chain/core/config/Configurator;->setConfiguration(Lga/a;)V

    :cond_0
    return-void
.end method

.method public withdrawMembership()Lkotlin/Triple;
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

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->isMembershipActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/manager/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/b;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;I)V

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
    const-string v3, ", withdraw (Mem) : "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/kmxservice/trustchain/utils/FuncUtils;->setMembershipActivated(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->removeLatestFabricInfo()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    const-string v2, ", withdraw (Mem) : not registered"

    const-string v1, "NA"

    :cond_2
    :goto_1
    new-instance p0, Lkotlin/Triple;

    invoke-direct {p0, v0, v2, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
