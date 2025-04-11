.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"

.field private static final PATH_TRAVERSAL:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lokhttp3/u;

.field private body:Lokhttp3/i0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private contentType:Lokhttp3/w;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private formBuilder:Lokhttp3/n;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final hasBody:Z

.field private final headersBuilder:Lokhttp3/r;

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private relativeUrl:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final requestBuilder:Lokhttp3/d0;

.field private urlBuilder:Lokhttp3/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/u;Ljava/lang/String;Lokhttp3/s;Lokhttp3/w;ZZZ)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lokhttp3/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lokhttp3/w;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance p1, Lokhttp3/d0;

    invoke-direct {p1}, Lokhttp3/d0;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/d0;

    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;

    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lokhttp3/r;

    invoke-direct {p1}, Lokhttp3/r;-><init>()V

    :goto_0
    iput-object p1, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/r;

    if-eqz p7, :cond_1

    new-instance p1, Lokhttp3/n;

    invoke-direct {p1}, Lokhttp3/n;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/n;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_3

    new-instance p1, Lokhttp3/x;

    invoke-direct {p1}, Lokhttp3/x;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x;

    sget-object p0, Lokhttp3/z;->f:Lokhttp3/w;

    const-string p2, "type"

    invoke-static {p0, p2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "multipart"

    iget-object p3, p0, Lokhttp3/w;->b:Ljava/lang/String;

    invoke-static {p3, p2}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p0, p1, Lokhttp3/x;->b:Lokhttp3/w;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "multipart != "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v3, Lkc/e;

    invoke-direct {v3}, Lkc/e;-><init>()V

    invoke-virtual {v3, v1, v2, p0}, Lkc/e;->B0(IILjava/lang/String;)V

    invoke-static {v3, p0, v2, v0, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Lkc/e;Ljava/lang/String;IIZ)V

    invoke-virtual {v3}, Lkc/e;->H()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(Lkc/e;Ljava/lang/String;IIZ)V
    .locals 6

    .line 2
    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lkc/e;->D0(I)V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    :cond_3
    invoke-virtual {v0, v1}, Lkc/e;->D0(I)V

    :goto_2
    invoke-virtual {v0}, Lkc/e;->G()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lkc/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Lkc/e;->h0(I)V

    sget-object v4, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lkc/e;->h0(I)V

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lkc/e;->h0(I)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p0

    iget-object v1, v1, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "value"

    const-string v3, "name"

    iget-object v10, v1, Lokhttp3/n;->b:Ljava/util/ArrayList;

    iget-object v11, v1, Lokhttp3/n;->a:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    invoke-static {v0, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x53

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x53

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v2}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x5b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x5b

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v8}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object p1, Lokhttp3/w;->d:Ljava/util/regex/Pattern;

    invoke-static {p2}, Lokhttp3/p;->e(Ljava/lang/String;)Lokhttp3/w;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed content type: "

    invoke-static {v0, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    iget-object p0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/r;

    invoke-virtual {p0, p1, p2}, Lokhttp3/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addHeaders(Lokhttp3/s;)V
    .locals 4

    iget-object p0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/r;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "headers"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lokhttp3/s;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lokhttp3/s;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/s;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lokhttp3/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPart(Lokhttp3/s;Lokhttp3/i0;)V
    .locals 4

    iget-object p0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "body"

    .line 1
    invoke-static {p2, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "Content-Type"

    .line 2
    invoke-virtual {p1, v1}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    if-eqz p1, :cond_2

    const-string v0, "Content-Length"

    invoke-virtual {p1, v0}, Lokhttp3/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    new-instance v0, Lokhttp3/y;

    invoke-direct {v0, p1, p2}, Lokhttp3/y;-><init>(Lokhttp3/s;Lokhttp3/i0;)V

    .line 3
    iget-object p0, p0, Lokhttp3/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addPart(Lokhttp3/y;)V
    .locals 1

    iget-object p0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "part"

    .line 5
    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/x;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lokhttp3/t;

    invoke-direct {v3}, Lokhttp3/t;-><init>()V

    invoke-virtual {v3, v2, v0}, Lokhttp3/t;->d(Lokhttp3/u;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    iput-object v3, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/t;

    if-eqz v3, :cond_0

    iput-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-object p0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_6

    const-string p3, "encodedName"

    invoke-static {p1, p3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    :cond_2
    iget-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz p3, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xd3

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " \"\'<>#&="

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xd3

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_5
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_6
    const-string p3, "name"

    invoke-static {p1, p3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-nez p3, :cond_7

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    :cond_7
    iget-object p3, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz p3, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xdb

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lokhttp3/t;->g:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    if-eqz p2, :cond_8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xdb

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lh5/d;->e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_9
    invoke-static {}, Li4/f;->M()V

    throw v1

    :cond_a
    invoke-static {}, Li4/f;->M()V

    throw v1
.end method

.method public addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/d0;

    invoke-virtual {p0, p1, p2}, Lokhttp3/d0;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public get()Lokhttp3/d0;
    .locals 5

    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/t;->a()Lokhttp3/u;

    move-result-object v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    iget-object v2, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "link"

    invoke-static {v2, v3}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Lokhttp3/t;

    invoke-direct {v3}, Lokhttp3/t;-><init>()V

    invoke-virtual {v3, v0, v2}, Lokhttp3/t;->d(Lokhttp3/u;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lokhttp3/t;->a()Lokhttp3/u;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_8

    :goto_2
    iget-object v2, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/i0;

    if-nez v2, :cond_5

    iget-object v3, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/n;

    if-eqz v3, :cond_2

    new-instance v2, Lokhttp3/o;

    iget-object v1, v3, Lokhttp3/n;->a:Ljava/util/ArrayList;

    iget-object v3, v3, Lokhttp3/n;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v1, v3}, Lokhttp3/o;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/x;

    if-eqz v3, :cond_4

    iget-object v1, v3, Lokhttp3/x;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Lokhttp3/z;

    iget-object v4, v3, Lokhttp3/x;->a:Lokio/ByteString;

    iget-object v3, v3, Lokhttp3/x;->b:Lokhttp3/w;

    invoke-static {v1}, Lac/c;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v4, v3, v1}, Lokhttp3/z;-><init>(Lokio/ByteString;Lokhttp3/w;Ljava/util/List;)V

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Multipart body must have at least one part."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-boolean v3, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lokhttp3/i0;->create(Lokhttp3/w;[B)Lokhttp3/i0;

    move-result-object v2

    :cond_5
    :goto_3
    iget-object v1, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/w;

    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    new-instance v3, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v2, v1}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/i0;Lokhttp3/w;)V

    move-object v2, v3

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/r;

    const-string v4, "Content-Type"

    iget-object v1, v1, Lokhttp3/w;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lokhttp3/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    iget-object v1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/d0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v1, Lokhttp3/d0;->a:Lokhttp3/u;

    iget-object v0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/r;

    invoke-virtual {v0}, Lokhttp3/r;->c()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/s;->e()Lokhttp3/r;

    move-result-object v0

    iput-object v0, v1, Lokhttp3/d0;->c:Lokhttp3/r;

    iget-object p0, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lokhttp3/d0;->c(Ljava/lang/String;Lokhttp3/i0;)V

    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/u;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lokhttp3/i0;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/i0;

    return-void
.end method

.method public setRelativeUrl(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
