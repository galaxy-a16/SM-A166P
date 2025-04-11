.class public Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXPIRED_SA_TOKEN_ERROR:Ljava/lang/String; = "AUTH_401003"

.field private static final TAG:Ljava/lang/String; = "KMX|AuthAgent"

.field public static final TARGET_ESCROW:Ljava/lang/String; = "escrow"

.field public static final TARGET_MEMBERSHIP:Ljava/lang/String; = "membership"

.field public static final TARGET_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mAuthDataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mKmxId:Ljava/lang/String;

.field private final mModelName:Ljava/lang/String;

.field private final mOsVersion:Ljava/lang/String;

.field private final mTargetResource:Ljava/lang/String;

.field private final mUiVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mTargetResource:Ljava/lang/String;

    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mOsVersion:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->getUiVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mUiVersion:Ljava/lang/String;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mModelName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;Ljava/lang/Runnable;Ljava/lang/String;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->lambda$requestAccessToken$0(Ljava/lang/Runnable;Ljava/lang/String;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V

    return-void
.end method

.method private getUiVersion()Ljava/lang/String;
    .locals 2

    const-string p0, "ro.build.version.oneui"

    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KMX|AuthAgent"

    const-string v0, "fail to get OneUI version"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    const/16 v1, 0x2e

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isExpired(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;->getExpiredAt()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$requestAccessToken$0(Ljava/lang/Runnable;Ljava/lang/String;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;)V
    .locals 12

    move-object v9, p0

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "KMX|AuthAgent"

    if-eqz v0, :cond_0

    const-string v0, "saGuid is empty"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaGuid()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->requestChallenge(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->getChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;->getChallengeId()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Challenge: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ChallengeId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "auth"

    invoke-static {v1, v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getAttestationResult(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "attestationResult is NULL"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "device_ID"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mDeviceId:Ljava/lang/String;

    const-string v1, "cert_chain"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    if-nez v0, :cond_3

    const-string v0, "certificates is NULL"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    aget-object v0, v0, v11

    invoke-static {v0}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->convertCertificateToPem(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getSaToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getMcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->getRegionMcc()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->requestAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "retry request"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    move-object v1, p2

    move/from16 v2, p4

    invoke-virtual {p0, p2, v2, p1, v11}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->requestAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_4
    move-object v0, p1

    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private requestAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 21

    .line 2
    move-object/from16 v0, p0

    const-string v1, "KMX|AuthAgent"

    const-string v2, "kmxId: "

    const-string v3, "requestAccessToken - Code: "

    const-string v4, "ExpireAt: "

    const-string v5, "IssuedAt: "

    const-string v6, "requestAccessToken - Message: "

    const-string v7, "TargetResource: "

    const-string v8, "requestAccessToken - Status: "

    const-string v9, "JwtToken: "

    const-string v10, "requestAccessToken - Error: "

    const-string v11, "requestAccessToken - Response failed: "

    new-instance v15, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;

    iget-object v14, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mOsVersion:Ljava/lang/String;

    iget-object v13, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mUiVersion:Ljava/lang/String;

    move-object v12, v15

    move-object/from16 v17, v13

    move-object/from16 v13, p4

    move-object/from16 v16, v14

    move-object/from16 v14, p5

    move-object/from16 v20, v3

    move-object v3, v15

    move-object/from16 v15, p1

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    invoke-direct/range {v12 .. v19}, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "ro.security.keystore.keytype"

    invoke-static {v13}, Lcom/samsung/android/kmxservice/common/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "auth_model_name"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v15, "sakm"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    iget-object v13, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mModelName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->setModelName(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/kmxservice/escrowvault/util/EvUtil;->getBearerAuthorizationHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v6

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getSaClientId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v8

    move-object/from16 v8, p3

    invoke-interface {v13, v15, v6, v8, v3}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;)Lretrofit2/Call;

    move-result-object v6

    const/4 v8, 0x1

    :try_start_0
    invoke-interface {v6}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit2/Response;->isSuccessful()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v10, "requestAccessToken - Response success"

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;

    new-instance v10, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getJwtToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getTargetResource()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getIssuedAt()Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getExpireAt()Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    move-object/from16 p4, v13

    move-wide/from16 p5, v15

    move-wide/from16 p7, v17

    invoke-direct/range {p2 .. p8}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    iget-object v11, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    move-object/from16 v13, p1

    invoke-interface {v11, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getKnoxMatrixId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mKmxId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getJwtToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getTargetResource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getIssuedAt()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getExpireAt()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/kmxservice/escrowvault/server/response/KmxAuthTokenResponse;->getKnoxMatrixId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/kmxservice/escrowvault/server/request/KmxAuthTokenRequest;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v14, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "error"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AUTH_401003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    if-nez p8, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    move v15, v8

    :goto_0
    move v8, v15

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "some information in response errorBody are empty"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "requestAccessToken - Request call failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v8
.end method

.method private requestChallenge(Ljava/lang/String;)Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "requestAccessToken - Message: "

    const-string v3, "requestAccessToken - Code: "

    const-string v4, "requestAccessToken - Status: "

    const-string v5, "requestAccessToken - Error: "

    const-string v6, "requestChallenge - AuthChallengeData: ChallengeId: "

    const-string v7, "requestChallenge - Response failed: "

    const-string v8, "RequestChallenge: "

    const-string v9, " - "

    invoke-static {v8, v1, v9}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mTargetResource:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "KMX|AuthAgent"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;

    iget-object v0, v0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mTargetResource:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->getInstance()Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/retrofit/RetrofitClient;->getAPI()Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/samsung/android/kmxservice/escrowvault/server/api/Api;->checkUser(Lcom/samsung/android/kmxservice/escrowvault/server/request/ChallengeRequest;)Lretrofit2/Call;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v2, "requestChallenge - Response success"

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getChallengeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Challenge: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getChallenge()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IssuedAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getIssuedAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ExpireAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getExpireAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getChallengeId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getChallenge()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getIssuedAt()J

    move-result-wide v13

    invoke-virtual {v0}, Lcom/samsung/android/kmxservice/escrowvault/server/response/ChallengeResponse;->getExpireAt()J

    move-result-wide v15

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/samsung/android/kmxservice/escrowvault/data/AuthChallengeData;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/o0;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/o0;->string()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "error"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "status"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "some information in response errorBody are empty"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "requestChallenge - Request call failed"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/c0;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/c0;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getKmxId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mKmxId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public requestAccessToken(Ljava/lang/String;ZLjava/lang/Runnable;Z)V
    .locals 9

    .line 1
    const-string v0, "requestAccessToken"

    const-string v1, "KMX|AuthAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mAuthDataList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/kmxservice/escrowvault/data/AuthData;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->isExpired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "AccessToken is alive"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "AccessToken is expired or null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->getInstance()Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;->mContext:Landroid/content/Context;

    new-instance v8, Ly8/a;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move v6, p4

    move v7, p2

    invoke-direct/range {v2 .. v7}, Ly8/a;-><init>(Lcom/samsung/android/kmxservice/escrowvault/server/AuthAgent;Ljava/lang/Runnable;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1, p2, p4, v8}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager;->requestSAService(Landroid/content/Context;ZZLcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountManager$OnRequestCompleteListener;)V

    :goto_1
    return-void
.end method
