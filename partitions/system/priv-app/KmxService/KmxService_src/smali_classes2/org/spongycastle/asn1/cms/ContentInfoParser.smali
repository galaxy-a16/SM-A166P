.class public Lorg/spongycastle/asn1/cms/ContentInfoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method
