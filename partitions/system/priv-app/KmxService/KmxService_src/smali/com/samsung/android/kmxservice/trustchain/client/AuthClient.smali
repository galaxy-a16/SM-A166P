.class public Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;
    .locals 2

    const-class v0, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    invoke-direct {v1}, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;-><init>()V

    sput-object v1, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;

    :cond_0
    sget-object v1, Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;->mInstance:Lcom/samsung/android/kmxservice/trustchain/client/AuthClient;
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
.method public getChallenge(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 0

    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthChallengeRequest;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthChallengeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceDeletableToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 10

    new-instance v9, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthDeletableTokenRequest;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthDeletableTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;
    .locals 8

    new-instance p0, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthTokenRequest;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->post(Lcom/samsung/android/kmxservice/trustchain/client/data/Request;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method
