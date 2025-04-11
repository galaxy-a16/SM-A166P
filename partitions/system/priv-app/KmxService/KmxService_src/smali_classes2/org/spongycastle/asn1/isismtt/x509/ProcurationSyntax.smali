.class public Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field private certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    iput-object p3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x509/IssuerSerial;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    iput-object p3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v3, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Bad tag number: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p1}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0, v1}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p1, v0}, Lorg/bouncycastle/cert/a;->l(Lorg/spongycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

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
    check-cast p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    return-object p0
.end method


# virtual methods
.method public getCertRef()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object p0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    return-object p0
.end method

.method public getThirdPerson()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public getTypeOfSubstitution()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v4, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-direct {v4, v1, v2}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v2, v2, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    new-instance p0, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {p0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v2, v3, p0}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :goto_0
    new-instance p0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
