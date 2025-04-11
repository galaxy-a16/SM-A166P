.class public Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthChallengeRequest;
.super Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthChallengeRequest;->setUrl()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/AuthChallengeRequest;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p1, "targetResource"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUrl()V
    .locals 2

    const-string v0, "https://api.knox-matrix.com/auth/v1"

    const-string v1, "/challenge"

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-void
.end method
