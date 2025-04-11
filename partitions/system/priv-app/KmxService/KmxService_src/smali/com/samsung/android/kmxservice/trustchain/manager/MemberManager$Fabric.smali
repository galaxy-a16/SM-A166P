.class public final Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Fabric"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::MemberManager::Fabric"


# instance fields
.field private fabricId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "check"

    const-string v1, "TrustChain::MemberManager::Fabric"

    :try_start_0
    const-string v2, "Fabric check in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

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
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getFabric(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->printMessageLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricResponse;->getFabricStatus()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ACTIVE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    :goto_0
    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    return-object p0
.end method

.method public delete()Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "delete"

    const-string v1, "TrustChain::MemberManager::Fabric"

    :try_start_0
    const-string v2, "Fabric delete in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

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
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->deleteFabric(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
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

.method public getFabricId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    return-object p0
.end method

.method public getFabricInfo()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;",
            "Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "getFabricInfo"

    const-string v1, "TrustChain::MemberManager::Fabric"

    :try_start_0
    const-string v2, "Fabric getFabricInfo in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Landroid/util/Pair;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

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

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getFabricInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, v2, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/ObjectMapperInstance;->getInstance()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-virtual {v2, p0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    new-instance p0, Landroid/util/Pair;

    sget-object v2, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v3, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v3}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    invoke-direct {p0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/utils/ExceptionUtil;->handleException(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/util/Pair;

    sget-object v0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_EXCEPTION:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/response/MembershipFabricInfoResponse;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public sendPushMessage(Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "sendPushMessage"

    const-string v1, "TrustChain::MemberManager::Fabric"

    const-string v2, "Fabric sendPushMessage in, "

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

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
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2, p1}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->sendPushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->OK_OR_NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
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

.method public setFabricId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    return-void
.end method

.method public update(Ljava/lang/String;I)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
    .locals 5

    const-string v0, "update"

    const-string v1, "TrustChain::MemberManager::Fabric"

    :try_start_0
    const-string v2, "Fabric update in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->e(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->isFailed(Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v2}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->c(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->this$0:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-static {v3}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->d(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/manager/AuthManager$AuthResourceType;

    move-result-object v3

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
    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager$Fabric;->fabricId:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p0, v2, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->updateFabric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;->NO_CONTENT:Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->isSuccess(Lcom/samsung/android/kmxservice/trustchain/client/data/Response$SuccessCondition;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->SUCCESS:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;->FAIL_MEM_SERVER:Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;
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
