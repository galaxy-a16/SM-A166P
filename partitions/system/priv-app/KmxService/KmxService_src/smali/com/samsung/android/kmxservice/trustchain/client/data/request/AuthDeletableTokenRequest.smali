.class public Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthDeletableTokenRequest;
.super Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthDeletableTokenRequest;->setUrl(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthDeletableTokenRequest;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v1, "attestCaCert"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v0, "appCert"

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "signedChallenge"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "serviceName"

    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "osVersion"

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOSVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "uiVersion"

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getOneUiVersionString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "accountMcc"

    invoke-virtual {p1, p2, p6}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "regionMcc"

    invoke-virtual {p1, p2, p7}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "modelName"

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->getModelName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p1, "kmxId"

    invoke-virtual {p0, p1, p5}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/dev/del-token/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://api.knox-matrix.com/auth/v1"

    invoke-static {v0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-void
.end method
