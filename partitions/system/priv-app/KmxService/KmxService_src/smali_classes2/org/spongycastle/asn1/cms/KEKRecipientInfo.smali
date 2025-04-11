.class public Lorg/spongycastle/asn1/cms/KEKRecipientInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

.field private kekid:Lorg/spongycastle/asn1/cms/KEKIdentifier;

.field private keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/KEKIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KEKIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->kekid:Lorg/spongycastle/asn1/cms/KEKIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/KEKIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    iput-object p1, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->kekid:Lorg/spongycastle/asn1/cms/KEKIdentifier;

    iput-object p2, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncryptedKey()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public getKekid()Lorg/spongycastle/asn1/cms/KEKIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->kekid:Lorg/spongycastle/asn1/cms/KEKIdentifier;

    return-object p0
.end method

.method public getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->kekid:Lorg/spongycastle/asn1/cms/KEKIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->keyEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->encryptedKey:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
