.class public Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Truncated Sequence Found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getEncryptedContent()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/spongycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
