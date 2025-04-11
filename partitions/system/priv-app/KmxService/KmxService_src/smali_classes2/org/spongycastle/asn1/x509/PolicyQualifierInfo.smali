.class public Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/spongycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lorg/spongycastle/asn1/x509/PolicyQualifierId;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
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

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPolicyQualifierId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public getQualifier()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->policyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/PolicyQualifierInfo;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
