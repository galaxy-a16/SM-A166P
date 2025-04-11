.class public Lorg/spongycastle/cms/PKCS7TypedStream;
.super Lorg/spongycastle/cms/CMSTypedStream;
.source "SourceFile"


# instance fields
.field private final content:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/cms/CMSTypedStream;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object p2, p0, Lorg/spongycastle/cms/PKCS7TypedStream;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private getContentStream(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;
    .locals 3

    .line 6
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x1

    move v0, p1

    :goto_0
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    new-instance p1, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-direct {p1, p0, v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public drain()V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/cms/PKCS7TypedStream;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/PKCS7TypedStream;->getContentStream(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;

    return-void
.end method

.method public getContent()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cms/PKCS7TypedStream;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/cms/PKCS7TypedStream;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p0, v0}, Lorg/spongycastle/cms/PKCS7TypedStream;->getContentStream(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/cms/CMSRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to convert content to stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v0, v1, p0}, Lorg/spongycastle/cms/CMSRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
