.class public Lorg/spongycastle/asn1/x509/sigi/PersonalData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bad tag number: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {v0, p1}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0, v3}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    :cond_4
    invoke-static {v0, v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    goto :goto_0

    :cond_5
    return-void

    :cond_6
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

.method public constructor <init>(Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x500/DirectoryString;Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    iput-object p3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    iput-object p5, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    iput-object p6, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    iput-object p4, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/sigi/PersonalData;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/sigi/PersonalData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    invoke-static {p0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    return-object p0
.end method


# virtual methods
.method public getDateOfBirth()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object p0
.end method

.method public getGender()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public getNameDistinguisher()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getNameOrPseudonym()Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    return-object p0
.end method

.method public getPlaceOfBirth()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object p0
.end method

.method public getPostalAddress()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v4, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v2, v2, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v4, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v4, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v5, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-direct {v5, v1, v3}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-direct {v4, v2, v1, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object p0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz p0, :cond_4

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_4
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
