.class Lorg/bouncycastle/tsp/cms/MetaDataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final metaData:Lorg/bouncycastle/asn1/cms/MetaData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/MetaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-void
.end method

.method private convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getFileName()Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getMediaType()Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/MetaData;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->isHashProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object p0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to initialise calculator from metaData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
