.class public Lorg/spongycastle/asn1/cmc/ModCertTemplate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private final certReferences:Lorg/spongycastle/asn1/cmc/BodyPartList;

.field private final certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

.field private final pkiDataReference:Lorg/spongycastle/asn1/cmc/BodyPartPath;

.field private final replace:Z


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect sequence size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmc/BodyPartList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartList;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/spongycastle/asn1/cmc/BodyPartList;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v2, :cond_2

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->replace:Z

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->replace:Z

    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;Lorg/spongycastle/asn1/cmc/BodyPartList;ZLorg/spongycastle/asn1/crmf/CertTemplate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/spongycastle/asn1/cmc/BodyPartList;

    iput-boolean p3, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->replace:Z

    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/ModCertTemplate;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/ModCertTemplate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertReferences()Lorg/spongycastle/asn1/cmc/BodyPartList;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/spongycastle/asn1/cmc/BodyPartList;

    return-object p0
.end method

.method public getCertTemplate()Lorg/spongycastle/asn1/crmf/CertTemplate;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    return-object p0
.end method

.method public getPkiDataReference()Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-object p0
.end method

.method public isReplacingFields()Z
    .locals 0

    iget-boolean p0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->replace:Z

    return p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->pkiDataReference:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certReferences:Lorg/spongycastle/asn1/cmc/BodyPartList;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-boolean v1, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->replace:Z

    if-nez v1, :cond_0

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/asn1/cmc/ModCertTemplate;->certTemplate:Lorg/spongycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
