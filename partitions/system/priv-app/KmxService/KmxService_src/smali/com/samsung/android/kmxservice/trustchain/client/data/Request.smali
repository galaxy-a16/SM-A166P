.class public Lcom/samsung/android/kmxservice/trustchain/client/data/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;,
        Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;
    }
.end annotation


# instance fields
.field protected body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

.field protected header:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

.field protected url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->header:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

    new-instance v0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBodyLength()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getHeader()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->header:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;->getElements()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request(url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",header=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->header:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;

    invoke-virtual {v1}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestHeaders;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],body={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/data/Request;->body:Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/trustchain/client/data/Request$RequestBody;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
