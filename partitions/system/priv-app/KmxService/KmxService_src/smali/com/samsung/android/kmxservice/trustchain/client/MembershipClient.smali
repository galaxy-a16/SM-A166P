.class public Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/MembershipClient;
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
.method public deleteFabric(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipDeleteFabricRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipDeleteFabricRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->delete(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public deleteMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipDeleteMemberRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipDeleteMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->delete(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public getFabric(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipGetFabricRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipGetFabricRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public getFabricInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidFabricID()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipGetFabricInfoRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipGetFabricInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public patchMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipPatchMemberRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipPatchMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->patch(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public registerMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipRegisterMemberRequest;

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipRegisterMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    return-object v0
.end method

.method public sendPushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipPushMessageRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipPushMessageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public updateFabric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateFabricRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateFabricRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->put(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public updateMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 12

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->put(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    return-object v0
.end method

.method public verifyMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/client/data/Response;->getResponseInvalidToken()Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipVerifyMemberRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipVerifyMemberRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->get(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method
