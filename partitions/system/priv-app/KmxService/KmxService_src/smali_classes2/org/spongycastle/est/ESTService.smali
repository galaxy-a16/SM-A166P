.class public Lorg/spongycastle/est/ESTService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final CACERTS:Ljava/lang/String; = "/cacerts"

.field protected static final CSRATTRS:Ljava/lang/String; = "/csrattrs"

.field protected static final FULLCMC:Ljava/lang/String; = "/fullcmc"

.field protected static final SERVERGEN:Ljava/lang/String; = "/serverkeygen"

.field protected static final SIMPLE_ENROLL:Ljava/lang/String; = "/simpleenroll"

.field protected static final SIMPLE_REENROLL:Ljava/lang/String; = "/simplereenroll"

.field protected static final illegalParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pathInvalid:Ljava/util/regex/Pattern;


# instance fields
.field private final clientProvider:Lorg/spongycastle/est/ESTClientProvider;

.field private final server:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    const-string v1, "cacerts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simpleenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "simplereenroll"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "fullcmc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "serverkeygen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "csrattrs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "^[0-9a-zA-Z_\\-.~!$&\'()*+,;=]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/est/ESTService;->pathInvalid:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/est/ESTClientProvider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/spongycastle/est/ESTService;->verifyServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lorg/spongycastle/est/ESTService;->verifyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.well-known/est/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p2, "/.well-known/est"

    invoke-static {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/est/ESTService;->server:Ljava/lang/String;

    iput-object p3, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    return-void
.end method

.method public static synthetic access$000(Lorg/spongycastle/est/ESTService;[B)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private annotateRequest([B)Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v2, v1, 0x30

    array-length v3, p1

    if-ge v2, v3, :cond_1

    const/16 v3, 0x30

    invoke-static {p1, v1, v3}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, v2}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v1, p1

    :goto_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    array-length v2, p1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static storeToArray(Lorg/spongycastle/util/Store;)[Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/spongycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/est/ESTService;->storeToArray(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Selector;)[Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object p0

    return-object p0
.end method

.method public static storeToArray(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Selector;)[Lorg/spongycastle/cert/X509CertificateHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/util/Store<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;",
            "Lorg/spongycastle/util/Selector<",
            "Lorg/spongycastle/cert/X509CertificateHolder;",
            ">;)[",
            "Lorg/spongycastle/cert/X509CertificateHolder;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Lorg/spongycastle/cert/X509CertificateHolder;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/spongycastle/cert/X509CertificateHolder;

    return-object p0
.end method

.method private verifyLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lorg/spongycastle/est/ESTService;->pathInvalid:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/spongycastle/est/ESTService;->illegalParts:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label "

    const-string v1, " is a reserved path segment."

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Server path "

    const-string v1, " contains invalid characters"

    invoke-static {v0, p1, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Label set but after trimming \'/\' is not zero length string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "/"

    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Server contains path, must only be <dnsname/ipaddress>:port, a path of \'/.well-known/est/<label>\' will be added arbitrarily."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Server contains scheme, must only be <dnsname/ipaddress>:port, https:// will be added arbitrarily."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/IllegalArgumentException;

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheme and host is invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getCACerts()Lorg/spongycastle/est/CACertsResponse;
    .locals 15

    const-string v0, "Content-Type"

    const-string v1, "Response : "

    const-string v2, " got "

    const-string v3, "Decoding CACerts: "

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/spongycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cacerts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v6}, Lorg/spongycastle/est/ESTClientProvider;->makeClient()Lorg/spongycastle/est/ESTClient;

    move-result-object v6

    new-instance v7, Lorg/spongycastle/est/ESTRequestBuilder;

    const-string v8, "GET"

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v7, v6}, Lorg/spongycastle/est/ESTRequestBuilder;->withClient(Lorg/spongycastle/est/ESTClient;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0xc8

    const-string v14, "Get CACerts: "

    if-ne v7, v8, :cond_3

    :try_start_2
    const-string v7, "application/pkcs7-mime"

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getHeaders()Lorg/spongycastle/est/HttpUtil$Headers;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/spongycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getHeaders()Lorg/spongycastle/est/HttpUtil$Headers;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/spongycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getHeaders()Lorg/spongycastle/est/HttpUtil$Headers;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, " but was not present."

    :goto_0
    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Expecting application/pkcs7-mime "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, p0, v4, v1, v2}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :try_start_3
    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-lez v0, :cond_2

    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/spongycastle/cmc/SimplePKIResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/cmc/SimplePKIResponse;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V

    invoke-virtual {v1}, Lorg/spongycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/spongycastle/util/Store;

    move-result-object v0

    invoke-virtual {v1}, Lorg/spongycastle/cmc/SimplePKIResponse;->getCRLs()Lorg/spongycastle/util/Store;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v4

    move-object v1, v0

    :goto_1
    move-object v9, v0

    move-object v10, v1

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_4
    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_6

    move-object v9, v4

    move-object v10, v9

    :goto_2
    new-instance v0, Lorg/spongycastle/est/CACertsResponse;

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getSource()Lorg/spongycastle/est/Source;

    move-result-object v12

    iget-object p0, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {p0}, Lorg/spongycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v13

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/est/CACertsResponse;-><init>(Lorg/spongycastle/util/Store;Lorg/spongycastle/util/Store;Lorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object p0, v4

    goto :goto_3

    :catch_0
    move-exception p0

    :goto_3
    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/spongycastle/est/ESTException;

    if-eqz v0, :cond_4

    throw p0

    :cond_4
    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-direct {v0, v1, p0, v2, v4}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    :cond_5
    return-object v0

    :cond_6
    :try_start_6
    new-instance p0, Lorg/spongycastle/est/ESTException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v6}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v0, v4, v1, v2}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    move-object v4, v6

    goto :goto_4

    :catchall_2
    move-exception p0

    :goto_4
    :try_start_7
    instance-of v0, p0, Lorg/spongycastle/est/ESTException;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/spongycastle/est/ESTException;

    throw p0

    :cond_7
    new-instance v0, Lorg/spongycastle/est/ESTException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Lorg/spongycastle/est/ESTResponse;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    :cond_8
    throw p0
.end method

.method public getCSRAttributes()Lorg/spongycastle/est/CSRRequestResponse;
    .locals 8

    const-string v0, "Decoding CACerts: "

    const-string v1, "CSR Attribute request: "

    iget-object v2, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v2}, Lorg/spongycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/spongycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/csrattrs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {p0}, Lorg/spongycastle/est/ESTClientProvider;->makeClient()Lorg/spongycastle/est/ESTClient;

    move-result-object p0

    new-instance v4, Lorg/spongycastle/est/ESTRequestBuilder;

    const-string v5, "GET"

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v4, p0}, Lorg/spongycastle/est/ESTRequestBuilder;->withClient(Lorg/spongycastle/est/ESTClient;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_1

    const/16 v0, 0xcc

    if-eq v5, v0, :cond_2

    const/16 v0, 0x194

    if-ne v5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/spongycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    new-instance v4, Lorg/spongycastle/est/CSRAttributesResponse;

    invoke-static {v1}, Lorg/spongycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/CsrAttrs;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/spongycastle/est/CSRAttributesResponse;-><init>(Lorg/spongycastle/asn1/est/CsrAttrs;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/spongycastle/est/ESTException;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/spongycastle/est/ESTException;

    throw v0

    :cond_3
    new-instance v1, Lorg/spongycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result p0

    invoke-direct {v1, v3, v0, p0, v2}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/spongycastle/est/CSRRequestResponse;

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getSource()Lorg/spongycastle/est/Source;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Lorg/spongycastle/est/CSRRequestResponse;-><init>(Lorg/spongycastle/est/CSRAttributesResponse;Lorg/spongycastle/est/Source;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_4
    new-instance v2, Lorg/spongycastle/est/ESTException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_3
    :try_start_5
    instance-of p0, v0, Lorg/spongycastle/est/ESTException;

    if-eqz p0, :cond_5

    check-cast v0, Lorg/spongycastle/est/ESTException;

    throw v0

    :cond_5
    new-instance p0, Lorg/spongycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Lorg/spongycastle/est/ESTResponse;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :cond_6
    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No trust anchors."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleEnrollResponse(Lorg/spongycastle/est/ESTResponse;)Lorg/spongycastle/est/EnrollmentResponse;
    .locals 7

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getOriginalRequest()Lorg/spongycastle/est/ESTRequest;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result p0

    const/16 v0, 0xca

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    const-string p0, "Retry-After"

    invoke-virtual {p1, p0}, Lorg/spongycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    add-long/2addr v0, v2

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :goto_1
    new-instance p0, Lorg/spongycastle/est/EnrollmentResponse;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getSource()Lorg/spongycastle/est/Source;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/est/EnrollmentResponse;-><init>(Lorg/spongycastle/util/Store;JLorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;)V

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lorg/spongycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse Retry-After header:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/spongycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v0

    :cond_0
    new-instance p0, Lorg/spongycastle/est/ESTException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Got Status 202 but not Retry-After header from: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/spongycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_2

    new-instance p0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    new-instance v0, Lorg/spongycastle/cmc/SimplePKIResponse;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cmc/SimplePKIResponse;-><init>(Lorg/spongycastle/asn1/cms/ContentInfo;)V
    :try_end_2
    .catch Lorg/spongycastle/cmc/CMCException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0}, Lorg/spongycastle/cmc/SimplePKIResponse;->getCertificates()Lorg/spongycastle/util/Store;

    move-result-object v2

    new-instance p0, Lorg/spongycastle/est/EnrollmentResponse;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getSource()Lorg/spongycastle/est/Source;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/est/EnrollmentResponse;-><init>(Lorg/spongycastle/util/Store;JLorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;)V

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lorg/spongycastle/est/ESTException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/cmc/CMCException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lorg/spongycastle/est/ESTException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Simple Enroll: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/spongycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw p0
.end method

.method public simpleEnroll(Lorg/spongycastle/est/EnrollmentResponse;)Lorg/spongycastle/est/EnrollmentResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/spongycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/spongycastle/est/ESTClientProvider;->makeClient()Lorg/spongycastle/est/ESTClient;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/est/EnrollmentResponse;->getRequestToRetry()Lorg/spongycastle/est/ESTRequest;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Lorg/spongycastle/est/ESTRequest;)V

    invoke-virtual {v2, v1}, Lorg/spongycastle/est/ESTRequestBuilder;->withClient(Lorg/spongycastle/est/ESTClient;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/est/ESTService;->handleEnrollResponse(Lorg/spongycastle/est/ESTResponse;)Lorg/spongycastle/est/EnrollmentResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    instance-of p1, p0, Lorg/spongycastle/est/ESTException;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/spongycastle/est/ESTException;

    throw p0

    :cond_1
    new-instance p1, Lorg/spongycastle/est/ESTException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_2
    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No trust anchors."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public simpleEnroll(ZLorg/spongycastle/pkcs/PKCS10CertificationRequest;Lorg/spongycastle/est/ESTAuth;)Lorg/spongycastle/est/EnrollmentResponse;
    .locals 5

    .line 2
    const-string v0, ""

    iget-object v1, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v1}, Lorg/spongycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/spongycastle/est/ESTService;->annotateRequest([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/spongycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/spongycastle/est/ESTClientProvider;->makeClient()Lorg/spongycastle/est/ESTClient;

    move-result-object p1

    new-instance v3, Lorg/spongycastle/est/ESTRequestBuilder;

    const-string v4, "POST"

    invoke-direct {v3, v4, v2}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v3, p2}, Lorg/spongycastle/est/ESTRequestBuilder;->withData([B)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/spongycastle/est/ESTRequestBuilder;->withClient(Lorg/spongycastle/est/ESTClient;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v2

    const-string v3, "Content-Type"

    const-string v4, "application/pkcs10"

    invoke-virtual {v2, v3, v4}, Lorg/spongycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/est/ESTRequestBuilder;

    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lorg/spongycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/est/ESTRequestBuilder;

    const-string p2, "Content-Transfer-Encoding"

    const-string v0, "base64"

    invoke-virtual {v2, p2, v0}, Lorg/spongycastle/est/ESTRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/est/ESTRequestBuilder;

    if-eqz p3, :cond_1

    invoke-interface {p3, v2}, Lorg/spongycastle/est/ESTAuth;->applyAuth(Lorg/spongycastle/est/ESTRequestBuilder;)V

    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/est/ESTService;->handleEnrollResponse(Lorg/spongycastle/est/ESTResponse;)Lorg/spongycastle/est/EnrollmentResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    instance-of p1, p0, Lorg/spongycastle/est/ESTException;

    if-eqz p1, :cond_3

    check-cast p0, Lorg/spongycastle/est/ESTException;

    throw p0

    :cond_3
    new-instance p1, Lorg/spongycastle/est/ESTException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No trust anchors."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public simpleEnrollPoP(ZLorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/spongycastle/operator/ContentSigner;Lorg/spongycastle/est/ESTAuth;)Lorg/spongycastle/est/EnrollmentResponse;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {v0}, Lorg/spongycastle/est/ESTClientProvider;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/spongycastle/est/ESTService;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "/simplereenroll"

    goto :goto_0

    :cond_0
    const-string p1, "/simpleenroll"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/spongycastle/est/ESTService;->clientProvider:Lorg/spongycastle/est/ESTClientProvider;

    invoke-interface {p1}, Lorg/spongycastle/est/ESTClientProvider;->makeClient()Lorg/spongycastle/est/ESTClient;

    move-result-object p1

    new-instance v2, Lorg/spongycastle/est/ESTRequestBuilder;

    const-string v3, "POST"

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    invoke-virtual {v2, p1}, Lorg/spongycastle/est/ESTRequestBuilder;->withClient(Lorg/spongycastle/est/ESTClient;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/est/ESTService$1;

    invoke-direct {v2, p0, p2, p3}, Lorg/spongycastle/est/ESTService$1;-><init>(Lorg/spongycastle/est/ESTService;Lorg/spongycastle/pkcs/PKCS10CertificationRequestBuilder;Lorg/spongycastle/operator/ContentSigner;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/est/ESTRequestBuilder;->withConnectionListener(Lorg/spongycastle/est/ESTSourceConnectionListener;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-interface {p4, p2}, Lorg/spongycastle/est/ESTAuth;->applyAuth(Lorg/spongycastle/est/ESTRequestBuilder;)V

    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/est/ESTService;->handleEnrollResponse(Lorg/spongycastle/est/ESTResponse;)Lorg/spongycastle/est/EnrollmentResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    instance-of p1, p0, Lorg/spongycastle/est/ESTException;

    if-eqz p1, :cond_3

    check-cast p0, Lorg/spongycastle/est/ESTException;

    throw p0

    :cond_3
    new-instance p1, Lorg/spongycastle/est/ESTException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->close()V

    :cond_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No trust anchors."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
