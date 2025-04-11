.class public Lorg/spongycastle/pkcs/PKCS10CertificationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;


# instance fields
.field private certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    sput-object v0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/CertificationRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->parseBytes([B)Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;-><init>(Lorg/spongycastle/asn1/pkcs/CertificationRequest;)V

    return-void
.end method

.method private static parseBytes([B)Lorg/spongycastle/asn1/pkcs/CertificationRequest;
    .locals 3

    const-string v0, "malformed data: "

    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/spongycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lorg/bouncycastle/cert/a;->b(Ljava/lang/IllegalArgumentException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/spongycastle/pkcs/PKCSIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/google/protobuf/n;->d(Ljava/lang/ClassCastException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/pkcs/PKCSIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object p0

    invoke-virtual {p1}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAttributes()[Lorg/spongycastle/asn1/pkcs/Attribute;
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAttributes(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)[Lorg/spongycastle/asn1/pkcs/Attribute;
    .locals 4

    .line 2
    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->EMPTY_ARRAY:[Lorg/spongycastle/asn1/pkcs/Attribute;

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/spongycastle/asn1/pkcs/Attribute;

    return-object p0
.end method

.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getSignature()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    return-object p0
.end method

.method public getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p0

    return-object p0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object p0

    return-object p0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isSignatureValid(Lorg/spongycastle/operator/ContentVerifierProvider;)Z
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getCertificationRequestInfo()Lorg/spongycastle/asn1/pkcs/CertificationRequestInfo;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/pkcs/CertificationRequest;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/spongycastle/operator/ContentVerifierProvider;->get(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/operator/ContentVerifier;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->getSignature()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/spongycastle/operator/ContentVerifier;->verify([B)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to process signature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->f(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toASN1Structure()Lorg/spongycastle/asn1/pkcs/CertificationRequest;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pkcs/PKCS10CertificationRequest;->certificationRequest:Lorg/spongycastle/asn1/pkcs/CertificationRequest;

    return-object p0
.end method
