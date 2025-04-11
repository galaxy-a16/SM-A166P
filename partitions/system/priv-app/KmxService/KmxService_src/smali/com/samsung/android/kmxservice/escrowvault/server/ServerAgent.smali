.class public Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "KMX|ServerAgent"


# instance fields
.field private final mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    const-string v1, "escrow"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    return-void
.end method

.method private getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteCredential(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteCredential : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|ServerAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->deleteCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteCredentialRequest;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "deleteCredential - Response success"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string p0, "deleteCredential - Response failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method public deleteEscrow(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteEscrow : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|ServerAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->deleteEscrow(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequest;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "deleteEscrow - Response success"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string p0, "deleteEscrow - Response failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method public deleteEscrow_V2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteEscrow_V2 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KMX|ServerAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v6

    new-instance p2, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->deleteEscrow_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/DeleteEscrowRequestV2;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "deleteEscrow_V2 - Response success"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string p0, "deleteEscrow_V2 - Response failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return p1
.end method

.method public ensureAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->requestAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public ensureAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->requestAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public exchangeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "status"

    const-string v1, "exchangeKey - Status: "

    const-string v2, "exchangeKey"

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;

    invoke-direct {v4, p2, p3, p4, p5}, Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestSecretKeys(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/SecretKeyRequest;)Lretrofit2/Call;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "exchangeKey - Response success"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;

    if-eqz p0, :cond_1

    const-string p1, "ev_error"

    const/4 p2, -0x1

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "secretB"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->getServerPublicKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "encSalt"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->getEncSalt()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "exchangeKey - Response failed"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "403"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "isExpired"

    const/4 p1, 0x1

    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "some information in response errorBody are empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public exchangeKey_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;
    .locals 14

    const-string v0, "status"

    const-string v1, "exchangeKey_V2 - Status: "

    const-string v2, "exchangeKey_V2"

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v12

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v13, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v13

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v13}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestSecretKeys_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/KeyExchangeRequest;)Lretrofit2/Call;

    move-result-object v4

    :try_start_0
    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "exchangeKey_V2 - Response success"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;

    if-eqz v0, :cond_1

    const-string v1, "ev_error"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "secretB"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->getServerPublicKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encSalt"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/SecretKeyResponse;->getEncSalt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v5, "exchangeKey_V2 - Response failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "403"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isExpired"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "some information in response errorBody are empty"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getCredentialInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    const-string v0, "ev_error"

    const-string v1, "getCredentialInfo - "

    const-string v2, "getCredentialInfo - Response failed: "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCredentialInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KMX|ServerAgent"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v6, p0, p1, v5}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->getCredentialInfo(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "Call Request URL: "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object v5

    iget-object v5, v5, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "getCredentialInfo - Response success"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialMetaInfoResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialMetaInfoResponse;->getMetaInfo()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "credential_info"

    invoke-virtual {v3, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v3
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKmxId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->mAuthAgent:Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->getKmxId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerEvidence(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "getServerEvidence - ErrorMessage: "

    const-string v1, "getServerEvidence - Response failed: "

    const-string v2, "getServerEvidence"

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;

    invoke-direct {v4, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestConfirmation(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequest;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Call Request URL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object p2

    iget-object p2, p2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "getServerEvidence - Response success"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "m2"

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->getM2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "message"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":|,|\\}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "back_off_time"

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "failure_count"

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "some information in response errorBody are empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getServerEvidence_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "getServerEvidence_V2 - ErrorMessage: "

    const-string v1, "getServerEvidence_V2 - Response failed: "

    const-string v2, "getServerEvidence_V2"

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestConfirmation_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ConfirmationRequestV2;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Call Request URL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object p2

    iget-object p2, p2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "getServerEvidence_V2 - Response success"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "m2"

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->getM2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "enc_token"

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->getEncToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hsm_sign_cert"

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ConfirmationResponse;->getEncToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "message"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":|,|\\}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "back_off_time"

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "failure_count"

    const/4 v1, 0x3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "some information in response errorBody are empty"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public isExistCredential(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "getCredentialStatus - "

    const-string v1, "getCredentialStatus - Response failed: "

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->getCredentialStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Call Request URL: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "getCredentialStatus - Response success"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->getStatus()Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return p1
.end method

.method public isExistCredential_V2(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "getCredentialStatus - "

    const-string v1, "getCredentialStatus - Response failed: "

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0, p1, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->getCredentialStatus_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Call Request URL: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "getCredentialStatus - Response success"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialStatusResponse;->getStatus()Ljava/lang/String;

    move-result-object p0

    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return p1
.end method

.method public recoverCeRk_V2(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;
    .locals 13

    const-string v1, "ev_error"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "recoverCeRk_V2 : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    move-object v5, v0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->recoveryCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCeRkRequest;)Lretrofit2/Call;

    move-result-object v0

    const/16 v2, 0x6b

    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "recoverCeRk_V2 - Response success"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;

    if-eqz v0, :cond_1

    const-string v3, "ecerk"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->getEncCeRk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "sign_cerk"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->getSignCeRk()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlDecode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "hsm_sign_cert"

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCeRkResponse;->getHsmSignCert()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "recoverCeRk_V2 - Response failed"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v4
.end method

.method public recoverCredential(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B[B)Landroid/os/Bundle;
    .locals 9

    const-string v0, "ev_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recoverCredential : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v4

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    invoke-static {p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p5

    move-object v7, p2

    move-object v8, p5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v7, p2

    move-object v8, v7

    :goto_0
    new-instance p2, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->recoveryCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialRequest;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "recoverCredential - Response success"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;

    if-eqz p0, :cond_2

    const/4 p2, -0x1

    invoke-virtual {v1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "enc_2_cred"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->getEncCredential()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hsm_enc_verifier_cert"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->getServerVerificationCert()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "iv"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialResponse;->getIv()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "recoverCredential - Response failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-object v1
.end method

.method public recoverCredentials_V2(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 6

    const-string v0, "ev_error"

    const-string v1, "recoverCredentials_V2"

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->recoveryCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RecoveryCredentialsRequestV2;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "recoverCredentials_V2 - Response success"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;

    if-eqz p0, :cond_1

    const-string p2, "enc_cred"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->getEncCredential()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sign_enc_cred"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->getSignEncCredential()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "credential_info"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->getMetaInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hsm_sign_cert"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/RecoveryCredentialsResponseV2;->getHsmSignCert()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "recoverCredentials_V2 - Response failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public registerCredential(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "registerCredential - Response failed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerCredential : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcd

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerCredential(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterCredentialRequest;)Lretrofit2/Call;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "registerCredential - Response success"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;->getServiceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public registerEscrow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "registerEscrow - Response failed: "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerEscrow : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p12 .. p12}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p13 .. p13}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v16

    new-instance v13, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;

    move-object v4, v13

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object v2, v13

    move-object/from16 v13, p11

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v4 .. v18}, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0, v2}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerEscrow(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequest;)Lretrofit2/Call;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "registerEscrow - Response success"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponse;->getServiceName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerEscrow - Response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0xcd

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xcd

    return v1
.end method

.method public registerEscrow_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 16

    const-string v0, "registerEscrow_V2 - Response failed: "

    const-string v1, "registerEscrow_V2"

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xcd

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v15}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerEscrow_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/InitialRegistrationRequestV2;)Lretrofit2/Call;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v3}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "registerEscrow_V2 - Response success"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponseV2;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/InitialRegistrationResponseV2;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public registerVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "registerVerifier : Result "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerVerifier : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KMX|ServerAgent"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;

    move-object v4, v1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerVerifier(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierRequest;)Lretrofit2/Call;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "registerVerifier : Result null"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v0, "registerVerifier : response is not successful "
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public registerVerifierCeRk_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 16

    const-string v0, "registerVerifierCeRk_V2 - Response failed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerVerifierCeRk_V2 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "KMX|ServerAgent"

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p8 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move-object v1, v14

    move-object/from16 v14, p9

    move-object v2, v15

    move-object/from16 v15, p10

    invoke-direct/range {v3 .. v15}, Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerVerifierCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/RegisterVerifierCeRkRequest;)Lretrofit2/Call;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "registerVerifierCeRk_V2 - Response success"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xcd

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xcd

    return v1
.end method

.method public requestChallenge(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "ev_error"

    const-string v1, "requestChallenge - Response failed: "

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ServiceName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " OperationType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "KMX|ServerAgent"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestChallenge(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequest;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Call Request URL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/e0;

    move-result-object p2

    iget-object p2, p2, Lokhttp3/e0;->b:Lokhttp3/u;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "requestChallenge - Response success"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;

    if-eqz p0, :cond_1

    const/4 p2, -0x1

    invoke-virtual {v2, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "hsm_enc_cred_cert"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->getHsmEncCredCert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "challenge"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->getChallenge()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public requestChallenge_V2(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "ev_error"

    const-string v1, "requestChallenge_V2 - Response failed: "

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OperationType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "KMX|ServerAgent"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestChallenge_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/ServerChallengeRequestV2;)Lretrofit2/Call;

    move-result-object p0

    const/16 p1, 0x6b

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "requestChallenge_V2 - Response success"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;

    if-eqz p0, :cond_1

    const/4 p2, -0x1

    invoke-virtual {v2, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "challenge"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "hsm_enc_cred_cert"

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ServerChallengeResponse;->getHsmEncCredCert()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public requestCredential_V2(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    const-string v2, "registerCredential_V2 - Response failed: "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "registerCredential_V2 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KMX|ServerAgent"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    move-object v5, v13

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->REGISTER_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1, v13}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->registerCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->UPDATE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1, v13}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->updateCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1, v13}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->deleteCredential_V2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/CredentialRequestV2;)Lretrofit2/Call;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v2, "registerCredential_V2 - Response success"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;

    sget-object v2, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;->DELETE_CREDENTIAL:Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "success"

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/CredentialResponse;->getServiceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xcd

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    :goto_3
    return v0
.end method

.method public requestDeviceList(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "requestDeviceList - Response failed: "

    const-string v1, "requestDeviceList"

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestDevices(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "requestDeviceList - Response success"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getDeviceInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getModelCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getLatestUpdatedTime()J

    move-result-wide v9

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getFailureCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getBackOffTime()J

    move-result-wide v4

    const-string p0, "device_list"

    invoke-virtual {v3, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "failure_count"

    invoke-virtual {v3, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "back_off_time"

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v3
.end method

.method public requestDeviceList_V2(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "requestDeviceList_V2 - Response failed: "

    const-string v1, "requestDeviceList_V2"

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v5, p0, v4}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->requestDevices_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/BasicRequestV2;)Lretrofit2/Call;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "requestDeviceList_V2 - Response success"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getDeviceInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getVerifierType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getModelCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getLatestUpdatedTime()J

    move-result-wide v9

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/kmxservice/escrowvault/data/DeviceData;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getFailureCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/DeviceListResponse;->getBackOffTime()J

    move-result-wide v4

    const-string p0, "device_list"

    invoke-virtual {v3, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "failure_count"

    invoke-virtual {v3, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "back_off_time"

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v3
.end method

.method public updateVerifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string v0, "UpdateVerifier : Result "

    const-string v1, "updateVerifier"

    const-string v2, "KMX|ServerAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;

    move-object v3, v1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->updateVerifier(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierRequest;)Lretrofit2/Call;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateVerifierCeRk_V2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)I
    .locals 16

    const-string v0, "updateVerifierCeRk_V2 - Response failed: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateVerifierCeRk_V2 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v15, "KMX|ServerAgent"

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->urlEncodeToString([B)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getKmxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v14

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p8

    move-object v1, v14

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitEscrow;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/kmxservice/escrowvault/server/ServerAgent;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->updateVerifierCeRk_V2(Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/UpdateVerifierCeRkRequest;)Lretrofit2/Call;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "updateVerifierCeRk_V2 - Response success"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/VerifierResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xcd

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    return v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v1, 0xcd

    return v1
.end method
