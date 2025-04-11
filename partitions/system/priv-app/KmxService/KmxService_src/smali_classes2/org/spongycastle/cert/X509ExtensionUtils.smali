.class public Lorg/spongycastle/cert/X509ExtensionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calculator:Lorg/spongycastle/operator/DigestCalculator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/operator/DigestCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/X509ExtensionUtils;->calculator:Lorg/spongycastle/operator/DigestCalculator;

    return-void
.end method

.method private calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/cert/X509ExtensionUtils;->calculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/spongycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/spongycastle/cert/X509ExtensionUtils;->calculator:Lorg/spongycastle/operator/DigestCalculator;

    invoke-interface {p0}, Lorg/spongycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/spongycastle/cert/CertRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to calculate identifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/spongycastle/cert/CertRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getSubjectKeyIdentifier(Lorg/spongycastle/cert/X509CertificateHolder;)[B
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->subjectKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/spongycastle/cert/X509CertificateHolder;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Extension;->getParsedValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAuthorityKeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1

    .line 1
    new-instance v0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([B)V

    return-object v0
.end method

.method public createAuthorityKeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 1

    .line 2
    new-instance v0, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public createAuthorityKeyIdentifier(Lorg/spongycastle/cert/X509CertificateHolder;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .locals 3

    .line 3
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    new-instance v1, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->getSubjectKeyIdentifier(Lorg/spongycastle/cert/X509CertificateHolder;)[B

    move-result-object p0

    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p1}, Lorg/spongycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/spongycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public createSubjectKeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1

    new-instance v0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object v0
.end method

.method public createTruncatedSubjectKeyIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 3

    invoke-direct {p0, p1}, Lorg/spongycastle/cert/X509ExtensionUtils;->calculateIdentifier(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object p0

    const/16 p1, 0x8

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, v0, v2

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    or-int/lit8 p0, p0, 0x40

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    new-instance p0, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V

    return-object p0
.end method
