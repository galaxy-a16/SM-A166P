.class public Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MemberAdapter"


# instance fields
.field private final mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

.field private final mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    return-void
.end method


# virtual methods
.method public getPeerStatusList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lia/d;",
            ">;"
        }
    .end annotation

    const-string v0, "TrustChain::MemberAdapter"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "getPeerStatusList, cannot get mem fabric info"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->getFabricChainInfo()Landroid/util/Pair;

    move-result-object p0

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "getPeerStatusList, cannot get bb fabric info"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getOperablePeers()Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardFabricInfoResponse;->getMembers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->getMemberId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->getLatestBlockNo()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/BlackboardMemberInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    new-instance v6, Lia/d;

    invoke-direct {v6, v4, v5, v3}, Lia/d;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getPeerStatusList"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public getPublicKeyMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const-string v0, "TrustChain::MemberAdapter"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mMemberManager:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->getFabricInfo()Landroid/util/Pair;

    move-result-object p0

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "getPublicKeyMap, cannot get fabric info"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;->getMemberInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getCertChain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/CertChainUtils;->getFirstCertFromCertChain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/utils/CertChainUtils;->convertPemToCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "certificate is null or public key is null, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipMemberInfoResponse;->getMemberID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "getPublicKeyMap"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public setMyLastBlockNumber(I)V
    .locals 4

    const-string v0, "TrustChain::MemberAdapter"

    const-string v1, "set last block number succeeded : "

    const-string v2, "failed to set last block : "

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/MemberAdapter;->mBlackboardManager:Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/BlackboardManager;->updateBlockNumber(I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isSucceed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "setMyLastBlockNumber"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
