.class public Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field public static final attributeCertificate:I = 0x1

.field public static final certificate:I = -0x1

.field public static final publicKeyCertificate:I


# instance fields
.field private attributeCert:[B

.field private cert:Lorg/spongycastle/asn1/x509/Certificate;

.field private publicKeyCert:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v0}, Lorg/bouncycastle/cert/a;->m(Lorg/spongycastle/asn1/ASN1TaggedObject;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/spongycastle/asn1/x509/Certificate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;
    .locals 2

    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 1
    invoke-static {p0, v1}, Landroidx/activity/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;
    .locals 0

    .line 6
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCertificateBytes()[B
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t decode certificate: "

    invoke-static {v1, p0}, Lcom/google/protobuf/n;->f(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    return-object p0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->publicKeyCert:[B

    if-eqz v0, :cond_0

    new-instance p0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->attributeCert:[B

    if-eqz v0, :cond_1

    new-instance p0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/spongycastle/asn1/isismtt/ocsp/RequestedCertificate;->cert:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method
