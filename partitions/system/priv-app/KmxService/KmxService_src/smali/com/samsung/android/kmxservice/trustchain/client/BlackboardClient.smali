.class public Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/BlackboardClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquireMutex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardAcquireMutexRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardAcquireMutexRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public checkMutex(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardCheckMutexRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardCheckMutexRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public getFabricChainInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardGetFabricChainInfoRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardGetFabricChainInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public publishMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardPublishMessageRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardPublishMessageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public registerMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public registerThreshold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterThresholdRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterThresholdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public updateMemberBlockNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardUpdateMemberBlockNoRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardUpdateMemberBlockNoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->put(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public updateMemberStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardUpdateMemberStatusRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardUpdateMemberStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->put(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public withdrawFabric(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawFabricRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawFabricRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->delete(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public withdrawMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawMemberRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->delete(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method
