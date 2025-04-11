.class Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lokhttp3/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lokhttp3/w;

.field private final delegate:Lokhttp3/i0;


# direct methods
.method public constructor <init>(Lokhttp3/i0;Lokhttp3/w;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/i0;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/i0;

    iput-object p2, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/w;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/i0;

    invoke-virtual {p0}, Lokhttp3/i0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/w;
    .locals 0

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lokhttp3/w;

    return-object p0
.end method

.method public writeTo(Lkc/f;)V
    .locals 0

    iget-object p0, p0, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lokhttp3/i0;

    invoke-virtual {p0, p1}, Lokhttp3/i0;->writeTo(Lkc/f;)V

    return-void
.end method
