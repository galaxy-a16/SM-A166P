.class public Lorg/spongycastle/asn1/eac/CVCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static bodyValid:I = 0x1

.field private static signValid:I = 0x2


# instance fields
.field private certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CVCertificate;->initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/eac/CertificateBody;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    iget p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, p2

    sget p2, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CVCertificate;
    .locals 3

    instance-of v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/eac/CVCertificate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/eac/CVCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ApplicationSpecific;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/eac/CVCertificate;-><init>(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to parse data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFrom(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private setPrivateData(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_5

    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v2

    const/16 v3, 0x37

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_0

    invoke-static {v1}, Lorg/spongycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CertificateBody;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    iget v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    iget v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    :goto_1
    or-int/2addr v1, v2

    iput v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->valid:I

    sget v0, Lorg/spongycastle/asn1/eac/CVCertificate;->signValid:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v0, v1

    if-ne p0, v0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not a CARDHOLDER_CERTIFICATE :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object p0

    return-object p0
.end method

.method public getBody()Lorg/spongycastle/asn1/eac/CertificateBody;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    return-object p0
.end method

.method public getCertificateType()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result p0

    return p0
.end method

.method public getEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object p0

    return-object p0
.end method

.method public getExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;

    move-result-object p0

    return-object p0
.end method

.method public getHolderAuthorization()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getHolderAuthorizationRights()Lorg/spongycastle/asn1/eac/Flags;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/eac/Flags;

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result p0

    and-int/lit16 p0, p0, 0xc0

    return p0
.end method

.method public getHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;

    move-result-object p0

    return-object p0
.end method

.method public getRole()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result p0

    return p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v2, p0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p0, 0x0

    const/16 v3, 0x37

    invoke-direct {v1, p0, v3, v2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unable to convert signature!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
