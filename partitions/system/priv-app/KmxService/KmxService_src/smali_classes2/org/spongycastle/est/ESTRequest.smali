.class public Lorg/spongycastle/est/ESTRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final data:[B

.field final estClient:Lorg/spongycastle/est/ESTClient;

.field headers:Lorg/spongycastle/est/HttpUtil$Headers;

.field final hijacker:Lorg/spongycastle/est/ESTHijacker;

.field final listener:Lorg/spongycastle/est/ESTSourceConnectionListener;

.field final method:Ljava/lang/String;

.field final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;[BLorg/spongycastle/est/ESTHijacker;Lorg/spongycastle/est/ESTSourceConnectionListener;Lorg/spongycastle/est/HttpUtil$Headers;Lorg/spongycastle/est/ESTClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/est/HttpUtil$Headers;

    invoke-direct {v0}, Lorg/spongycastle/est/HttpUtil$Headers;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/est/ESTRequest;->method:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/est/ESTRequest;->url:Ljava/net/URL;

    iput-object p3, p0, Lorg/spongycastle/est/ESTRequest;->data:[B

    iput-object p4, p0, Lorg/spongycastle/est/ESTRequest;->hijacker:Lorg/spongycastle/est/ESTHijacker;

    iput-object p5, p0, Lorg/spongycastle/est/ESTRequest;->listener:Lorg/spongycastle/est/ESTSourceConnectionListener;

    iput-object p6, p0, Lorg/spongycastle/est/ESTRequest;->headers:Lorg/spongycastle/est/HttpUtil$Headers;

    iput-object p7, p0, Lorg/spongycastle/est/ESTRequest;->estClient:Lorg/spongycastle/est/ESTClient;

    return-void
.end method


# virtual methods
.method public getClient()Lorg/spongycastle/est/ESTClient;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->estClient:Lorg/spongycastle/est/ESTClient;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->headers:Lorg/spongycastle/est/HttpUtil$Headers;

    invoke-virtual {p0}, Lorg/spongycastle/est/HttpUtil$Headers;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getHijacker()Lorg/spongycastle/est/ESTHijacker;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->hijacker:Lorg/spongycastle/est/ESTHijacker;

    return-object p0
.end method

.method public getListener()Lorg/spongycastle/est/ESTSourceConnectionListener;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->listener:Lorg/spongycastle/est/ESTSourceConnectionListener;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getURL()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->url:Ljava/net/URL;

    return-object p0
.end method

.method public writeData(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTRequest;->data:[B

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method
