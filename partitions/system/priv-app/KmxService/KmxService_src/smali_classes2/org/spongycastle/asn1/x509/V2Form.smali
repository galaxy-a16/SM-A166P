.class public Lorg/spongycastle/asn1/x509/V2Form;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field baseCertificateID:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field issuerName:Lorg/spongycastle/asn1/x509/GeneralNames;

.field objectDigestInfo:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/V2Form;->issuerName:Lorg/spongycastle/asn1/x509/GeneralNames;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/spongycastle/asn1/x509/IssuerSerial;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Bad tag number: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v3, p1}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, v0}, Lorg/bouncycastle/cert/a;->l(Lorg/spongycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V
    .locals 1

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/IssuerSerial;Lorg/spongycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/IssuerSerial;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/IssuerSerial;Lorg/spongycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/IssuerSerial;Lorg/spongycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2Form;->issuerName:Lorg/spongycastle/asn1/x509/GeneralNames;

    iput-object p2, p0, Lorg/spongycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/spongycastle/asn1/x509/IssuerSerial;

    iput-object p3, p0, Lorg/spongycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/ObjectDigestInfo;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;Lorg/spongycastle/asn1/x509/IssuerSerial;Lorg/spongycastle/asn1/x509/ObjectDigestInfo;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/x509/V2Form;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x509/V2Form;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/V2Form;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object p0
.end method

.method public getIssuerName()Lorg/spongycastle/asn1/x509/GeneralNames;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2Form;->issuerName:Lorg/spongycastle/asn1/x509/GeneralNames;

    return-object p0
.end method

.method public getObjectDigestInfo()Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2Form;->issuerName:Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2Form;->baseCertificateID:Lorg/spongycastle/asn1/x509/IssuerSerial;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v3, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/x509/V2Form;->objectDigestInfo:Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz p0, :cond_2

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
