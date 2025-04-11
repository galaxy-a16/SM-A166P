.class public Lorg/spongycastle/asn1/crmf/EncryptedValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private encSymmKey:Lorg/spongycastle/asn1/DERBitString;

.field private encValue:Lorg/spongycastle/asn1/DERBitString;

.field private intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private valueHint:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown tag encountered: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v2, p1}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERBitString;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p6, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    iput-object p4, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p5, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object p6, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'encValue\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p3, :cond_0

    new-instance p0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getEncSymmKey()Lorg/spongycastle/asn1/DERBitString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    return-object p0
.end method

.method public getEncValue()Lorg/spongycastle/asn1/DERBitString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    return-object p0
.end method

.method public getIntendedAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getKeyAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getSymmAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public getValueHint()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
