.class public Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;
.super Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;->setUrl()V

    invoke-direct {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;->setHeader(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardRegisterMemberRequest;->setBody(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v1, "fabricId"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p1, "memberId"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setHeader(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->header:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

    const-string v0, "Bearer "

    const-string v1, "Authorization"

    invoke-static {v0, p1, p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->n(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;Ljava/lang/String;)V

    return-void
.end method

.method private setUrl()V
    .locals 2

    const-string v0, "https://api.knox-matrix.com/blackboard/v1"

    const-string v1, "/fabric/member"

    invoke-static {v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-void
.end method
