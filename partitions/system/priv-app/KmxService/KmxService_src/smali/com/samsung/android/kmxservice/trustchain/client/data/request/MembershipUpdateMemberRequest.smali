.class public Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;
.super Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p3

    invoke-direct {p0, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;->setHeader(Ljava/lang/String;)V

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/MembershipUpdateMemberRequest;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v1, "memberNotiServer"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string v0, "memberRegInfo"

    invoke-virtual {p1, v0, p4}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p4, "trustLevel"

    invoke-virtual {p1, p4, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p3, "certChain"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "deviceType"

    invoke-virtual {p1, p2, p5}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p2, "modelCode"

    invoke-virtual {p1, p2, p6}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    const-string p1, "isPeer"

    invoke-virtual {p0, p1, p7}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->setBoolValue(Ljava/lang/String;Z)V

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

.method private setUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/fabric/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/members/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://api.knox-matrix.com/membership/api/v1"

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-void
.end method
