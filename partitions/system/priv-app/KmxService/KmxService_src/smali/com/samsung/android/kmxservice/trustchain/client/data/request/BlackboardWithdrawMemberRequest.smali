.class public Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawMemberRequest;
.super Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawMemberRequest;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/kmxservice/trustchain/client/data/request/BlackboardWithdrawMemberRequest;->setHeader(Ljava/lang/String;)V

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

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://api.knox-matrix.com/blackboard/v1"

    invoke-static {p2, p1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->makeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-void
.end method
