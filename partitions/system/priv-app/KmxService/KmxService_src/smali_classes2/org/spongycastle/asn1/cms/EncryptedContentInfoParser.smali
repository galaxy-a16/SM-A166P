.class public Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private _contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private _encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getEncryptedContent(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfoParser;->_encryptedContent:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    return-object p0
.end method
